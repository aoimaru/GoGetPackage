[app/sources/341668175.Dockerfile]
digraph {
  "sha256:f2bc79a8841d9b054152764da0422f83ee87aeea835c357f2cd9c965319760f2" [label="docker-image://docker.io/nvidia/cuda:8.0-cudnn5-devel" shape="ellipse"];
  "sha256:901d749a0cd47a7b35e917961b1d952549f85032d87854dbf0048cb4a0a0dd97" [label="/bin/sh -c apt-get update &&    apt-get install -y wget python3.5 gcc-4.9 gcc-5 g++-4.9 g++-5 cmake less python3-pip python3-dev    build-essential git pkgconf    libopenblas-dev liblapack-dev    maven default-jdk    &&    rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:f04de62a382bf66fb1984d48d6ff95af3f3975694ad9e310880f626677c15ddc" [label="mkdir{path=/work}" shape="note"];
  "sha256:445f85cae19a19c0aac46d4cd1a414341fcc8cbf64dc55c47b626c5e3109a54c" [label="local://context" shape="ellipse"];
  "sha256:b6c7724dcc1455957fd97311db371cd9f7c0af0d054a4880561ce26a6e079943" [label="copy{src=/mxnet, dest=/work/mxnet}" shape="note"];
  "sha256:bc08bd9617afe891c27d78fc9711a0c46c49a0e88b06fa8e2a1d98b852f358a9" [label="mkdir{path=/work/mxnet}" shape="note"];
  "sha256:c7bfa39f08f996f4825da4e191d6526a52f6d271036172fcce4fe45b2493e12b" [label="/bin/sh -c make -j$(nproc) $BUILD_OPTS" shape="box"];
  "sha256:a64e44e2e26aa7095639d46d0eb12f8beddba20ea645d4e395a2786c63fd0826" [label="mkdir{path=/work/build}" shape="note"];
  "sha256:a2b2caa6a1df953a280ce8bd25aedbce070abc474e62b6d561bd2ab2b6513e96" [label="/bin/sh -c cp /work/mxnet/lib/* ." shape="box"];
  "sha256:3ed668833031831f0339ef09a872ea80d4a24157fb1430d289c61210a185157d" [label="sha256:3ed668833031831f0339ef09a872ea80d4a24157fb1430d289c61210a185157d" shape="plaintext"];
  "sha256:f2bc79a8841d9b054152764da0422f83ee87aeea835c357f2cd9c965319760f2" -> "sha256:901d749a0cd47a7b35e917961b1d952549f85032d87854dbf0048cb4a0a0dd97" [label=""];
  "sha256:901d749a0cd47a7b35e917961b1d952549f85032d87854dbf0048cb4a0a0dd97" -> "sha256:f04de62a382bf66fb1984d48d6ff95af3f3975694ad9e310880f626677c15ddc" [label=""];
  "sha256:f04de62a382bf66fb1984d48d6ff95af3f3975694ad9e310880f626677c15ddc" -> "sha256:b6c7724dcc1455957fd97311db371cd9f7c0af0d054a4880561ce26a6e079943" [label=""];
  "sha256:445f85cae19a19c0aac46d4cd1a414341fcc8cbf64dc55c47b626c5e3109a54c" -> "sha256:b6c7724dcc1455957fd97311db371cd9f7c0af0d054a4880561ce26a6e079943" [label=""];
  "sha256:b6c7724dcc1455957fd97311db371cd9f7c0af0d054a4880561ce26a6e079943" -> "sha256:bc08bd9617afe891c27d78fc9711a0c46c49a0e88b06fa8e2a1d98b852f358a9" [label=""];
  "sha256:bc08bd9617afe891c27d78fc9711a0c46c49a0e88b06fa8e2a1d98b852f358a9" -> "sha256:c7bfa39f08f996f4825da4e191d6526a52f6d271036172fcce4fe45b2493e12b" [label=""];
  "sha256:c7bfa39f08f996f4825da4e191d6526a52f6d271036172fcce4fe45b2493e12b" -> "sha256:a64e44e2e26aa7095639d46d0eb12f8beddba20ea645d4e395a2786c63fd0826" [label=""];
  "sha256:a64e44e2e26aa7095639d46d0eb12f8beddba20ea645d4e395a2786c63fd0826" -> "sha256:a2b2caa6a1df953a280ce8bd25aedbce070abc474e62b6d561bd2ab2b6513e96" [label=""];
  "sha256:a2b2caa6a1df953a280ce8bd25aedbce070abc474e62b6d561bd2ab2b6513e96" -> "sha256:3ed668833031831f0339ef09a872ea80d4a24157fb1430d289c61210a185157d" [label=""];
}

