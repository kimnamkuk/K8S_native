# Kubernetes 구성
![architecture](https://d33wubrfki0l68.cloudfront.net/7016517375d10c702489167e704dcb99e570df85/7bb53/images/docs/components-of-kubernetes.png)
참고: kuberntets.io

1. 마스터 (Master)
    1) API-Server
        - Kubernetes API를 외부로 제공하는 Master Component
        - 컨테이너 생성, 워커노드와(kubelet) 통신 등 주된 일은 API-Server가 주관함
        - API-Server가 동작하지 않으면 서비스를 살아 있으나, 생성, 업데이트 등 상태 변화에 따른 처리를 하지 못함
    2) Kube-Scheduler
        - 컨테이너를 생성하면 Pod를 어디에 배포할지 감지 및 결정함
        - 스케쥴링 결정 사항은 리소스 (CPU, MEM), Quta, affinity, anti-affiniy 등 
    3) Kube-Controller
        - 각 Components 구성됨 
        - 노드 컨트롤러: 노드가 다운되었을 때, 통지 및 대응에 관한 책임짐
        - 레플리케이션 컨트롤러: 레플리카가 설정된 수를 유지 시켜주는 책임을 가짐
        - 엔드포인트 컨트롤러: 서비스와 Pod를 연결
        - 서비스 어카운트 & 토큰 컨트롤러: 새로운 네임스페이스에 대한 기본 계정과 API 접근 토큰 생성 ( User, RBAC )
    4) ETCD
        - Key-Value 구성의 데이터베이스 
        - 클러스터에 대한 모든 정보를 보관
        - 보통 HA 구성은 필수
2. 워커 (Worker)
    1) Kubelet
        - 컨테이너의 모든 정보를 API-Server에 전송
        - Evicted Timeout 시간을 넘어서 API-Server와 통신을 하지 못하면, API-Server는 해당 노드가 죽었다고 판단, 해당 노드 컨테이너를 삭제 (Defalut 5m) 
    2) Kube-Proxy
        - 각 워커노드에 실행되는 프록시 에이전트
        - 서비스를 외부로 노출 시켰을 때, 해당 컨테이너가 어떤 노드에 있는 연결하는 역할
        
