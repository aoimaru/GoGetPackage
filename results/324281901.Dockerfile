[app/sources/324281901.Dockerfile]
digraph {
  "sha256:6fc8c36586e38bbec514f40c07c3330b35c8f9d13820ac975d3340766d6c8381" [label="docker-image://docker.io/tensorflow/tensorflow:latest-gpu-py3" shape="ellipse"];
  "sha256:9019588195dcd729cc3bdaa144bd64a506dab0066c9d09a9c7e7dae062919aa4" [label="mkdir{path=/root}" shape="note"];
  "sha256:9e55519e6e4a92b0a2272ddf64b1a6d2c941fdb0745522eeba47a893cc532465" [label="/bin/sh -c curl -OL https://github.com/google/protobuf/releases/download/v3.2.0/protoc-3.2.0-linux-x86_64.zip" shape="box"];
  "sha256:bef8be3642d28156526b8737855e68fe6966a0ec788e7eae860c8b9fec44ac8e" [label="/bin/sh -c unzip protoc-3.2.0-linux-x86_64.zip -d protoc3" shape="box"];
  "sha256:97c233cebcb96731778be04ac68afc1a3b126fb1943e417fc40b1d1dc75bb33a" [label="/bin/sh -c mv protoc3/bin/* /usr/local/bin/" shape="box"];
  "sha256:31c5a71bf7580959dd6dccafea61961b21eb8eef06cec60a51ab7a3f44c56d85" [label="/bin/sh -c mv protoc3/include/* /usr/local/include/" shape="box"];
  "sha256:bb6ea18fb8c7bdb2f6f6a25aaa47632b2d8b7c6fe080192e39964be91f542908" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:68db0d8c7e5dfdf646dbdbacc07148dab453f069c25a84707de3f4d0daf7523c" [label="/bin/sh -c apt install -y git python3-tk libsm6 libxext6" shape="box"];
  "sha256:e0ccb55132931c7bc1fb1e90edafc8c7e0f32600e6c2c3278c43ed07c4ccf4a0" [label="/bin/sh -c pip3 install cython pillow opencv-python" shape="box"];
  "sha256:57abed0734f2ec5afa8bf742305b1e3a597674814c82ad13fd05a12458227abf" [label="/bin/sh -c pip3 install git+https://github.com/philferriere/cocoapi.git#subdirectory=PythonAPI" shape="box"];
  "sha256:70db76cfd74e573617020ffa7217e599f14e44c30c2fdd48651e26cf4c154e0d" [label="sha256:70db76cfd74e573617020ffa7217e599f14e44c30c2fdd48651e26cf4c154e0d" shape="plaintext"];
  "sha256:6fc8c36586e38bbec514f40c07c3330b35c8f9d13820ac975d3340766d6c8381" -> "sha256:9019588195dcd729cc3bdaa144bd64a506dab0066c9d09a9c7e7dae062919aa4" [label=""];
  "sha256:9019588195dcd729cc3bdaa144bd64a506dab0066c9d09a9c7e7dae062919aa4" -> "sha256:9e55519e6e4a92b0a2272ddf64b1a6d2c941fdb0745522eeba47a893cc532465" [label=""];
  "sha256:9e55519e6e4a92b0a2272ddf64b1a6d2c941fdb0745522eeba47a893cc532465" -> "sha256:bef8be3642d28156526b8737855e68fe6966a0ec788e7eae860c8b9fec44ac8e" [label=""];
  "sha256:bef8be3642d28156526b8737855e68fe6966a0ec788e7eae860c8b9fec44ac8e" -> "sha256:97c233cebcb96731778be04ac68afc1a3b126fb1943e417fc40b1d1dc75bb33a" [label=""];
  "sha256:97c233cebcb96731778be04ac68afc1a3b126fb1943e417fc40b1d1dc75bb33a" -> "sha256:31c5a71bf7580959dd6dccafea61961b21eb8eef06cec60a51ab7a3f44c56d85" [label=""];
  "sha256:31c5a71bf7580959dd6dccafea61961b21eb8eef06cec60a51ab7a3f44c56d85" -> "sha256:bb6ea18fb8c7bdb2f6f6a25aaa47632b2d8b7c6fe080192e39964be91f542908" [label=""];
  "sha256:bb6ea18fb8c7bdb2f6f6a25aaa47632b2d8b7c6fe080192e39964be91f542908" -> "sha256:68db0d8c7e5dfdf646dbdbacc07148dab453f069c25a84707de3f4d0daf7523c" [label=""];
  "sha256:68db0d8c7e5dfdf646dbdbacc07148dab453f069c25a84707de3f4d0daf7523c" -> "sha256:e0ccb55132931c7bc1fb1e90edafc8c7e0f32600e6c2c3278c43ed07c4ccf4a0" [label=""];
  "sha256:e0ccb55132931c7bc1fb1e90edafc8c7e0f32600e6c2c3278c43ed07c4ccf4a0" -> "sha256:57abed0734f2ec5afa8bf742305b1e3a597674814c82ad13fd05a12458227abf" [label=""];
  "sha256:57abed0734f2ec5afa8bf742305b1e3a597674814c82ad13fd05a12458227abf" -> "sha256:70db76cfd74e573617020ffa7217e599f14e44c30c2fdd48651e26cf4c154e0d" [label=""];
}

