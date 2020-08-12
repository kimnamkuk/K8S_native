# 1.Serivce 란 무엇인가?
  - 생성한 Pod들을 외부로 노출시켜 사용자가 외부에서 컨테이너를 접속하도록 도와주는 도구입니다.
  - 서비스는 외부에서 접근하기 위해 필요한 도구 이기도 하나, 내부에서 DNS 통신을 위해서 필요한 도구입니다.
  - 외부로 노출하는 방법으로 ExternalIP, NodePort ( 30000 ~ 32767), LoadBalancer ( Public 또는 내부 Plugin 사용 )
  - ExternalIP를 Node IP로 사용 시 kube-proxy 모드가 IPVS 일 경우 IP 중복으로 서비스 충돌이 발생합니다. 
  - ExternalIP를 Node IP로 사용 할 경우에는 kube-Proxy 모드를 iptables로 변경해야 합니다.
  
![Service](https://d33wubrfki0l68.cloudfront.net/cc38b0f3c0fd94e66495e3a4198f2096cdecd3d5/ace10/docs/tutorials/kubernetes-basics/public/images/module_04_services.svg)

# 2. 어떤 방법으로 Pod를 외부로 노출 시키나?
