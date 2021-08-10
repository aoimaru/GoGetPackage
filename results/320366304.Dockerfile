[app/sources/320366304.Dockerfile]
digraph {
  "sha256:733e9c2537015577fa342f415d9e8d598417f4e057c5e9d334d714de2b6473f4" [label="docker-image://docker.io/library/ubuntu:16.10" shape="ellipse"];
  "sha256:a0097109237a6e1c98c4067a0c74ff4964eb377b1271761bf421ff17233a6ddb" [label="/bin/sh -c rm /bin/sh && ln -s /bin/bash /bin/sh" shape="box"];
  "sha256:af3bce077bff78e899e4321b05d31aa922b7186971f0d9b7f5f2885acb933e51" [label="/bin/sh -c echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections" shape="box"];
  "sha256:ac96c34b8ddb5e14fafb0b0b504da6b41af26b9901f972081b791362f67dfe34" [label="/bin/sh -c apt-get -y update   && apt-get -y install   build-essential   gcc   apt-utils   pkg-config   software-properties-common   apt-transport-https   libssl-dev   sudo   bash   curl   wget   tar   git   netcat   libaspell-dev   libhunspell-dev   hunspell-en-us   aspell-en   shellcheck   && apt-get -y update   && apt-get -y upgrade   && apt-get -y autoremove   && apt-get -y autoclean" shape="box"];
  "sha256:88daafdf2761fb93f3f1fa5120a8b3e00e5f57170fcb2a015d52b12d3b5ce48d" [label="/bin/sh -c rm -rf ${GOROOT}   && curl -s ${GO_DOWNLOAD_URL}/go${GO_VERSION}.linux-amd64.tar.gz | tar -v -C /usr/local/ -xz   && mkdir -p ${GOPATH}/src ${GOPATH}/bin   && go version" shape="box"];
  "sha256:fafc4d5974024c30b874b248035a388ee847d9e3a0abeb8b57fef90fd0883784" [label="/bin/sh -c mkdir -p ${GOPATH}/src/github.com/coreos/etcd" shape="box"];
  "sha256:f57283f6b850869335121fe6a21eb14a6c77b778012982656907c776483f0663" [label="mkdir{path=/go/src/github.com/coreos/etcd}" shape="note"];
  "sha256:09481ed1e7d3d429aaa391c4bc03b9e23ddac9a10fb3379de25d19cb7f3bb36f" [label="local://context" shape="ellipse"];
  "sha256:f4b960022fcee50d3f3df0483666421733baaf5867be56b8859b4e3e046ba38a" [label="copy{src=/scripts/install-marker.sh, dest=/tmp/install-marker.sh}" shape="note"];
  "sha256:a94f5316a23a4c2ede718945d835c80b3bf8f68490689cad5fa942f8aff37edf" [label="/bin/sh -c go get -v -u -tags spell github.com/chzchzchz/goword   && go get -v -u github.com/coreos/license-bill-of-materials   && go get -v -u honnef.co/go/tools/cmd/gosimple   && go get -v -u honnef.co/go/tools/cmd/unused   && go get -v -u honnef.co/go/tools/cmd/staticcheck   && go get -v -u github.com/wadey/gocovmerge   && go get -v -u github.com/gordonklaus/ineffassign   && /tmp/install-marker.sh amd64   && rm -f /tmp/install-marker.sh   && curl -s https://codecov.io/bash >/codecov   && chmod 700 /codecov" shape="box"];
  "sha256:d39096217f40940976c30f1320a1cd3fa12e7e97b9a17810d00f6373829eca82" [label="sha256:d39096217f40940976c30f1320a1cd3fa12e7e97b9a17810d00f6373829eca82" shape="plaintext"];
  "sha256:733e9c2537015577fa342f415d9e8d598417f4e057c5e9d334d714de2b6473f4" -> "sha256:a0097109237a6e1c98c4067a0c74ff4964eb377b1271761bf421ff17233a6ddb" [label=""];
  "sha256:a0097109237a6e1c98c4067a0c74ff4964eb377b1271761bf421ff17233a6ddb" -> "sha256:af3bce077bff78e899e4321b05d31aa922b7186971f0d9b7f5f2885acb933e51" [label=""];
  "sha256:af3bce077bff78e899e4321b05d31aa922b7186971f0d9b7f5f2885acb933e51" -> "sha256:ac96c34b8ddb5e14fafb0b0b504da6b41af26b9901f972081b791362f67dfe34" [label=""];
  "sha256:ac96c34b8ddb5e14fafb0b0b504da6b41af26b9901f972081b791362f67dfe34" -> "sha256:88daafdf2761fb93f3f1fa5120a8b3e00e5f57170fcb2a015d52b12d3b5ce48d" [label=""];
  "sha256:88daafdf2761fb93f3f1fa5120a8b3e00e5f57170fcb2a015d52b12d3b5ce48d" -> "sha256:fafc4d5974024c30b874b248035a388ee847d9e3a0abeb8b57fef90fd0883784" [label=""];
  "sha256:fafc4d5974024c30b874b248035a388ee847d9e3a0abeb8b57fef90fd0883784" -> "sha256:f57283f6b850869335121fe6a21eb14a6c77b778012982656907c776483f0663" [label=""];
  "sha256:f57283f6b850869335121fe6a21eb14a6c77b778012982656907c776483f0663" -> "sha256:f4b960022fcee50d3f3df0483666421733baaf5867be56b8859b4e3e046ba38a" [label=""];
  "sha256:09481ed1e7d3d429aaa391c4bc03b9e23ddac9a10fb3379de25d19cb7f3bb36f" -> "sha256:f4b960022fcee50d3f3df0483666421733baaf5867be56b8859b4e3e046ba38a" [label=""];
  "sha256:f4b960022fcee50d3f3df0483666421733baaf5867be56b8859b4e3e046ba38a" -> "sha256:a94f5316a23a4c2ede718945d835c80b3bf8f68490689cad5fa942f8aff37edf" [label=""];
  "sha256:a94f5316a23a4c2ede718945d835c80b3bf8f68490689cad5fa942f8aff37edf" -> "sha256:d39096217f40940976c30f1320a1cd3fa12e7e97b9a17810d00f6373829eca82" [label=""];
}

