# POD 란 무엇인가?
- 파드 는 쿠버네티스 애플리케이션의 기본 실행 단위이다
- 파드 는 단일 컨테이너만 동작하는 파드와 함께 동작하는 작업이 필요한 다중 컨테이너가 동작하는 파드가 있습니다.
![pod](https://d33wubrfki0l68.cloudfront.net/fe03f68d8ede9815184852ca2a4fd30325e5d15a/98064/docs/tutorials/kubernetes-basics/public/images/module_03_pods.svg "pod")

https://kubernetes.io/ko/docs/concepts/workloads/pods/pod-overview/

# Pod 생성 방법 
1) kubectl 명령어로 생성
  - kubectl run nginx --image=nginx [ deprecated v1.15 ]
  - kubectl run nginx --generator=run-pod/v1 --images [ must use after v1.15 ]
  
2) Yaml 파일로 생성
  - 업로드 된 nginx-pod.yaml 파일 참조
  - kubectl apply -f nginx-pod.yaml 
# 생성된 Pod 확인
- kubectl get pod or po

# 생성된 Pod 동작 확인
- kubectl get po -o wide 

