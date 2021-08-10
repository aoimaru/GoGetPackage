[app/sources/181399584.Dockerfile]
digraph {
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" [label="docker-image://docker.io/library/ubuntu:trusty" shape="ellipse"];
  "sha256:6d7ca05b682d5980236303eecb6dc68c40aa31c9e480df6ef69f656b9d93428c" [label="/bin/sh -c apt-get update && \tapt-get install -yq iptables apt-transport-https ca-certificates" shape="box"];
  "sha256:c07a8f1b98772e6c8ae13c5e0d40bec230ba113361a6bf6d61f45604d9a6da1f" [label="https://raw.githubusercontent.com/docker/docker/b8bed8832b77a478360ae946a69dab5e922b194e/hack/dind" shape="ellipse"];
  "sha256:ed3ecc5a0959a16e9e7cd67aa6b87fd6a85e980b33513244aa4863e75cfc73e1" [label="copy{src=/dind, dest=/usr/local/bin/dind}" shape="note"];
  "sha256:201dcd636d655d79aa569553a7f7713f7b30ea120def53116148c6b753ea4acc" [label="/bin/sh -c chmod +x /usr/local/bin/dind" shape="box"];
  "sha256:39291b5c87a6f5bb76f0a5feef1baba3b3af49aa03bbd598cd113cd52a6f8bfd" [label="/bin/sh -c apt-key adv --keyserver hkp://keyserver.ubuntu.com --recv-keys $GPG_KEY_ID" shape="box"];
  "sha256:252cb1efa6bcba3c66bfb46cc16ba062e18bee6dff8a7d0f5b1c3c35cbbe3241" [label="/bin/sh -c gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys $GPG_KEY_ID" shape="box"];
  "sha256:dca509f53bdb7398ca905e77de3bcd414dab4dd9ad671fb9b74a5f6f245bbb47" [label="/bin/sh -c echo deb [arch=amd64] $TUTUM_REPO tutum main > /etc/apt/sources.list.d/tutum.list" shape="box"];
  "sha256:7e90120fa6faf0c21c0ba94d6cf2d0373ddde4004dc1d735abe1fe95080dfa1e" [label="/bin/sh -c apt-get update -q && DEBIAN_FRONTEND=noninteractive apt-get install -y tutum-agent" shape="box"];
  "sha256:4fd02aeda85083d15d9986db9b47bff7f542e8485be489cd2f6e8c0d3bb3cb25" [label="https://get.docker.com/builds/Linux/x86_64/docker-1.8.2" shape="ellipse"];
  "sha256:ed812921e69db20955a08edd719029e120a747faabdf1ce8a60efecd8ff60b04" [label="copy{src=/docker-1.8.2, dest=/usr/lib/tutum/docker}" shape="note"];
  "sha256:2b4fd66c6b92daf7f2515013ec8978391b00cb5496d265a2e4ce00819a0f7912" [label="/bin/sh -c chmod +x /usr/lib/tutum/docker && ln -s /usr/lib/tutum/docker /usr/bin/docker" shape="box"];
  "sha256:1e38aadf32c7e2ca6b025ba58df0d33e668b5315d8c322b1f507b3b39556ad3d" [label="local://context" shape="ellipse"];
  "sha256:ecfa424ba501f2defe3b9be2289f0f4b5f8c7aabe4dd771a45afe4d1ae5a84cd" [label="copy{src=/run.sh, dest=/}" shape="note"];
  "sha256:a3925947afe1e942cbd3db6139c38a5ec764c149a9d79af0a085bb69b34bd76a" [label="sha256:a3925947afe1e942cbd3db6139c38a5ec764c149a9d79af0a085bb69b34bd76a" shape="plaintext"];
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" -> "sha256:6d7ca05b682d5980236303eecb6dc68c40aa31c9e480df6ef69f656b9d93428c" [label=""];
  "sha256:6d7ca05b682d5980236303eecb6dc68c40aa31c9e480df6ef69f656b9d93428c" -> "sha256:ed3ecc5a0959a16e9e7cd67aa6b87fd6a85e980b33513244aa4863e75cfc73e1" [label=""];
  "sha256:c07a8f1b98772e6c8ae13c5e0d40bec230ba113361a6bf6d61f45604d9a6da1f" -> "sha256:ed3ecc5a0959a16e9e7cd67aa6b87fd6a85e980b33513244aa4863e75cfc73e1" [label=""];
  "sha256:ed3ecc5a0959a16e9e7cd67aa6b87fd6a85e980b33513244aa4863e75cfc73e1" -> "sha256:201dcd636d655d79aa569553a7f7713f7b30ea120def53116148c6b753ea4acc" [label=""];
  "sha256:201dcd636d655d79aa569553a7f7713f7b30ea120def53116148c6b753ea4acc" -> "sha256:39291b5c87a6f5bb76f0a5feef1baba3b3af49aa03bbd598cd113cd52a6f8bfd" [label=""];
  "sha256:39291b5c87a6f5bb76f0a5feef1baba3b3af49aa03bbd598cd113cd52a6f8bfd" -> "sha256:252cb1efa6bcba3c66bfb46cc16ba062e18bee6dff8a7d0f5b1c3c35cbbe3241" [label=""];
  "sha256:252cb1efa6bcba3c66bfb46cc16ba062e18bee6dff8a7d0f5b1c3c35cbbe3241" -> "sha256:dca509f53bdb7398ca905e77de3bcd414dab4dd9ad671fb9b74a5f6f245bbb47" [label=""];
  "sha256:dca509f53bdb7398ca905e77de3bcd414dab4dd9ad671fb9b74a5f6f245bbb47" -> "sha256:7e90120fa6faf0c21c0ba94d6cf2d0373ddde4004dc1d735abe1fe95080dfa1e" [label=""];
  "sha256:7e90120fa6faf0c21c0ba94d6cf2d0373ddde4004dc1d735abe1fe95080dfa1e" -> "sha256:ed812921e69db20955a08edd719029e120a747faabdf1ce8a60efecd8ff60b04" [label=""];
  "sha256:4fd02aeda85083d15d9986db9b47bff7f542e8485be489cd2f6e8c0d3bb3cb25" -> "sha256:ed812921e69db20955a08edd719029e120a747faabdf1ce8a60efecd8ff60b04" [label=""];
  "sha256:ed812921e69db20955a08edd719029e120a747faabdf1ce8a60efecd8ff60b04" -> "sha256:2b4fd66c6b92daf7f2515013ec8978391b00cb5496d265a2e4ce00819a0f7912" [label=""];
  "sha256:2b4fd66c6b92daf7f2515013ec8978391b00cb5496d265a2e4ce00819a0f7912" -> "sha256:ecfa424ba501f2defe3b9be2289f0f4b5f8c7aabe4dd771a45afe4d1ae5a84cd" [label=""];
  "sha256:1e38aadf32c7e2ca6b025ba58df0d33e668b5315d8c322b1f507b3b39556ad3d" -> "sha256:ecfa424ba501f2defe3b9be2289f0f4b5f8c7aabe4dd771a45afe4d1ae5a84cd" [label=""];
  "sha256:ecfa424ba501f2defe3b9be2289f0f4b5f8c7aabe4dd771a45afe4d1ae5a84cd" -> "sha256:a3925947afe1e942cbd3db6139c38a5ec764c149a9d79af0a085bb69b34bd76a" [label=""];
}

