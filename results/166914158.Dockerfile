[app/sources/166914158.Dockerfile]
digraph {
  "sha256:7d9c6b7c85a35e1fe4048633074237b0bc2aaf34ecf1804de1e1b93f660e57d1" [label="docker-image://docker.io/azul/zulu-openjdk:8" shape="ellipse"];
  "sha256:a115474a4554d62ae2c40f6bb5e4abe052652885ac93b690989585965af793a9" [label="/bin/sh -c bash -c 'apt-get -qq update && apt-get -y upgrade && apt-get -y autoclean && apt-get -y autoremove' &&   bash -c 'DEBIAN_FRONTEND=noninteractive apt-get install -y curl wget tar'" shape="box"];
  "sha256:075c8b251d12fb689497d82d6a59face9ba8ffdfebd5cc8f9ec2b44d78c44d8a" [label="/bin/sh -c useradd -ms /bin/bash $USER_NAME &&   mkdir -p $APP_HOME" shape="box"];
  "sha256:344327900d319e6de85b4f21da5d750f17684661cd1a1770e6e1ac72bffd2243" [label="local://context" shape="ellipse"];
  "sha256:3303deb2c0d42f4f2197f3dca958f47a416eb01d6bfeca4d4aa85cce85454b94" [label="copy{src=/easyreport.jar, dest=/opt/poc-api/easyreport/easyreport.jar}" shape="note"];
  "sha256:d8ac1a6fa6e500a22aae13bd1792a9cc5b2041bb70d34b13ce20d1ed88b721b8" [label="/bin/sh -c chown $USER_NAME $APP_HOME/easyreport.jar &&   bash -c 'touch ${APP_HOME}/easyreport.jar'" shape="box"];
  "sha256:0af014d0f071ea7b1eb332a1536a881969fad17b05cb3144613d48becc455dc4" [label="mkdir{path=/opt/poc-api/easyreport}" shape="note"];
  "sha256:9c4bb71a8a08a738ac25ebac80c66796a681a553d255e2afb8a02c5a902347d1" [label="sha256:9c4bb71a8a08a738ac25ebac80c66796a681a553d255e2afb8a02c5a902347d1" shape="plaintext"];
  "sha256:7d9c6b7c85a35e1fe4048633074237b0bc2aaf34ecf1804de1e1b93f660e57d1" -> "sha256:a115474a4554d62ae2c40f6bb5e4abe052652885ac93b690989585965af793a9" [label=""];
  "sha256:a115474a4554d62ae2c40f6bb5e4abe052652885ac93b690989585965af793a9" -> "sha256:075c8b251d12fb689497d82d6a59face9ba8ffdfebd5cc8f9ec2b44d78c44d8a" [label=""];
  "sha256:075c8b251d12fb689497d82d6a59face9ba8ffdfebd5cc8f9ec2b44d78c44d8a" -> "sha256:3303deb2c0d42f4f2197f3dca958f47a416eb01d6bfeca4d4aa85cce85454b94" [label=""];
  "sha256:344327900d319e6de85b4f21da5d750f17684661cd1a1770e6e1ac72bffd2243" -> "sha256:3303deb2c0d42f4f2197f3dca958f47a416eb01d6bfeca4d4aa85cce85454b94" [label=""];
  "sha256:3303deb2c0d42f4f2197f3dca958f47a416eb01d6bfeca4d4aa85cce85454b94" -> "sha256:d8ac1a6fa6e500a22aae13bd1792a9cc5b2041bb70d34b13ce20d1ed88b721b8" [label=""];
  "sha256:d8ac1a6fa6e500a22aae13bd1792a9cc5b2041bb70d34b13ce20d1ed88b721b8" -> "sha256:0af014d0f071ea7b1eb332a1536a881969fad17b05cb3144613d48becc455dc4" [label=""];
  "sha256:0af014d0f071ea7b1eb332a1536a881969fad17b05cb3144613d48becc455dc4" -> "sha256:9c4bb71a8a08a738ac25ebac80c66796a681a553d255e2afb8a02c5a902347d1" [label=""];
}

