[app/sources/456437180.Dockerfile]
digraph {
  "sha256:fb3e9c548cad755dbe6b51d5ae04ace1f38638b4a3df691e7d4c3e9acad303eb" [label="docker-image://docker.io/library/ubuntu:trusty@sha256:43cb19408de1e0ecf3ba5b5372ec98978963d6d0be42d0ad825e77a3bd16b5f7" shape="ellipse"];
  "sha256:81f247c3455cee16f3058f2b57b8ef661f828c4b762c811c747805434df7619c" [label="mkdir{path=/serialplot}" shape="note"];
  "sha256:75509b300bc26482d6f35be0c91105877f271e9a8b7c991ca48a6a8957697787" [label="local://context" shape="ellipse"];
  "sha256:76382fc2cbf35066bfdcf46cfe6f55565f55436f039bce059f0a250af2be6523" [label="copy{src=/, dest=/serialplot}" shape="note"];
  "sha256:890318792d72f1ad4b7aa219f93e43ac71c70d7815fb379a76f7c410da7286e1" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:926831b6c4243e6a3a8216b24938d326526563384224097b234644bdd0a303e3" [label="/bin/sh -c apt-get -y install software-properties-common" shape="box"];
  "sha256:d387078caef8c6a05d9fcdbf53a6c996726f0999707779657d6d2c93c2c109bd" [label="/bin/sh -c add-apt-repository -y ppa:beineri/opt-qt562-trusty" shape="box"];
  "sha256:b044e9c0c4127b115677eea1f9ef5dac5a901bd52b5c69e0d117b4610f4bccb2" [label="/bin/sh -c add-apt-repository -y ppa:george-edison55/cmake-3.x" shape="box"];
  "sha256:e6faf10b272b0cfc9e37ba5bb2fbbe5797feddb9443b8188ffd2703ea4044e90" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:a70f473d18685b22bae0038a8f3c9c8330201995d8b58470dd5cb71581c27d4f" [label="/bin/sh -c apt-get -y install build-essential mesa-common-dev qt56base qt56serialport cmake mercurial subversion git wget libfuse2" shape="box"];
  "sha256:d7bdfee381d2b765acce1e0f10680c555f4fd863d5d729fef7ce2972f0be1ee7" [label="sha256:d7bdfee381d2b765acce1e0f10680c555f4fd863d5d729fef7ce2972f0be1ee7" shape="plaintext"];
  "sha256:fb3e9c548cad755dbe6b51d5ae04ace1f38638b4a3df691e7d4c3e9acad303eb" -> "sha256:81f247c3455cee16f3058f2b57b8ef661f828c4b762c811c747805434df7619c" [label=""];
  "sha256:81f247c3455cee16f3058f2b57b8ef661f828c4b762c811c747805434df7619c" -> "sha256:76382fc2cbf35066bfdcf46cfe6f55565f55436f039bce059f0a250af2be6523" [label=""];
  "sha256:75509b300bc26482d6f35be0c91105877f271e9a8b7c991ca48a6a8957697787" -> "sha256:76382fc2cbf35066bfdcf46cfe6f55565f55436f039bce059f0a250af2be6523" [label=""];
  "sha256:76382fc2cbf35066bfdcf46cfe6f55565f55436f039bce059f0a250af2be6523" -> "sha256:890318792d72f1ad4b7aa219f93e43ac71c70d7815fb379a76f7c410da7286e1" [label=""];
  "sha256:890318792d72f1ad4b7aa219f93e43ac71c70d7815fb379a76f7c410da7286e1" -> "sha256:926831b6c4243e6a3a8216b24938d326526563384224097b234644bdd0a303e3" [label=""];
  "sha256:926831b6c4243e6a3a8216b24938d326526563384224097b234644bdd0a303e3" -> "sha256:d387078caef8c6a05d9fcdbf53a6c996726f0999707779657d6d2c93c2c109bd" [label=""];
  "sha256:d387078caef8c6a05d9fcdbf53a6c996726f0999707779657d6d2c93c2c109bd" -> "sha256:b044e9c0c4127b115677eea1f9ef5dac5a901bd52b5c69e0d117b4610f4bccb2" [label=""];
  "sha256:b044e9c0c4127b115677eea1f9ef5dac5a901bd52b5c69e0d117b4610f4bccb2" -> "sha256:e6faf10b272b0cfc9e37ba5bb2fbbe5797feddb9443b8188ffd2703ea4044e90" [label=""];
  "sha256:e6faf10b272b0cfc9e37ba5bb2fbbe5797feddb9443b8188ffd2703ea4044e90" -> "sha256:a70f473d18685b22bae0038a8f3c9c8330201995d8b58470dd5cb71581c27d4f" [label=""];
  "sha256:a70f473d18685b22bae0038a8f3c9c8330201995d8b58470dd5cb71581c27d4f" -> "sha256:d7bdfee381d2b765acce1e0f10680c555f4fd863d5d729fef7ce2972f0be1ee7" [label=""];
}

