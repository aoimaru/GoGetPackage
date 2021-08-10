[app/sources/256963248.Dockerfile]
digraph {
  "sha256:3ac36f6e62f134bbd9238240c01083e46ca90a2f4c7b9a312231b6d160694d3c" [label="local://context" shape="ellipse"];
  "sha256:d680c6a82813d080081fbc3c024d21ddfa7ff995981cc7b4bfafe55edf80a319" [label="docker-image://docker.io/library/openjdk:8-jdk-alpine" shape="ellipse"];
  "sha256:05f9bc04e8a8446a31a409066f24baf8177f460a6898e4951807bc4962a70231" [label="/bin/sh -c apk update && apk upgrade && apk add netcat-openbsd" shape="box"];
  "sha256:6a7724699c515af0d9e93ab8bab0133ea81ed571f5d94cf4f5a71fbbf689203b" [label="/bin/sh -c mkdir -p /usr/local/authenticationservice" shape="box"];
  "sha256:d7dc1e4f0423d7774f5f73f5bbf209cb73a013b5e1b7894ded41ee5758d38a0c" [label="copy{src=/@project.build.finalName@.jar, dest=/usr/local/authenticationservice/}" shape="note"];
  "sha256:7ecd78dbc4c0d1fc4f0ada4a4272b0a02befbfc3a3595d7a5f23d716d6617ec0" [label="copy{src=/run.sh, dest=/run.sh}" shape="note"];
  "sha256:aaddc5580ed3539dbf2ca7ef8b1f14cb0703a383df484069bc760af3ef45cf9a" [label="/bin/sh -c chmod +x run.sh" shape="box"];
  "sha256:e527faaf3f7003aa3d49487bb74fa459f2c2192c1bfb3e4bbc976fbef193c825" [label="sha256:e527faaf3f7003aa3d49487bb74fa459f2c2192c1bfb3e4bbc976fbef193c825" shape="plaintext"];
  "sha256:d680c6a82813d080081fbc3c024d21ddfa7ff995981cc7b4bfafe55edf80a319" -> "sha256:05f9bc04e8a8446a31a409066f24baf8177f460a6898e4951807bc4962a70231" [label=""];
  "sha256:05f9bc04e8a8446a31a409066f24baf8177f460a6898e4951807bc4962a70231" -> "sha256:6a7724699c515af0d9e93ab8bab0133ea81ed571f5d94cf4f5a71fbbf689203b" [label=""];
  "sha256:6a7724699c515af0d9e93ab8bab0133ea81ed571f5d94cf4f5a71fbbf689203b" -> "sha256:d7dc1e4f0423d7774f5f73f5bbf209cb73a013b5e1b7894ded41ee5758d38a0c" [label=""];
  "sha256:3ac36f6e62f134bbd9238240c01083e46ca90a2f4c7b9a312231b6d160694d3c" -> "sha256:d7dc1e4f0423d7774f5f73f5bbf209cb73a013b5e1b7894ded41ee5758d38a0c" [label=""];
  "sha256:d7dc1e4f0423d7774f5f73f5bbf209cb73a013b5e1b7894ded41ee5758d38a0c" -> "sha256:7ecd78dbc4c0d1fc4f0ada4a4272b0a02befbfc3a3595d7a5f23d716d6617ec0" [label=""];
  "sha256:3ac36f6e62f134bbd9238240c01083e46ca90a2f4c7b9a312231b6d160694d3c" -> "sha256:7ecd78dbc4c0d1fc4f0ada4a4272b0a02befbfc3a3595d7a5f23d716d6617ec0" [label=""];
  "sha256:7ecd78dbc4c0d1fc4f0ada4a4272b0a02befbfc3a3595d7a5f23d716d6617ec0" -> "sha256:aaddc5580ed3539dbf2ca7ef8b1f14cb0703a383df484069bc760af3ef45cf9a" [label=""];
  "sha256:aaddc5580ed3539dbf2ca7ef8b1f14cb0703a383df484069bc760af3ef45cf9a" -> "sha256:e527faaf3f7003aa3d49487bb74fa459f2c2192c1bfb3e4bbc976fbef193c825" [label=""];
}

