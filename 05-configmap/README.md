# 1. 가변인프라 vs 불변인프라
  - 가변인프라
![가변인프라](https://github.com/kimnamkuk/K8S_native/blob/master/upload/%EA%B0%80%EB%B3%80%EC%9D%B8%ED%94%84%EB%9D%BC.png?raw=true)

  - 불변인프라
![불변인프라](https://github.com/kimnamkuk/K8S_native/blob/master/upload/%EB%B6%88%EB%B3%80%EC%9D%B8%ED%94%84%EB%9D%BC.PNG?raw=true)

# 2. 컨테이너는?
  - 컨테이너는 불변인프라 입니다.
  - 그렇기 때문에 컨테이너는 재기동을 하면 처음 상태로 돌아갑니다.
  - 설정 값이 변경되어 재기동 시 변경 된 설정 값이 적용되지 않습니다. 재기동 시에는 처음 상태로 돌아가기 때문입니다.
  - 설정 값이 변경되면 컨테이너 이미지 빌드를 다시 해야할까?
  
# 3. Configmap
  - K8s에서는 설정값을 관리용으로  Configmap을 제공합니다.
  - Configmap은 Read-Only 이기에 컨테이너 내부에서 변경은 불가합니다. (이유는, "불변 인프라" 이기 떄문입니다)
  - 설정 값이 변경 되면, Configmap 변경 후 Pod Restart 하면 해당 설정 값이 적용됩니다.
