# 1. 네임스페이란 무엇인가?
  - 동일한 클러스터 내에서 논리적인 분리를 가능하도록 합니다.
  - 컨테이너가 노드 별로 분리 되는 것이 아니기에, 서비스 유형에 따라 정해진 자원을 사용하고, 다른 서비스 사용자가 해당 서비스로 접근을 못하도록 격리(isolation)이 필요할때 네임스페이스를 사용합니다. 
  
  ![namespace](https://subicura.com/assets/article_images/2019-05-19-kubernetes-basic-1/namespace-label.png)
  
  참고사이트: https://subicura.com/2019/05/19/kubernetes-basic-1.html
  
# 2. Quota
  - k8s에서는 namespace, pod 등 각각 Resouce를 제한하여 사용이 가능합니다.
  - native 에서 제공하는 Resource Quota 설정은 CPU, MEM, storage만 제공합니다. 
  - resource quota에는 request, limit 항목이 존재하고, request는 Pod가 어떤 Node에 생성 될 때 최소한에 요구되는 자원량을 나타내고, Limit은 Pod가 사용할 수 있는 자원 최대치를 의미합니다
  - Pod가 Limit을 넘어서 자원을 사용하려고 하면 해당 노드의 Kernel이 컨테이너내에서 사용하는 APP을 Process Kill을 하여 자원을 확보 합니다.

  https://kubernetes.io/ko/docs/concepts/policy/resource-quotas/
