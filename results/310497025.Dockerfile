[app/sources/310497025.Dockerfile]
digraph {
  "sha256:cf096410c7d0d5f6c46d5ddcc429b9643b414f83dc5808304e740862b7964862" [label="docker-image://docker.io/nvidia/cuda:9.1-devel-ubuntu16.04" shape="ellipse"];
  "sha256:a54a5916d4ac97853bf489ab5eca7f6f8efd9eab62523d5bb7cff1150d38c803" [label="/bin/sh -c apt-get update -qq &&   apt-get install -y     git bzip2 wget sox     g++ make python python3     zlib1g-dev automake autoconf libtool subversion     libatlas-base-dev" shape="box"];
  "sha256:7b069f4385da95923e426089f7415a88c472deb6c065805d0871443fd7825441" [label="mkdir{path=/usr/local}" shape="note"];
  "sha256:f608c0e12bbd1025f842859a367c991aece2d97034f009e5dedbd5f54701499b" [label="/bin/sh -c git clone https://github.com/kaldi-asr/kaldi.git" shape="box"];
  "sha256:580b5e5c396f3c7b2657a0118bcd110b267ab57d0fc642c79747b6a70a7f4fb5" [label="mkdir{path=/usr/local/kaldi/tools}" shape="note"];
  "sha256:70d0778cf897dcf74961485c9c61ebcf581bcca04ac6ad90fcb5ec43e37b00ce" [label="/bin/sh -c extras/check_dependencies.sh" shape="box"];
  "sha256:5ffb05b81a33b0a146b490a71a586f74587b64f07e6912b65e462ce840cdc94a" [label="/bin/sh -c make -j $CPU_CORE" shape="box"];
  "sha256:9c39a29ced9d64fc0fd5c47ef60e41a329447cccae39abcadb1079127c37d76f" [label="mkdir{path=/usr/local/kaldi/src}" shape="note"];
  "sha256:5f3392ed00edc755f95f1c6e61112db3b5144bacadf5b6aac80a6fd9af95edeb" [label="/bin/sh -c ./configure && make depend -j $CPU_CORE && make -j $CPU_CORE" shape="box"];
  "sha256:f1f1bfb6559d86d0a59f374b01137f865d470532bf0b4cf7903b3df170a3daa8" [label="sha256:f1f1bfb6559d86d0a59f374b01137f865d470532bf0b4cf7903b3df170a3daa8" shape="plaintext"];
  "sha256:cf096410c7d0d5f6c46d5ddcc429b9643b414f83dc5808304e740862b7964862" -> "sha256:a54a5916d4ac97853bf489ab5eca7f6f8efd9eab62523d5bb7cff1150d38c803" [label=""];
  "sha256:a54a5916d4ac97853bf489ab5eca7f6f8efd9eab62523d5bb7cff1150d38c803" -> "sha256:7b069f4385da95923e426089f7415a88c472deb6c065805d0871443fd7825441" [label=""];
  "sha256:7b069f4385da95923e426089f7415a88c472deb6c065805d0871443fd7825441" -> "sha256:f608c0e12bbd1025f842859a367c991aece2d97034f009e5dedbd5f54701499b" [label=""];
  "sha256:f608c0e12bbd1025f842859a367c991aece2d97034f009e5dedbd5f54701499b" -> "sha256:580b5e5c396f3c7b2657a0118bcd110b267ab57d0fc642c79747b6a70a7f4fb5" [label=""];
  "sha256:580b5e5c396f3c7b2657a0118bcd110b267ab57d0fc642c79747b6a70a7f4fb5" -> "sha256:70d0778cf897dcf74961485c9c61ebcf581bcca04ac6ad90fcb5ec43e37b00ce" [label=""];
  "sha256:70d0778cf897dcf74961485c9c61ebcf581bcca04ac6ad90fcb5ec43e37b00ce" -> "sha256:5ffb05b81a33b0a146b490a71a586f74587b64f07e6912b65e462ce840cdc94a" [label=""];
  "sha256:5ffb05b81a33b0a146b490a71a586f74587b64f07e6912b65e462ce840cdc94a" -> "sha256:9c39a29ced9d64fc0fd5c47ef60e41a329447cccae39abcadb1079127c37d76f" [label=""];
  "sha256:9c39a29ced9d64fc0fd5c47ef60e41a329447cccae39abcadb1079127c37d76f" -> "sha256:5f3392ed00edc755f95f1c6e61112db3b5144bacadf5b6aac80a6fd9af95edeb" [label=""];
  "sha256:5f3392ed00edc755f95f1c6e61112db3b5144bacadf5b6aac80a6fd9af95edeb" -> "sha256:f1f1bfb6559d86d0a59f374b01137f865d470532bf0b4cf7903b3df170a3daa8" [label=""];
}

