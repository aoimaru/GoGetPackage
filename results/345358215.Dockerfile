[app/sources/345358215.Dockerfile]
digraph {
  "sha256:f70116b18363d49afab4295f22ac3dfde8f100455083d346ffc0f021f988b713" [label="docker-image://docker.io/balenalib/raspberrypi3-alpine:3.8-build" shape="ellipse"];
  "sha256:a80cf55b6a9592c8a731c8de7e695af90af68fd780d608150cde278355713fd6" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:a45737dae442f50e0834341f48a24bf2b02c279c90320bdfd083e2e07721d878" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" \t&& echo \"76be47e1f6979af4fc7c0c06d883a082f78a98b9948cf28359702877a8b2b9b2  go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armv7hf.tar.gz" shape="box"];
  "sha256:7fb47ad22006cdd19c54a80c23f762e0dc3e9d63172052365a2b887c8ac1a121" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:593f1c894688e3d74ecda8b0e32db85ca3ee7622e74e6ee6f6f9cb32afa8c4d1" [label="mkdir{path=/go}" shape="note"];
  "sha256:ba8746660012bec699a15b445a59b12f599f9efb2967167cf3eeff93a0d12438" [label="sha256:ba8746660012bec699a15b445a59b12f599f9efb2967167cf3eeff93a0d12438" shape="plaintext"];
  "sha256:f70116b18363d49afab4295f22ac3dfde8f100455083d346ffc0f021f988b713" -> "sha256:a80cf55b6a9592c8a731c8de7e695af90af68fd780d608150cde278355713fd6" [label=""];
  "sha256:a80cf55b6a9592c8a731c8de7e695af90af68fd780d608150cde278355713fd6" -> "sha256:a45737dae442f50e0834341f48a24bf2b02c279c90320bdfd083e2e07721d878" [label=""];
  "sha256:a45737dae442f50e0834341f48a24bf2b02c279c90320bdfd083e2e07721d878" -> "sha256:7fb47ad22006cdd19c54a80c23f762e0dc3e9d63172052365a2b887c8ac1a121" [label=""];
  "sha256:7fb47ad22006cdd19c54a80c23f762e0dc3e9d63172052365a2b887c8ac1a121" -> "sha256:593f1c894688e3d74ecda8b0e32db85ca3ee7622e74e6ee6f6f9cb32afa8c4d1" [label=""];
  "sha256:593f1c894688e3d74ecda8b0e32db85ca3ee7622e74e6ee6f6f9cb32afa8c4d1" -> "sha256:ba8746660012bec699a15b445a59b12f599f9efb2967167cf3eeff93a0d12438" [label=""];
}

