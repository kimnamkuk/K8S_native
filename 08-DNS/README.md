# 1. K8s-DNS
  - K8s 클러스터 내에서 DNS 통신을 하기 위해 사용하는 용도 입니다.
  - 옛날 버전에는 kube-dns를 사용하였지만, 최근에서 core-dns로 변경된 추세입니다.
  - 변경된 이유는 성능상에 문제 인것으로 예상됩니다
  
  https://coredns.io/2018/11/27/cluster-dns-coredns-vs-kube-dns/
  
# 2. DNS 통신 Rule
  - DNS 통신을 사용하시려면 기본적은 컨테이너를 위한 서비스가 정의 되어 있어야 합니다.
  - [pod-name].[service-name].[namespace].svc.[cluster-name] 으로 구성되어 있습니다.
  - 위의 정의된 규약은 컨테이너 끼리 DNS 통신을 위한 용입니다. Node에서 해당 컨테이너로 DNS 이름으로 통신을 하면 kube-dns 혹은 coredns를 통한 것이 아닌 Node에 설정된 (/etc/resolv.conf) 
    DNS 서버와 통신을 하기 때문에 해당 DNS 이름을 resolve 할 수 없습니다.
  
  ![DNS](https://cilium.io/static/k8s_dns_resolution_2-7720169a677cd13bbad2b9c431d560d8-5c64a.png) 
  
  참고사이트: https://cilium.io/blog/2019/12/18/how-to-debug-dns-issues-in-k8s/
