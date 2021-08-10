[app/sources/162457166.Dockerfile]
digraph {
  "sha256:fb3e9c548cad755dbe6b51d5ae04ace1f38638b4a3df691e7d4c3e9acad303eb" [label="docker-image://docker.io/library/ubuntu:trusty@sha256:43cb19408de1e0ecf3ba5b5372ec98978963d6d0be42d0ad825e77a3bd16b5f7" shape="ellipse"];
  "sha256:b8cf3ac627d4baa4330450b3ca7e588f4b3fd56dbcc8d7f98ca7fc7e99fd609d" [label="/bin/sh -c apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y     python-software-properties     software-properties-common     wget     git     mercurial     make     ruby     ruby-dev     rpm     zip     python     python-boto" shape="box"];
  "sha256:76fa3477d868676f7c292a095b0085a20082515b771450fc627e698dfb56f2a6" [label="/bin/sh -c gem install fpm" shape="box"];
  "sha256:063345f2b164bc017e5336a01a2f440045bf347a941d4040907cc1e35bbc4105" [label="/bin/sh -c mkdir -p $PROJECT_DIR" shape="box"];
  "sha256:b8443c98fb0b87dcb2eb30d0ad5b60bbccfafc5a5023ffc436534ac8cc47b7e2" [label="/bin/sh -c wget https://storage.googleapis.com/golang/go${GO_VERSION}.linux-${GO_ARCH}.tar.gz;    tar -C /usr/local/ -xf /go${GO_VERSION}.linux-${GO_ARCH}.tar.gz ;    rm /go${GO_VERSION}.linux-${GO_ARCH}.tar.gz" shape="box"];
  "sha256:eb20c35657a5a7fdc7b8fc5f7858f1803d813dbd83892df1d7690cc4c7679b16" [label="/bin/sh -c git clone https://go.googlesource.com/go" shape="box"];
  "sha256:71c9f509a693b3c2f302f8d9c02dffa4fe4e360e7eb4627e468222cb70019e1e" [label="local://context" shape="ellipse"];
  "sha256:063eeb29e25ffbba2776964e279e94602f10a2abe8cb9517e29544d948e1f46f" [label="copy{src=/gobuild.sh, dest=/gobuild.sh}" shape="note"];
  "sha256:aa9d4fb0be29aa9f89f7652fee67f0c072c1666584768b269f3d240e3fa7a410" [label="sha256:aa9d4fb0be29aa9f89f7652fee67f0c072c1666584768b269f3d240e3fa7a410" shape="plaintext"];
  "sha256:fb3e9c548cad755dbe6b51d5ae04ace1f38638b4a3df691e7d4c3e9acad303eb" -> "sha256:b8cf3ac627d4baa4330450b3ca7e588f4b3fd56dbcc8d7f98ca7fc7e99fd609d" [label=""];
  "sha256:b8cf3ac627d4baa4330450b3ca7e588f4b3fd56dbcc8d7f98ca7fc7e99fd609d" -> "sha256:76fa3477d868676f7c292a095b0085a20082515b771450fc627e698dfb56f2a6" [label=""];
  "sha256:76fa3477d868676f7c292a095b0085a20082515b771450fc627e698dfb56f2a6" -> "sha256:063345f2b164bc017e5336a01a2f440045bf347a941d4040907cc1e35bbc4105" [label=""];
  "sha256:063345f2b164bc017e5336a01a2f440045bf347a941d4040907cc1e35bbc4105" -> "sha256:b8443c98fb0b87dcb2eb30d0ad5b60bbccfafc5a5023ffc436534ac8cc47b7e2" [label=""];
  "sha256:b8443c98fb0b87dcb2eb30d0ad5b60bbccfafc5a5023ffc436534ac8cc47b7e2" -> "sha256:eb20c35657a5a7fdc7b8fc5f7858f1803d813dbd83892df1d7690cc4c7679b16" [label=""];
  "sha256:eb20c35657a5a7fdc7b8fc5f7858f1803d813dbd83892df1d7690cc4c7679b16" -> "sha256:063eeb29e25ffbba2776964e279e94602f10a2abe8cb9517e29544d948e1f46f" [label=""];
  "sha256:71c9f509a693b3c2f302f8d9c02dffa4fe4e360e7eb4627e468222cb70019e1e" -> "sha256:063eeb29e25ffbba2776964e279e94602f10a2abe8cb9517e29544d948e1f46f" [label=""];
  "sha256:063eeb29e25ffbba2776964e279e94602f10a2abe8cb9517e29544d948e1f46f" -> "sha256:aa9d4fb0be29aa9f89f7652fee67f0c072c1666584768b269f3d240e3fa7a410" [label=""];
}

