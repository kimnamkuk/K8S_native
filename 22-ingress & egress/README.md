# 1. Ingress
  - 클러스터 내의 내부 서비스를 HTTP, HTTPS 경로로 노출합니다.
  - 기존엔 외부에서 서비스를 호출 할 때 nodePort, ExternalIP 등 IP 와 Port를 입력하여 서비스를 호출 했지만, Ingress 설정을 사용하면 host, path 구성으로 외부에서 서비스 호출이 가능합니다.
  
  ![ingress](https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=http%3A%2F%2Fcfile22.uf.tistory.com%2Fimage%2F994C92505CA0A248287933)
  
  #참고사이트:  https://timewizhan.tistory.com/entry/Kubernetes-Ingress
  
  https://kubernetes.io/ko/docs/concepts/services-networking/ingress/
  
# 2. Egress
  - 이그레스(Egress) 는 출구의 뜻으로 설정된 값이 외부 나갈 때 해당 설정된 값의 제약을 받습니다.
  - K8s Network Policy 구성에 따라 화이트리스트와 블랙리스트를 정의할 수 있습니다.
  
  ![egress](https://octetz.s3.us-east-2.amazonaws.com/netpol-s-1.png) 
  
  #참고사이트: https://octetz.com/docs/2019/2019-04-22-netpol-api-k8s/
  
  https://kubernetes.io/ko/docs/concepts/services-networking/network-policies/
