[app/sources/307538386.Dockerfile]
digraph {
  "sha256:91e7166faaacf8f60696f578c4efb543593181fea2c576338f94ac3ceea40c2b" [label="docker-image://docker.io/gbolo/baseos:alpine" shape="ellipse"];
  "sha256:29926d469703fe0c41f97d675c43843b55424c906e68513b17369cbf9f97a90f" [label="/bin/sh -c set -xe;       apk add --no-cache --update libltdl" shape="box"];
  "sha256:c7bcdebe1c91eecf1da68e5cfbf9e67cb96047b405ab6868a2dd609b4d8e5001" [label="docker-image://docker.io/gbolo/builder:alpine" shape="ellipse"];
  "sha256:9b9af994f738e10e0b9fe48a651a68d043f0f6a4a75ba059cb3b8de77999e3d2" [label="/bin/sh -c set -xe;       SRC_DIR=${GOPATH}/src/github.com/square/ghostunnel;       SRC_REPO=https://github.com/square/ghostunnel;       mkdir -p ${SRC_DIR} &&       git clone -b master --single-branch ${SRC_REPO} ${SRC_DIR} &&       cd ${SRC_DIR};       if [ \"${ghostunnel_version}\" != \"master\" ]; then git checkout ${ghostunnel_version}; fi &&       go build -o /usr/local/bin/ghostunnel" shape="box"];
  "sha256:d820ac185753a684938a6bbcc895bec24060785f66fd46dcc7a0e8a6ebb70099" [label="copy{src=/usr/local/bin/ghostunnel, dest=/usr/local/bin/ghostunnel}" shape="note"];
  "sha256:d54de1bf446924ee8e56939a3767c1cb67e00be4906a62b6d07c65dc706810fe" [label="sha256:d54de1bf446924ee8e56939a3767c1cb67e00be4906a62b6d07c65dc706810fe" shape="plaintext"];
  "sha256:91e7166faaacf8f60696f578c4efb543593181fea2c576338f94ac3ceea40c2b" -> "sha256:29926d469703fe0c41f97d675c43843b55424c906e68513b17369cbf9f97a90f" [label=""];
  "sha256:c7bcdebe1c91eecf1da68e5cfbf9e67cb96047b405ab6868a2dd609b4d8e5001" -> "sha256:9b9af994f738e10e0b9fe48a651a68d043f0f6a4a75ba059cb3b8de77999e3d2" [label=""];
  "sha256:29926d469703fe0c41f97d675c43843b55424c906e68513b17369cbf9f97a90f" -> "sha256:d820ac185753a684938a6bbcc895bec24060785f66fd46dcc7a0e8a6ebb70099" [label=""];
  "sha256:9b9af994f738e10e0b9fe48a651a68d043f0f6a4a75ba059cb3b8de77999e3d2" -> "sha256:d820ac185753a684938a6bbcc895bec24060785f66fd46dcc7a0e8a6ebb70099" [label=""];
  "sha256:d820ac185753a684938a6bbcc895bec24060785f66fd46dcc7a0e8a6ebb70099" -> "sha256:d54de1bf446924ee8e56939a3767c1cb67e00be4906a62b6d07c65dc706810fe" [label=""];
}

