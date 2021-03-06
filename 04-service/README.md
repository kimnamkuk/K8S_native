# 1.Serivce 란 무엇인가?
  - 생성한 Pod들을 외부로 노출시켜 사용자가 외부에서 컨테이너를 접속하도록 도와주는 도구입니다.
  - 서비스는 외부에서 접근하기 위해 필요한 도구 이기도 하나, 내부에서 DNS 통신을 위해서 필요한 도구입니다.
  - 외부로 노출하는 방법으로 ExternalIP, NodePort ( 30000 ~ 32767), LoadBalancer ( Public 또는 내부 Plugin 사용 )
  - ExternalIP를 Node IP로 사용 시 kube-proxy 모드가 IPVS 일 경우 IP 중복으로 서비스 충돌이 발생합니다. 
  - ExternalIP를 Node IP로 사용 할 경우에는 kube-Proxy 모드를 iptables로 변경해야 합니다.
  
![Service](https://d33wubrfki0l68.cloudfront.net/cc38b0f3c0fd94e66495e3a4198f2096cdecd3d5/ace10/docs/tutorials/kubernetes-basics/public/images/module_04_services.svg)

# 2. 어떤 방법으로 Pod를 외부로 노출 시키나?
   - Labels을 이용해서 같은 서비스로 정의하고, 외부로 노출 시킵니다.
   - Labels은 Key, value로 구성이 되어 있고, key,value는 임의값으로 지정 할 수 있다.
   
   ![labels](https://d33wubrfki0l68.cloudfront.net/b964c59cdc1979dd4e1904c25f43745564ef6bee/f3351/docs/tutorials/kubernetes-basics/public/images/module_04_labels.svg)
   
   - Q. 1개의 svc를 접속 했을 때, Deployments를 통해 생성 된 nginx Pod index 페이지를 프린트 합니다. 새로운 apache Pod를 생생 nginx, apache index 페이지를 번갈아 가면서 프린트 하도록 컨테이너 및 서비스를 구성하세요. 

# 3. Endpoints? 
   - Pod의 Label과 Svc Label를 적절하게 연결이 되면 pod - endpoints - svc 로 연결이 됩니다. 
   - Endpoint는 끝점으로 외부에서 서비스를 통해 들어왔을 때 어떤 Pod로 연결될 지를 정의해 줍니다.
   - 위의 서비스가 번갈아 nginx, apache 메인 페이지를 프린트 하는 것도 endpoints에 nginx, apache 컨테이너 ip가 mapping 되어 있기 때문입니다.
    
   ![endpoints](https://i.stack.imgur.com/9RyYS.png) 
