# 1. 볼륨
  - 컨테이너에 저장된 데이터를 보관하기 위해서는 별도의 장치가 필요합니다. 
  - k8s 에서는 볼륨이라는 플러그인을 사용하여 컨테이너 데이터가 사라지지 않고 보존되도록 도와줍니다.
  - 제공하는 플러그인 종류는 여러가지가 존재하나 emptyDir,hostPath,PV,PVC,nfs,Storageclass 만 설명하겠습니다
  - 자세한 사항은 아래 사이트를 참고 하시기 바랍니다.
  
  https://kubernetes.io/ko/docs/concepts/storage/volumes/
  
# 2. emptyDir
  - Pod가 Node에 할당 될 때 처음 생성 됩니다.
  - multi-container 구성 시 서로 다른 Path로 Mount 하여 사용 가능합니다.
  - 생명 주기는 Pod가 다운될 때 까지 입니다.

# 3. hostPath
  - Pod가 생성된 Node에 파일 또는 폴더를 마운트 하여 사용합니다.
  - 단, 컨테이너가 재기동 되고 기존에 노드가 아닌 다른 노드에서 동작 할 경우 기존에 사용하던 파일 또는 폴더는 사용할 수 없습니다. 
  - 노드에 보관된 데이터를 컨테이너 사용하거나, 모니터링 에이전트가 노드 관련 정보를 수집할 때 사용합니다.
  
# 4. PV, PVC

![pvpvc](https://miro.medium.com/max/700/1*DE9B97u63yfk6hntSbF5kQ.png) 

참고: https://medium.com/@preiner/%EC%BF%A0%EB%B2%84%EB%84%A4%ED%8B%B0%EC%8A%A4-state-pod%EC%97%90-%ED%95%84%EC%9A%94%ED%95%9C-%EC%8A%A4%ED%86%A0%EB%A6%AC%EC%A7%80-storage-%EC%84%A4%EC%A0%95-6280f025a008
  
  - 컨테이너에서 볼륨을 사용시 pv,pvc를 만들어고 해당 pvc를 컨테이너에서 마운트 합니다.
  - 기본적으로 pv는 스토리지에 대한 설정값을 정의하고, pvc는 해당 스토리지에서 어느정도를 사용할지를 정의합니다.
  - 사용자가 하나하나 정의해줘야하고, 동적으로 할당 시 사용하기 힘든 문제가 있습니다.

# 5. StorageClass 
  - 볼륨을 동적으로 할당 할 때 사용합니다.
  - ThreadPool 처럼 정의된 Thread를 사용자가 원할 때 꺼내서 쓸수 있는 것 처럼 이미 정의된 스토리지에서 사용할 볼륨량만 정의하여 컨테이너가 배포 될 때 동적으로 할당 가능합니다.
  
# 6. nfs
  - nfs는 컨테이너에 볼륨을 할당 시 가장 보편적이고 편리하게 이용하고 있습니다.
  - ReadWriteMany 이기 때문에 여러개의 컨테이너가 동시에 작업이 가능합니다
  - 단, IOPS 성능 이슈가 발생하는 APP이 사용하기엔 무리가 있습니다.

