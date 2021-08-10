[app/sources/196374834.Dockerfile]
digraph {
  "sha256:73eb3be27f01c88428795e0794dff03eab93bb7fb4387b1ab019a391d162b558" [label="local://context" shape="ellipse"];
  "sha256:3f9286f8453cbc1d69823d78f2eececd200523c5ae9c16f6c7a2d8692082e57c" [label="docker-image://docker.io/library/golang:1.4.3" shape="ellipse"];
  "sha256:1fcf1f4f48e87a2b72d5453e4f71418c3d8d4ee8bf5f544c12ef4255714762a1" [label="/bin/sh -c apt-get update -qq &&     DEBIAN_FRONTEND=noninteractive apt-get install --no-install-recommends -qqy         wget         curl         g++         make         mercurial         git         rsync         patch         python         python-pip         apt-transport-https         &&     apt-get clean" shape="box"];
  "sha256:7605d168d9f98b05777371d759ba525af44e9235e71738942f5330b7893994e6" [label="/bin/sh -c apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D &&     mkdir -p /etc/apt/sources.list.d &&     echo deb https://apt.dockerproject.org/repo ubuntu-trusty main > /etc/apt/sources.list.d/docker.list &&     apt-get update -qq &&     DEBIAN_FRONTEND=noninteractive apt-get install --no-install-recommends -qqy         docker-engine=1.8.1-0~trusty         &&     apt-get clean" shape="box"];
  "sha256:3333572863f365e388090ec11eb4c8bc3f4841fdd54c1178b52db1cca66cd61d" [label="/bin/sh -c pip install -U docker-compose==1.5.0" shape="box"];
  "sha256:ad2eb7de1a127b1dddf8bb813bc0968652c06bdd0e6e66b12ffc1c8ab8327817" [label="/bin/sh -c go get github.com/tools/godep" shape="box"];
  "sha256:76836dbcd8da4e04d0a6cc8d870f8a640af9118e06cf6065c9f99f7d3c6e9009" [label="/bin/sh -c mkdir -p /go/src/github.com/GoogleCloudPlatform/kubernetes" shape="box"];
  "sha256:34ff740f4709d47b1120e2fbcff04b0da439b7e2977ca06fb6e18cab074d0a4e" [label="mkdir{path=/go/src/github.com/GoogleCloudPlatform/kubernetes}" shape="note"];
  "sha256:77ca9ed560917bdd9808a5bd27ecda172c91cb306c3a720c596129ec7b7440cb" [label="copy{src=/bin/*, dest=/usr/local/bin/}" shape="note"];
  "sha256:b4ba68fe9c3e01548b3feedfcd1e40c16c1f6379087ed5d7005d3bd47b8eb687" [label="/bin/sh -c install-etcd.sh" shape="box"];
  "sha256:c0b966a4fc2fe9c180668c8ae3844ee181a3ace3e07b1241b3728fbaef7fa9ab" [label="sha256:c0b966a4fc2fe9c180668c8ae3844ee181a3ace3e07b1241b3728fbaef7fa9ab" shape="plaintext"];
  "sha256:3f9286f8453cbc1d69823d78f2eececd200523c5ae9c16f6c7a2d8692082e57c" -> "sha256:1fcf1f4f48e87a2b72d5453e4f71418c3d8d4ee8bf5f544c12ef4255714762a1" [label=""];
  "sha256:1fcf1f4f48e87a2b72d5453e4f71418c3d8d4ee8bf5f544c12ef4255714762a1" -> "sha256:7605d168d9f98b05777371d759ba525af44e9235e71738942f5330b7893994e6" [label=""];
  "sha256:7605d168d9f98b05777371d759ba525af44e9235e71738942f5330b7893994e6" -> "sha256:3333572863f365e388090ec11eb4c8bc3f4841fdd54c1178b52db1cca66cd61d" [label=""];
  "sha256:3333572863f365e388090ec11eb4c8bc3f4841fdd54c1178b52db1cca66cd61d" -> "sha256:ad2eb7de1a127b1dddf8bb813bc0968652c06bdd0e6e66b12ffc1c8ab8327817" [label=""];
  "sha256:ad2eb7de1a127b1dddf8bb813bc0968652c06bdd0e6e66b12ffc1c8ab8327817" -> "sha256:76836dbcd8da4e04d0a6cc8d870f8a640af9118e06cf6065c9f99f7d3c6e9009" [label=""];
  "sha256:76836dbcd8da4e04d0a6cc8d870f8a640af9118e06cf6065c9f99f7d3c6e9009" -> "sha256:34ff740f4709d47b1120e2fbcff04b0da439b7e2977ca06fb6e18cab074d0a4e" [label=""];
  "sha256:34ff740f4709d47b1120e2fbcff04b0da439b7e2977ca06fb6e18cab074d0a4e" -> "sha256:77ca9ed560917bdd9808a5bd27ecda172c91cb306c3a720c596129ec7b7440cb" [label=""];
  "sha256:73eb3be27f01c88428795e0794dff03eab93bb7fb4387b1ab019a391d162b558" -> "sha256:77ca9ed560917bdd9808a5bd27ecda172c91cb306c3a720c596129ec7b7440cb" [label=""];
  "sha256:77ca9ed560917bdd9808a5bd27ecda172c91cb306c3a720c596129ec7b7440cb" -> "sha256:b4ba68fe9c3e01548b3feedfcd1e40c16c1f6379087ed5d7005d3bd47b8eb687" [label=""];
  "sha256:b4ba68fe9c3e01548b3feedfcd1e40c16c1f6379087ed5d7005d3bd47b8eb687" -> "sha256:c0b966a4fc2fe9c180668c8ae3844ee181a3ace3e07b1241b3728fbaef7fa9ab" [label=""];
}

