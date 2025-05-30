clear
sudo apt-get update
sudo apt-get install -y tree unzip gnupg2 pass net-tools
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zipunzip awscliv2.zip
unzip awscliv2.zip
sudo ./aws/install
wget -O - https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install terraform
az --version
aws --version
terraform --version
clear
history
ls
mkdir tfdemo5
cat main.tf
touch main.tf
vi mai.tf
cat main.tf
vi main.tf
cat main.tf
terraform plan
clear
vi main.tf
terraform plan
clear
sudo docker ps-1
sudo docker ps -a
clear
docker --version
sudo apt-get update
sudo apt-get install -y tree unzip gnupg2 pass net-tools
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
udo chmod a+r /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
echo   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}") stable" |   sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo docker --version
sudo docker infor
sudo docker info
clear
sudo docker info
clear
sudo docker image
sudo docker images
sudo docker ps -a
sudo docker pull httpd
sudo docker images
sudo docker pull mcr.microsoft.com/windows/servercore/iis
sudo docker pull python
sudo docker images
sudo docker ps -a
sudo docker run -d -p 7777:80 --name con1 httpd:latest
sudo docker ps -a
sudo docker stop con1
sudo docker ps -a
sudo docker start con1
sudo docker rm -f con1
sudo docker images
sudo docker rmi httpd:latest
sudo docker rmi python:latest
sudo docker images
sudo docker ps -a
clear
sudo docker images
sudo docker run -d -p 7070:80 --name con1 httpd:latest
sudo docker ps -a
sudo docker exec -it con1 sh
sudo docker stop con1
sudo docker start con1
sudo docker run -d -p 7070:80 --name con1 httpd:latest
sudo docker rm -f con1
sudo docker rm -f con2
sudo docker images
sudo docker rmi httpd
sudo docker ps -a
sudo docker images
clear
sudo docker pull alpine
sudo docker images
sudo docker run -d --name con1 alpine:latest
sudo docker ps -a
sudo docker rm -f con1
sudo docker run -it --name con1 alpine:latest sh
sudo docker exec -it con1 sh
sudo docker rm -f con1
sudo docker run --rm -it --name con1 alpine:latest sh
sudo rmi alpine:Latest
sudo docker rmi alpine:Latest
sudo docker images
sudo docker rmi alpine:latest
sudo docker images
sudo docker ps  -a
clear
sudo su -
clear
sudo docker network list
sudo docker network create --help
sudo docker network create --driver bridge --subnet 10.0.0.0/16 mybridge
sudo docker network list
sudo docker network inspect mybridge
sudo docker network list
sudo docker run -d --name con1 busybox sh -c "while true;do sleep 3600;done"
sudo docker network connect mybridge con1
sudo docker network inspect mybridge
sudo docker network connect mybridge con2
sudo docker run -d --name con2 busybox sh -c "while true;do sleep 3600;done"
sudo docker network connect mybridge con2
sudo docker network inspect mybridge
sudo docker exec -it con2 ip a
sudo docker exec -it con1 ping 10.0.0.3
sudo docker exec -it con2 ping 10.0.0.2
sudo docker exec -it con1 ping con2
sudo docker exec -it con2 ping con1
sudo docker rm -f con1
sudo docker rm -f con2
sudo docker inspect network mybridge
sudo docker network rm mybridge
sudo docker network list
ifconfig -a
sudo docker network list
sudo docker inspect network host
sudo docker run -d --name con1 --network host busybox sh -c "while true;do sleep 3600;done"
sudo docker inspect network host
sudo docker exec -it con1 ip a
sudo docker rm -f
sudo docker rm -f con1
sudo docker inspect network host
sudo docker run -d --name con1 --network host nginx
curl http://localhost
sudo docker rm -f con1
sudo docker images
sudo docker images rmi nginx:latest
sudo docker image rmi nginx:latest
sudo docker image rmi httpd:latest
sudo docker image rmi busybox:latest
sudo docker images
sudo docker ps -a
clear
sudo docker network list
clear
docker --version
sudo docker run hello-world
sudo docker ps -a
sudo docker images
sudo su -
ls
sudo su -
docker --version
clear
docker images
su su -
sudo su -
sudo su-
sudo su -
clear
docker --version
az --version
az login
az info
clear
sudo apt-get update
clear
az --version
az upgrade
az config set auto-upgrade.enable=yes
clear
az --version
ls
git clone https://github.com/jenkinsrb/racerepo1
ls
cd racerepo1/
sudo docker images
ls
sudo docker build -t img2 .
sudo docker images
sudo docker run -d -p 7777:8080 --name con1 img2:latest
sudo docker ps -a
ifconfig
sudo docker rm -f con1
sudo docker ps -a
sudo docker images
sudo docker login -u sandy16docker
docker login -u sandy16docker
clear
sudo docker tag img1:latest sandy16docker/racedrepo1:img1
sudo docker images
sudo docker tag img1:latest sandy16docker/racedrepo1:img2
sudo docker tag img2:latest sandy16docker/racedrepo1:img2
sudo docker images
sudo docker push sandy16docker/racedrepo1:img2
sudo docker tag img2:latest sandy16docker/racedrepo2:img2
sudo docker images
sudo docker push sandy16docker/racedrepo2:img2
sudo docker rmi -f $(sudo docker images -aq)
sudo docker images
clear
history
clear
az log in
az login
clear
curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
chmod +x ./kubectl
ls
sudo mv ./kubectl /usr/local/bin/kubectl
ls
kubectl version
curl https://baltocdn.com/helm/signing.asc | sudo apt-key add -
helm version
clear
kubectl version
az account list
az login
az account list
kubectl version
clear
az account set --subscription cb44d0cf-ebab-4a58-8c0e-894f2f81dec0
az aks get-credentials --resource-group k8s-rg --name cl1 --overwrite-existing
kubectl version
kubectl cluster-info
kubectl config current-context
history
clear
kubectl get nodes
kubectl describe node aks-agentpool-25167315-vmss000000 
kubectl get pods
kubectl get pod
kubectl get replicaset
kubectl get deployment
git clone https://github.com/jenkinsrb/racerepo1
sudo docker images
sudo docker build -t img2 .
sudo docker run -d -p 7777:8080 --name con1 img2:latest
git clone https://github.com/jenkinsrb/racerepo1
kubectl run pod1 --image srjkv1113/racedrepo1:img0315 --port 80
kubectl describe pod pod1
kubectl delete pod pod1
kubectl get pod
git clone https://github.com/jenkinsrb/racerepo1
git clone kubectl create deployment dep1 --image "srjkv1113/racedrepo1:img0315" --replicas=3 --port 80
kubectl create deployment dep1 --image "srjkv1113/racedrepo1:img0315" --replicas=3 --port 80
kubectl get pod
kubectl get all
kubectl delete deployment.apps/dep1
kubectl get all
clear
history
git clone https://github.com/jenkinsrb/racerepo1
ls
cs racerepo1/
cd racerepo1/
sudo docker images
sudo docker build -t img2 .
sudo docker run -d -p 7777:8080 --name con1 img2:latest
sudo docker login -u sandy16dockersudo docker login -u sandy16docker
sudo docker login -u sandy16docker
sudo docker tag img1:latest sandy16docker/racedrepo1:img1
sudo docker images
sudo docker tag img2:latest sandy16docker/racedrepo1:img2
sudo docker push sandy16docker/racedrepo1:img2
sudo docker tag img2:latest sandy16docker/racedrepo2:img2
sudo docker push sandy16docker/racedrepo2:img2
cd..
pwd
exit
kubectl create deployment dep1 --image "jenkinsrb/racedrepo1:img1" --replicas=3 --port 80
kubectl get all
kubectl expose deployment dep1 --type=LoadBalancer --port=80 --target-port=80
kubectl get all
kubectl delete service dep1
kubectl delete deployment dep1
kubectl get all
clear
kubectl get namespace
kubectl create namespace ns1
kubectl get namespace
kubectl create deployment dep1 --image "jenkinsrb/racedrepo1:img1" --replicas=3 --port 80 --namespace ns1
kubectl get all
kubectl get all --namespace ns1
kubectl delete namespace ns1
kubectl get namespace
mkdir kdemo1
cd kdemo1/
kubectl create deployment dep1 --image "jenkinsrb/racedrepo1:img1" --replicas=3 --dry-run -o yaml > dep1.yaml
vi dep1.yaml
kubectl apply -f dep1.yaml
kubectl expose deployment dep1 --type=LoadBalancer --dry-run -o yaml > service1.yaml
kubectl apply -f dep1.yaml
kubectl expose deployment dep1 --type=LoadBalancer --dry-run -o yaml > service1.yaml
kubectl expose deployment dep1 --type=LoadBalancer --port=80 --namespace ns1 --dry-run -o yaml > service1.yaml
kubectl expose deployment dep1 --type=LoadBalancer --port=80 --dry-run -o yaml > service.yaml
rm -f service1.yaml
kubectl delete -f service.yaml
ls
rm dep1.yaml 
rm service.yaml 
ls
kubectl create namespace ns1 --dry-run -o yaml > ns1.yaml
ls
cat ns1.yaml
kubectl create deployment dep1 --image "jenkinsrb/racedrepo1:img1" --replicas=3 --namespace ns1 --dry-run -o yaml > dep1.yaml
ls
kubectl apply -f ns1.yaml
kubectl apply -f dep1.yaml
kubectl expose deployment dep1 --type=LoadBalancer --port=80 --namespace ns1 --dry-run -o yaml > service.yaml
kubectl delete -f ns1.yaml
clear
touch app1.yaml
cat ns1.yaml
vi app1.yaml
cat dep1.yaml
apiVersion: apps/v1
kind: Deployment
metadata:
spec:
status: {}
clear
vi app1.yaml 
cat service.yaml
vi app1.yaml 
rm -f ns1.yaml
rm -f dep1.yaml
rm -f service.yaml
cat app1.yaml 
clear
ls
kubectl apply -f app1.yaml 
vi app1.yaml 
kubectl apply -f app1.yaml 
kubectl delete -f app1.yaml
cd..
cd ..
ls
clear
kubectl create namespace ns1
kubectl get namespaces
kubectl get quota --namespace=ns1
vi rq.yaml
cat rq.yaml 
kubectl apply -f rq.yaml --namespace=ns1
kubectl get quota --namespace=ns1
kubectl describe quota --namespace=ns1 compute-resources
vi pod1.yaml
cat pod1.yaml
kubectl apply -f pod1.yaml --namespace=ns1
kubectl apply -f pod2.yaml --namespace=ns1
kubectl describe quota --namespace=ns1 compute-resources
vi pod2.yaml
kubectl apply -f pod2.yaml --namespace=ns1
kubectl delete namespace ns1
clear
ls
cd ..
cd /C
exit
clear

