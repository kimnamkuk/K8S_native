# 1.Deployments 는 무엇인가?
  - Stateless 한 상태의 Pod들의 집합입니다.
  - 정해진 Replicas 만큼 Pod 개수를 유지합니다.
  - 만약 Pod가 응답이 없을 경우 해당 Pod를 새로운 Pod로 변경합니다.

![Deployments](https://d33wubrfki0l68.cloudfront.net/152c845f25df8e69dd24dd7b0836a289747e258a/4a1d2/docs/tutorials/kubernetes-basics/public/images/module_02_first_app.svg)

참고사이트: kubernetes.io

# 2.Deployments 생성 방법
1) kubectl 명령어로 생성
  - kubectl run nginx --images=nginx [ must use after v1.15 ]
2) Yaml 파일로 생성  
  - 업로드 된 nginx-deploy.yaml 파일 참조
  - kubectl apply -f nginx-deploy.yaml
