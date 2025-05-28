pipeline {
  agent any

  environment {
    DOCKERHUB_CREDENTIALS = credentials('DOCKERHUB_CREDENTIALS')
    IMAGE_TAG = "${BUILD_NUMBER}"
    IMAGE_NAME = "sandy16docker/bluegreen"
    ARM_CLIENT_ID       = credentials('AZURE_CLIENT_ID')
    ARM_CLIENT_SECRET   = credentials('AZURE_CLIENT_SECRET')
    ARM_TENANT_ID       = credentials('AZURE_TENANT_ID')
    ARM_SUBSCRIPTION_ID = credentials('AZURE_SUBSCRIPTION_ID')
    RESOURCE_GROUP      = 'bluegreen-rg'
    CLUSTER_NAME        = 'bluegreen-aks'
  }

  stages {
    stage('Git Checkout') {
      steps {
        echo "Git Checkout"
        checkout scm
      }
    }

    stage('Blue - Build & Push') {
      steps {
        script {
          withCredentials([usernamePassword(credentialsId: 'DOCKERHUB_CREDENTIALS', usernameVariable: 'DOCKER_USER', passwordVariable: 'DOCKER_PASS')]) {
            sh '''
              cp blue/index.html index.html
              echo "$DOCKER_PASS" | docker login -u "$DOCKER_USER" --password-stdin
              docker build --no-cache -t $IMAGE_NAME:blue-$BUILD_NUMBER .
              docker push $IMAGE_NAME:blue-$BUILD_NUMBER
            '''
          }
        }
      }
    }

    stage('Green - Build & Push') {
      steps {
        script {
          withCredentials([usernamePassword(credentialsId: 'DOCKERHUB_CREDENTIALS', usernameVariable: 'DOCKER_USER', passwordVariable: 'DOCKER_PASS')]) {
            sh '''
              cp green/index.html index.html
              echo "$DOCKER_PASS" | docker login -u "$DOCKER_USER" --password-stdin
              docker build --no-cache -t $IMAGE_NAME:green-$BUILD_NUMBER .
              docker push $IMAGE_NAME:green-$BUILD_NUMBER
            '''
          }
        }
      }
    }

    stage('Azure Login') {
      steps {
        echo "🔐 Logging into Azure..."
        sh '''
          az login --service-principal \
            --username "$ARM_CLIENT_ID" \
            --password "$ARM_CLIENT_SECRET" \
            --tenant "$ARM_TENANT_ID"
          az account set --subscription "$ARM_SUBSCRIPTION_ID"
          az aks get-credentials \
            --resource-group "$RESOURCE_GROUP" \
            --name "$CLUSTER_NAME" \
            --overwrite-existing
        '''
      }
    }

    stage('Wait for AKS Cluster') {
      steps {
        script {
          def maxRetries = 12
          def delay = 15
          def ready = false

          for (int i = 1; i <= maxRetries; i++) {
            def result = sh(script: 'kubectl get nodes', returnStatus: true)
            if (result == 0) {
              echo "✅ Cluster is ready"
              sh 'kubectl get nodes -o wide'
              ready = true
              break
            } else {
              echo "⏳ Attempt ${i}/${maxRetries} - Cluster not ready. Retrying in ${delay}s..."
              sleep time: delay, unit: 'SECONDS'
            }
          }

          if (!ready) {
            error("❌ Cluster did not become reachable within timeout.")
          }
        }
      }
    }

    stage('Deploy Blue to AKS') {
      steps {
        sh '''
          sed "s|<IMAGE_TAG>|blue-$BUILD_NUMBER|g" deploy/deployment-blue.yaml | kubectl apply -f -
        '''
      }
    }

    stage('Deploy Service') {
      steps {
        sh '''
          echo "Deploying LoadBalancer service..."
          kubectl apply -f deploy/html-service.yaml
        '''
      }
    }

    stage('Deploy Green to AKS') {
      steps {
        sh '''
          sed "s|<IMAGE_TAG>|green-$BUILD_NUMBER|g" deploy/deployment-green.yaml | kubectl apply -f -
        '''
      }
    }

    stage('Switch to Green') {
      steps {
        sh '''
          echo "Switching traffic to Green..."
          kubectl patch service html-service -p '{"spec":{"selector":{"version":"green"}}}'
        '''
      }
    }

    stage('Switch to Blue') {
      steps {
        sh '''
          echo "Switching traffic back to Blue (if needed)..."
          kubectl patch service html-service -p '{"spec":{"selector":{"version":"blue"}}}'
        '''
      }
    }
  }

  post {
    always {
      echo "🔚 Pipeline finished."
    }
  }
}
