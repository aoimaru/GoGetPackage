[app/sources/317979672.Dockerfile]
digraph {
  "sha256:765c2b9b5212d3e2daeb55a3fc8cb3cab86a5c425e0455abbf903f4abf14f21a" [label="docker-image://docker.io/floopcz/tensorflow_cc:ubuntu-shared-cuda" shape="ellipse"];
  "sha256:06472510b1b82e184058559fc7719d8d2a56bb9eb6a838cdbcc6081c6be00e94" [label="/bin/sh -c wget https://apt.repos.intel.com/intel-gpg-keys/GPG-PUB-KEY-INTEL-SW-PRODUCTS-2019.PUB && apt-key add GPG-PUB-KEY-INTEL-SW-PRODUCTS-2019.PUB && sh -c 'echo deb https://apt.repos.intel.com/mkl all main > /etc/apt/sources.list.d/intel-mkl.list' && apt-get update && apt-get install -y intel-mkl-64bit-2018.2-046" shape="box"];
  "sha256:c26a09d67e2dd4a2e6692a955c27fe133cf22c4833f434c48f204836564b925d" [label="/bin/sh -c apt-get install -y clang-6.0 ninja-build python3-pip nvidia-opencl-dev libopenblas-dev libboost-dev nvidia-cuda-dev nvidia-cuda-toolkit libgtest-dev git ssh tar gzip ca-certificates sudo" shape="box"];
  "sha256:2bcba255e18033aba759155f348ed143711824056d052ad1e0203d2e1f151d31" [label="/bin/sh -c pip3 install meson" shape="box"];
  "sha256:55d38922aab36d4f7a31630b81fbea5bda910bca4e9cb14781657896b8778dfb" [label="/bin/sh -c ln -s /usr/include/ /usr/include/openblas" shape="box"];
  "sha256:5670ff34744f5cd015335a8eaec05470444addf2d41d75d867152118f4ba435a" [label="/bin/sh -c curl -OL https://github.com/google/protobuf/releases/download/v3.5.1/protoc-3.5.1-linux-x86_64.zip" shape="box"];
  "sha256:13ba005f9b1ed26666ae55fb3c7202e8ddc0e2d39c8076f727cefceb79bf0f96" [label="/bin/sh -c unzip protoc-3.5.1-linux-x86_64.zip -d protoc3" shape="box"];
  "sha256:dbf3c9c8ba45e2d3d17880cd8d73935f613722c9fcbee9faae59567a1142c1f2" [label="/bin/sh -c sudo mv protoc3/bin/* /usr/local/bin/" shape="box"];
  "sha256:533051ee0469caa890c2897d2f415ce058b1fbac4ec2bfaa075e84ccec957d2e" [label="/bin/sh -c sudo mv protoc3/include/* /usr/local/include/" shape="box"];
  "sha256:16dfb35de95c58403218af0ff83ff4b2d57d179f29a213a84953fafb48f17d58" [label="sha256:16dfb35de95c58403218af0ff83ff4b2d57d179f29a213a84953fafb48f17d58" shape="plaintext"];
  "sha256:765c2b9b5212d3e2daeb55a3fc8cb3cab86a5c425e0455abbf903f4abf14f21a" -> "sha256:06472510b1b82e184058559fc7719d8d2a56bb9eb6a838cdbcc6081c6be00e94" [label=""];
  "sha256:06472510b1b82e184058559fc7719d8d2a56bb9eb6a838cdbcc6081c6be00e94" -> "sha256:c26a09d67e2dd4a2e6692a955c27fe133cf22c4833f434c48f204836564b925d" [label=""];
  "sha256:c26a09d67e2dd4a2e6692a955c27fe133cf22c4833f434c48f204836564b925d" -> "sha256:2bcba255e18033aba759155f348ed143711824056d052ad1e0203d2e1f151d31" [label=""];
  "sha256:2bcba255e18033aba759155f348ed143711824056d052ad1e0203d2e1f151d31" -> "sha256:55d38922aab36d4f7a31630b81fbea5bda910bca4e9cb14781657896b8778dfb" [label=""];
  "sha256:55d38922aab36d4f7a31630b81fbea5bda910bca4e9cb14781657896b8778dfb" -> "sha256:5670ff34744f5cd015335a8eaec05470444addf2d41d75d867152118f4ba435a" [label=""];
  "sha256:5670ff34744f5cd015335a8eaec05470444addf2d41d75d867152118f4ba435a" -> "sha256:13ba005f9b1ed26666ae55fb3c7202e8ddc0e2d39c8076f727cefceb79bf0f96" [label=""];
  "sha256:13ba005f9b1ed26666ae55fb3c7202e8ddc0e2d39c8076f727cefceb79bf0f96" -> "sha256:dbf3c9c8ba45e2d3d17880cd8d73935f613722c9fcbee9faae59567a1142c1f2" [label=""];
  "sha256:dbf3c9c8ba45e2d3d17880cd8d73935f613722c9fcbee9faae59567a1142c1f2" -> "sha256:533051ee0469caa890c2897d2f415ce058b1fbac4ec2bfaa075e84ccec957d2e" [label=""];
  "sha256:533051ee0469caa890c2897d2f415ce058b1fbac4ec2bfaa075e84ccec957d2e" -> "sha256:16dfb35de95c58403218af0ff83ff4b2d57d179f29a213a84953fafb48f17d58" [label=""];
}

