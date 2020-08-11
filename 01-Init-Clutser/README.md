# 아래 구축 정보는 https://kubernetes.io 참조하시기 바랍니다.

1. Container Runtime 구성 (Centos 기준)

https://kubernetes.io/docs/setup/production-environment/container-runtimes/

    1) Docker 
        - Install Package
            $ yum install -y yum-utils device-mapper-persistent-data lvm2
        - Add Docker Repository
            $ yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
        - Intall Docker-CE
            $ yum update -y && yum install docker-ce containerd.io docker-ce-cli
        - Set-up Docker 
            $ mkdir /etc/docker
            $ cat > /etc/docker/daemon.json <<EOF
            {
              "exec-opts": ["native.cgroupdriver=systemd"],
              "log-driver": "json-file",
              "log-opts": {
              "max-size": "100m"
              },
              "storage-driver": "overlay2",
              "storage-opts": [
              "overlay2.override_kernel_check=true"
              ]
            }
            EOF
        - Restart Docker
            $ mkdir -p /etc/systemd/system/docker.service.d
            $ systemctl daemon-reload
            $ systemctl restart docker
            $ systemctl enable docker
    2) CRI-O
        - Prerequisites 
        - 
    3) Containerd

2. K8s 기본설정

https://kubernetes.io/docs/setup/production-environment/tools/kubeadm/install-kubeadm/

3. K8s Cluster 구축

https://kubernetes.io/docs/setup/production-environment/tools/kubeadm/create-cluster-kubeadm/
