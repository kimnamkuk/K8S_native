# 1. 볼륨
  - 컨테이너에 저장된 데이터를 보관하기 위해서는 별도의 장치가 필요합니다. 
  - k8s 에서는 볼륨이라는 플러그인을 사용하여 컨테이너 데이터가 사라지지 않고 보존되도록 도와줍니다.
  - 제공하는 플러그인 종류는 여러가지가 존재하나 emptyDir, hostPath, PV,PVC, Storageclass 만 설명하겠습니다
  - 자세한 사항은 아래 사이트를 참고 하시기 바랍니다.
  
  https://kubernetes.io/ko/docs/concepts/storage/volumes/
  
# 2. emptyDir
  - Pod가 Node에 할당 될 때 처음 생성 됩니다.
  - multi-container 구성 시 서로 다른 Path로 Mount 하여 사용 가능합니다.
  - 생명 주기는 Pod가 다운될 때 까지 입니다.

# 3. hostPath
  - Pod가 생성된 Node에 파일 또는 폴더를 마운트 하여 사용합니다.
  - 
