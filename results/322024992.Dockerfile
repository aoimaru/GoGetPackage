[app/sources/322024992.Dockerfile]
digraph {
  "sha256:83e3ef55e5e5d850582b62a97a025f67b17d06a189657acc4bdb44d2868e4362" [label="docker-image://docker.io/microsoft/azureiotedge-seeed-image-classifier-python:1.0-deps-arm32v7" shape="ellipse"];
  "sha256:d1157cb697480b346c8ff0d4629d959d3d5207aef30153fc454e484c588921c9" [label="mkdir{path=/app}" shape="note"];
  "sha256:63b938c72038f020af5753461fb7a9beec0fe25da2eacfe32a9df1702ada4802" [label="/bin/sh -c mkdir /model     && apt-get update && apt-get install -y wget     && wget https://storage.googleapis.com/mobilenet_v2/checkpoints/mobilenet_v2_1.0_224.tgz     && wget https://raw.githubusercontent.com/tensorflow/models/master/research/inception/inception/data/imagenet_lsvrc_2015_synsets.txt -O /model/imagenet_lsvrc_2015_synsets.txt     && wget https://raw.githubusercontent.com/tensorflow/models/master/research/inception/inception/data/imagenet_metadata.txt -O /model/imagenet_metadata.txt     && tar -xvf mobilenet_v2_1.0_224.tgz -C /model ./mobilenet_v2_1.0_224_frozen.pb     && rm mobilenet_v2_1.0_224.tgz" shape="box"];
  "sha256:b9142a4e47e3495bf2382cc44a4c3aa4c56c4cbd6c1ad6185f8bec514a8ddefe" [label="local://context" shape="ellipse"];
  "sha256:b7d395dc2ca8e9ddfe76278bbc8a98a5f07d9eb3b4cf2666424bdd5d8872d846" [label="copy{src=/*.py, dest=/app/}" shape="note"];
  "sha256:56bd3baf7ee4eab25483eacb71560656df4524f5021199e3fccfa41e9c92efc6" [label="sha256:56bd3baf7ee4eab25483eacb71560656df4524f5021199e3fccfa41e9c92efc6" shape="plaintext"];
  "sha256:83e3ef55e5e5d850582b62a97a025f67b17d06a189657acc4bdb44d2868e4362" -> "sha256:d1157cb697480b346c8ff0d4629d959d3d5207aef30153fc454e484c588921c9" [label=""];
  "sha256:d1157cb697480b346c8ff0d4629d959d3d5207aef30153fc454e484c588921c9" -> "sha256:63b938c72038f020af5753461fb7a9beec0fe25da2eacfe32a9df1702ada4802" [label=""];
  "sha256:63b938c72038f020af5753461fb7a9beec0fe25da2eacfe32a9df1702ada4802" -> "sha256:b7d395dc2ca8e9ddfe76278bbc8a98a5f07d9eb3b4cf2666424bdd5d8872d846" [label=""];
  "sha256:b9142a4e47e3495bf2382cc44a4c3aa4c56c4cbd6c1ad6185f8bec514a8ddefe" -> "sha256:b7d395dc2ca8e9ddfe76278bbc8a98a5f07d9eb3b4cf2666424bdd5d8872d846" [label=""];
  "sha256:b7d395dc2ca8e9ddfe76278bbc8a98a5f07d9eb3b4cf2666424bdd5d8872d846" -> "sha256:56bd3baf7ee4eab25483eacb71560656df4524f5021199e3fccfa41e9c92efc6" [label=""];
}

