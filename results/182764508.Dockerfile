[app/sources/182764508.Dockerfile]
digraph {
  "sha256:12a78a6b872b676798f4fd5bedf199a88ecd292fd67feaf252e2597ee85e8fb6" [label="docker-image://docker.io/library/debian:stretch-slim@sha256:40b4072ce18fabe32f357f7c9ec1d256d839b1b95bcdc1f9c910823c6c2932e9" shape="ellipse"];
  "sha256:ac2be06f27640d151910bc9e806a02e051cf70d67c14d24bff055a4bcb49c618" [label="/bin/sh -c set -ex;   export DEBIAN_FRONTEND=noninteractive;   runDeps='procps';   buildDeps='curl ca-certificates';   apt-get update && apt-get install -y $runDeps $buildDeps --no-install-recommends;   rm -rf /var/lib/apt/lists/*;     curl -sLS -o k.tar.gz -k https://dl.k8s.io/v${KUBERNETES_VERSION}/kubernetes-client-linux-amd64.tar.gz;   echo \"$KUBERNETES_CLIENTS_SHA256  k.tar.gz\" | sha256sum -c;   tar -xvzf k.tar.gz -C /usr/local/bin/ --strip-components=3 kubernetes/client/bin/kubectl;   rm k.tar.gz;     apt-get purge -y --auto-remove $buildDeps;   rm /var/log/dpkg.log /var/log/apt/*.log" shape="box"];
  "sha256:5edd01d06ef72405ff1bff3303d214a66262c0a0673f96196d800ab81e3e8058" [label="/bin/sh -c kubectl version --client" shape="box"];
  "sha256:e79474898308932385890d19f6859852758edc0a29e234e78d2f6e3caa8ddab7" [label="docker-image://docker.io/cfssl/cfssl@sha256:f5ca56a93dbb5506d79833cf4869dcca0df4e2d200d5eff9856f35041505d2a7" shape="ellipse"];
  "sha256:f6aa711cec988a02d1fcf338d5c6ccb3e8d58f1c7bcdc60c9b8917b8266901d6" [label="/bin/sh -c whereis cfssl" shape="box"];
  "sha256:cb502563a59213d4ddeea04b63dc208f317b124fbd9e6e5ddacbd7970fc51d38" [label="/bin/sh -c whereis cfssljson" shape="box"];
  "sha256:28f961f945864292312b377bf3f7e54964732f3e183d0595ff4f4c81cf99b80d" [label="copy{src=/go/bin/cfssl*, dest=/usr/local/bin/}" shape="note"];
  "sha256:7579977e93a44169a73cd0c75ee7850e9dfc3be263e0f274d96919c2854a9842" [label="/bin/sh -c cfssl version" shape="box"];
  "sha256:e19fd17e572dcad49c9e375de071d37b687bfab4d544d21ac863d345e9cb5f36" [label="sha256:e19fd17e572dcad49c9e375de071d37b687bfab4d544d21ac863d345e9cb5f36" shape="plaintext"];
  "sha256:12a78a6b872b676798f4fd5bedf199a88ecd292fd67feaf252e2597ee85e8fb6" -> "sha256:ac2be06f27640d151910bc9e806a02e051cf70d67c14d24bff055a4bcb49c618" [label=""];
  "sha256:ac2be06f27640d151910bc9e806a02e051cf70d67c14d24bff055a4bcb49c618" -> "sha256:5edd01d06ef72405ff1bff3303d214a66262c0a0673f96196d800ab81e3e8058" [label=""];
  "sha256:e79474898308932385890d19f6859852758edc0a29e234e78d2f6e3caa8ddab7" -> "sha256:f6aa711cec988a02d1fcf338d5c6ccb3e8d58f1c7bcdc60c9b8917b8266901d6" [label=""];
  "sha256:f6aa711cec988a02d1fcf338d5c6ccb3e8d58f1c7bcdc60c9b8917b8266901d6" -> "sha256:cb502563a59213d4ddeea04b63dc208f317b124fbd9e6e5ddacbd7970fc51d38" [label=""];
  "sha256:5edd01d06ef72405ff1bff3303d214a66262c0a0673f96196d800ab81e3e8058" -> "sha256:28f961f945864292312b377bf3f7e54964732f3e183d0595ff4f4c81cf99b80d" [label=""];
  "sha256:cb502563a59213d4ddeea04b63dc208f317b124fbd9e6e5ddacbd7970fc51d38" -> "sha256:28f961f945864292312b377bf3f7e54964732f3e183d0595ff4f4c81cf99b80d" [label=""];
  "sha256:28f961f945864292312b377bf3f7e54964732f3e183d0595ff4f4c81cf99b80d" -> "sha256:7579977e93a44169a73cd0c75ee7850e9dfc3be263e0f274d96919c2854a9842" [label=""];
  "sha256:7579977e93a44169a73cd0c75ee7850e9dfc3be263e0f274d96919c2854a9842" -> "sha256:e19fd17e572dcad49c9e375de071d37b687bfab4d544d21ac863d345e9cb5f36" [label=""];
}

