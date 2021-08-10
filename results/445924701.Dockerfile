[app/sources/445924701.Dockerfile]
digraph {
  "sha256:6f817646370b59ade498abbf600881d8f96db10a940d1a475d5bd9bee7007d59" [label="local://context" shape="ellipse"];
  "sha256:11a5cb43c52326221c15f799c36eafc57be0fcad62bebe7069612819da3eb1ef" [label="docker-image://docker.io/library/golang:1.10.2" shape="ellipse"];
  "sha256:cf2caa8a2bff7219b5bde218818f3067c755f3004b6ea2ed7b968314939d75e8" [label="/bin/sh -c mv /etc/apt/sources.list /etc/apt/sources.list.bak     && echo deb http://mirrors.aliyun.com/debian stretch main contrib non-free > /etc/apt/sources.list     && echo deb-src http://mirrors.aliyun.com/debian stretch main contrib non-free >> /etc/apt/sources.list     && echo deb http://mirrors.aliyun.com/debian stretch-updates main contrib non-free >> /etc/apt/sources.list     && echo deb-src http://mirrors.aliyun.com/debian stretch-updates main contrib non-free >> /etc/apt/sources.list     && echo deb http://mirrors.aliyun.com/debian-security stretch/updates main contrib non-free >> /etc/apt/sources.list     && echo deb-src http://mirrors.aliyun.com/debian-security stretch/updates main contrib non-free >> /etc/apt/sources.list     && apt-get update" shape="box"];
  "sha256:2be5d0218f99d628d0ba0ea957c11b516044a8a0727c8b6527ceb1aefc7359e3" [label="/bin/sh -c apt-get update && apt-get install openjdk-8-jdk -y" shape="box"];
  "sha256:1d46c73b93d04e44cbe793b37103c62fe9384467786838699287944fad97339e" [label="copy{src=/, dest=/go/src/go-common/}" shape="note"];
  "sha256:fdafdafe00943d0119be1ee32a878e0511aab7b781c23d446bae4e0d832156b7" [label="/bin/sh -c cd /go/src/go-common/app/tool/kratos && go install" shape="box"];
  "sha256:5f08f0a76edb432559b2c358e20abe324c86f697be676c28bb12d98d5a058229" [label="sha256:5f08f0a76edb432559b2c358e20abe324c86f697be676c28bb12d98d5a058229" shape="plaintext"];
  "sha256:11a5cb43c52326221c15f799c36eafc57be0fcad62bebe7069612819da3eb1ef" -> "sha256:cf2caa8a2bff7219b5bde218818f3067c755f3004b6ea2ed7b968314939d75e8" [label=""];
  "sha256:cf2caa8a2bff7219b5bde218818f3067c755f3004b6ea2ed7b968314939d75e8" -> "sha256:2be5d0218f99d628d0ba0ea957c11b516044a8a0727c8b6527ceb1aefc7359e3" [label=""];
  "sha256:2be5d0218f99d628d0ba0ea957c11b516044a8a0727c8b6527ceb1aefc7359e3" -> "sha256:1d46c73b93d04e44cbe793b37103c62fe9384467786838699287944fad97339e" [label=""];
  "sha256:6f817646370b59ade498abbf600881d8f96db10a940d1a475d5bd9bee7007d59" -> "sha256:1d46c73b93d04e44cbe793b37103c62fe9384467786838699287944fad97339e" [label=""];
  "sha256:1d46c73b93d04e44cbe793b37103c62fe9384467786838699287944fad97339e" -> "sha256:fdafdafe00943d0119be1ee32a878e0511aab7b781c23d446bae4e0d832156b7" [label=""];
  "sha256:fdafdafe00943d0119be1ee32a878e0511aab7b781c23d446bae4e0d832156b7" -> "sha256:5f08f0a76edb432559b2c358e20abe324c86f697be676c28bb12d98d5a058229" [label=""];
}

