pipeline {
  agent any


  environment {
    DOCKERHUB_CREDENTIALS = credentials('Dockerhub')
    IMAGE_NAME = "sandy/bluegreen"
    IMAGE_TAG = "${BUILD_NUMBER}"
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
    stage("Build Docker Image") {
            steps {
                script {
                    echo "🛠️ Building Docker image with no cache..."
                    sh "docker build --no-cache -t ${IMAGE_NAME}:${IMAGE_TAG} ."
                }
            }
        }
         stage("Hello world") {
            steps {
                script {
                    echo "Hello world"
                }
            }
          
        }

    // stage('Blue - Build & Push') {
    //   steps {
    //     script {
    //         withCredentials([usernamePassword(credentialsId: 'dockerhub-creds', usernameVariable: 'DOCKER_USER', passwordVariable: 'DOCKER_PASS')]) {
    //         sh '''
    //             cp blue/index.html .
    //             docker build -t $IMAGE_NAME:blue .
    //             docker push $IMAGE_NAME:blue
    //         '''
    //         }
    //     }
    //   }
    // }

    // stage('Green - Build & Push') {
    //   steps {
    //     script {
    //     withCredentials([usernamePassword(credentialsId: 'dockerhub-creds', usernameVariable: 'DOCKER_USER', passwordVariable: 'DOCKER_PASS')]) {
    //         sh '''
    //             cp green/index.html .
    //             docker build -t $IMAGE_NAME:green .
    //             docker push $IMAGE_NAME:green
    //         '''
    //     }
          

    //     }
    //   }
    // }

    // stage('Deploy Blue to AKS') {
    //   steps {
    //     sh '''
    //       sed "s|<IMAGE_TAG>|blue|g" deploy/deployment-blue.yaml | kubectl apply -f -
    //     '''
    //   }
    // }

    // stage('Deploy Green to AKS') {
    //   steps {
    //     sh '''
    //       sed "s|<IMAGE_TAG>|green|g" deploy/deployment-green.yaml | kubectl apply -f -
    //     '''
    //   }
    // }

    // stage('Switch to Green') {
    //   steps {
    //     sh '''
    //       kubectl patch service html-service -p '{"spec":{"selector":{"version":"green"}}}'
    //     '''
    //   }
    // }
  }
   post {
        always {
            echo "🔚 Pipeline finished."
        }
    }
}