watch -x curl http://lb_externalip
clear
watch -x kubectl get all
clear
watch -x kubectl get all
clear
rm -f ./.kube/config 
ls
clear
history
ls
ls ./
ls ./.
ls ./.kube/
ls
clear
[200~kubectl cluster-info~
clear
kubectl cluster-info
az account set --subscription cb44d0cf-ebab-4a58-8c0e-894f2f81dec0
az aks get-credentials --resource-group KS1 --name kube1 --overwrite-existing
kubectl cluster-info
kubectl config current-context
kubectl get nodes
mkdir kdemo2
cd kdemo2
vi dep1.yaml
kubectl apply -f dep1.yaml
kubectl expose deployment hello-dep --type=LoadBalancer --port=80 --target-port=8080 --dry-run -o yaml > service.yaml
ls
kubectl apply -f service.yaml
vi dep2.yaml
kubectl apply -f dep2.yaml
kubectl rollout history deployment hello-dep
kubectl rollout undo deployment hello-dep --to-revision 1
kubectl delete -f service.yaml
kubectl delete -f dep2.yaml
ls
clear
kubectl get nodes
kubectl label node aks-agentpool-91222917-vmss000001 "env=test"
kubectl describe node aks-agentpool-91222917-vmss00001
kubectl describe node aks-agentpool-91222917-vmss000001
kubectl label node aks-agentpool-91222917-vmss000001 env-
kubectl describe node aks-agentpool-91222917-vmss000001
vi pod4.yaml
kubectl apply -f pod4.yaml
kubectl get pod -o wide
vi pod4.yaml
kubectl apply -f pod4.yaml
vi pod4.yaml
kubectl apply -f pod4.yaml
kubectl get pod -o wide
kubectl delete pod mypod1
kubectl delete pod mypod2
kubectl label node aks-agentpool-37483862-vmss000002 env-
kubectl apply -f pod4.yaml
kubectl get pod
kubectl label node aks-agentpool-37483862-vmss000002 "env=sandy"
kubectl get pod
vi pod4.yaml
kubectl apply -f pod4.yaml
kubectl get pod
clear
cd ..
cd..
ls
clear
kubectl get storageclass
kubectl get pv,pvc
mkdir kdemo3
cd kdemo3
vi pvc.yaml
kubectl apply -f pvc.yaml
kubectl get pv,pvc
vi pod.yaml
kubectl apply -f pod.yaml
kubectl get pod
kubectl get pv,pvc
kubectl describe pod pod2
kubectl delete pod pod2
kubectl delete -f pvc.yaml
kubectl get pv,pvc
clear
kubectl get pods
kubectl rm  pods mypod2
kubectl delete pods mypod2
kubectl get pods
clear
kubectl get pv,pvc
vi pv1.yaml
kubectl apply -f pv1.yaml
kubectl get pv,pvc
vi pvc1.yaml
kubectl get pv,pvc
kubectl delete -f pvc1.yaml
kubectl delete -f pv1.yaml
ls
clear
cd ..
ls
cd kdemo2
ls
vi ss1.yaml
kubectl apply -f ss1.yaml 
vi ss1.yaml
kubectl apply -f ss1.yaml 
vi ss1.yaml
kubectl apply -f ss1.yaml 
kubectl delete ss1.yaml 
kubectl delete -f ss1.yaml 
ls
vi ds1.yaml
kubectl apply -f ds1.yaml 
kubectl delete -f ds1.yaml 
ls
vi cm1.yaml
kubectl apply -f cm1.yaml 
kubectl get configmap
kubectl describe configmap example-configmap
vi cpod1.yaml
kubectl apply -f cpod1.yaml
kubectl exec -it pod-env-var -- /bin/sh
vi cm1.yaml
kubectl apply -f cpod1.yaml
kubectl exec -it pod-env-var -- /bin/sh
kubectl delete -f cm1.yaml
get all
kubectl get all
clear
kubectl apply -f cpod1.yaml 
kubectl describe configmap example-configmap
kubectl exec -it pod-env-var -- /bin/sh
kubectl apply -f cm1.yaml 
kubectl exec -it pod-env-var -- /bin/sh
kubectl describe configmap example-configmap
kubectl exec -it pod-env-var -- /bin/sh
kubectl delete -f cm1.yaml
kubectl delete -f cpod1.yaml
kubectl get all
clear
cd ..
ls
mkdir kdemo4
cd kdemo4
touch httpd.conf
ls
kubectl create configmap app-config --from-file=httpd.conf --dry-run -o yaml > cm2.yaml
cat cm2.yaml
kubectl apply -f cm2.yaml
kubectl get configmap
vi pod.yaml
kubectl apply -f pod.yaml
kubectl exec -it configmap-pod -- /bin/sh
kubectl delete -f pod.yaml
kubectl delete -f cm2.yaml
clear
vi cron.yaml
kubectl get pod,job,cronjob
kubectl apply -f cron.yaml
kubectl get pod,job,cronjob
kubectl delete -f cron.yaml
clear
kubectl delete -f cron.yaml
clear
ls
kubectl get all
exit
cd ..
kubectl get all
az account set --subscription cb44d0cf-ebab-4a58-8c0e-894f2f81dec0
az aks get-credentials --resource-group con-rg --name kube1 --overwrite-existing
clear
docker -version
docker --version
kubectl --version
kubectl -version
kubectl --version
kubectl version
kubectl cluster-info
clear
helm version
clear
su sudo
su -i
sudo apt-get update
clear
sudo su -
sudo -i
sudo su
sudo -i
sudo docker --version
sudo kubctl version
kubctl version
kubectl version
sudo kubectl version
az -version
aws -version
clear
sudo apt-get update
sudo apt-get install -y tree unzip gnupg2 pass net-tools
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
echo   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo docker --version
curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
chmod +x ./kubectl
ls
sudo mv ./kubectl /usr/local/bin/kubectl
kubectl version
curl https://baltocdn.com/helm/signing.asc | sudo apt-key add -
sudo apt-get install apt-transport-https --yes
echo "deb https://baltocdn.com/helm/stable/debian/ all main" | sudo tee /etc/apt/sources.list.d/helm-stable-debian.list
sudo apt-get update
sudo apt-get install helm
helm version
kubectl version
kubectl cluster-info
clear
sudo docker --version
sudo docker version
clear
sudo apt update
sudo apt upgrade -y
sudo apt install openjdk-17-jdk -y
java -version
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo tee   /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]   https://pkg.jenkins.io/debian-stable binary/ | sudo tee   /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt update
sudo apt install jenkins -y
sudo systemctl start jenkins
java -version
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee   /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]   https://pkg.jenkins.io/debian-stable binary/ | sudo tee   /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt update
sudo apt install jenkins -y
sudo systemctl start jenkins
sudo systemctl enable jenkins
sudo ufw allow 8080
sudo ufw status
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
git init
sudo apt update
sudo apt install git -y
git --version
git init
git remote add origin https://github.com/sandy02005/jenkins.git
git add .
git rm --cached racerepo1
echo "racerepo1/" >> .gitignore
git rm --cached racerepo1
git submodule add <URL-of-racerepo1> racerepo1
git branch
sudo git brach
git --hilp
git branch
git branch -a
Cloning repository https://github.com/sandy02005/jenkins.git
java -version
watch git
git -C
git --man-path
git --info-path
git path
git status
clear
git --version
git config --list
git config --global user.name "sandy02005"
git config --global user.email "sandeepchoudari16@gmail.com"
git init
/usr/bin/git --version
jenkins-plugin-cli --plugins git:5.7.0
clear
jenkins -version
jenkins --version
clear
sudo systemctl status jenkins
clear
git pull origin main
ls
cat Jenkinsfile
clear
ls
git status
clear
git --version
az account list-locations -o table
clear
git clone https://github.com/sandy02005/blue-green-deployment.git
ls
pwd
clear
sudo apt update
sudo apt install ca-certificates curl apt-transport-https lsb-release gnupg
curl -sL https://packages.microsoft.com/keys/microsoft.asc | sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/microsoft.gpg
echo "deb [arch=amd64] https://packages.microsoft.com/repos/azure-cli/ $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/azure-cli.list
sudo apt update
sudo apt install azure-cli
az account set --subscription cb44d0cf-ebab-4a58-8c0e-894f2f81dec0
az aks get-credentials --resource-group bluegreen-rg --name bluegreen-aks --overwrite-existing
kubectl get services
kubectl get all
clear
kubectl get pods
kubectl get nodes
kubectl get services
az account set --subscription cb44d0cf-ebab-4a58-8c0e-894f2f81dec0
az aks get-credentials --resource-group bluegreen-rg --name bluegreen-aks --overwrite-existing
kubectl get services
kubectl get nodes
kubectl get pods
kubectl get svc  html-service
clear
az account set --subscription cb44d0cf-ebab-4a58-8c0e-894f2f81dec0
az aks get-credentials --resource-group bluegreen-rg --name bluegreen-aks --overwrite-existing
kubectl get services
kubectl get pods
kubectl get pods -w - watch pods
kubectl get pods -w -watch pods
kubectl get pods -w
kubectl get services
kubectl get pods -w
az account set --subscription cb44d0cf-ebab-4a58-8c0e-894f2f81dec0
az aks get-credentials --resource-group bluegreen-rg --name bluegreen-aks --overwrite-existing
kubectl get services
kubectl get pods -w
clear
kubectl get services
clear
docker ps -a
sudo docker ps -a
kubectl get services
az account set --subscription cb44d0cf-ebab-4a58-8c0e-894f2f81dec0
az aks get-credentials --resource-group bluegreen-rg --name bluegreen-aks --overwrite-existing
kubectl get services
clear
exit
ld
ls
cd /var
ls
cd lib
ls
cd jenkins/
ls
cd workspace/
ls
cd blue-green-new
ls
cd infra
ls
cd azure
cd azure-aks
ls
cd ..
ls
cd ..
ls
cd ..
ls
cd ..
ls
cd workspace/
ls
rm -r testing
sudo rm -r testing
ls
sudo rm -r testing@tmp
ls
rm -r -f
ls
rm -rf
ls
sudo rm -rf
ls
sudo rm -rf * 
ls
cd blue-green-setup-infra
ls
cd infra
ls
cd backend-aws
ls
cd ..
ls
cd ..
ls
cd ..
ls
cd workspace/
sudo rm -rf * 
ls
docker --version 
sudo systemctl restart jenkins
sudo systemctl status jenkins
sudo usermod -aG docker jenkins
sudo systemctl restart jenkins
docker ps -a
sudo docker ps -a
sudo su - jenkins
clear
git push origin main
az account set --subscription cb44d0cf-ebab-4a58-8c0e-894f2f81dec0
az aks get-credentials --resource-group bluegreen-rg --name bluegreen-aks --overwrite-existing
kubectl get services
kubectl patch service html-service -p '{"spec":{"selector":{"version":"green"}}}' - will switch traffic to green
kubectl get pods -w
clear
kubectl patch service html-service -p '{"spec":{"selector":{"version":"blue"}}}' - will switch traffic to blue
