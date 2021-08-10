[app/sources/337848901.Dockerfile]
digraph {
  "sha256:d5c7acbf53475a9f6c3d05b9dd0aab1b4bdac9fda87190f4d1cdd57de8b56853" [label="docker-image://docker.io/tensorflow/tensorflow:1.8.0-gpu-py3" shape="ellipse"];
  "sha256:79d4ac162c87fb265f1bd37209cd0384f53aab364125fe6cbd7f23907a97843b" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:42e1e91d96f876637b7f5cccb577b46aaf33ea9971c8100a8581a5cdf98a085e" [label="/bin/sh -c apt-get install -y         build-essential         cmake         git         wget         unzip         yasm         pkg-config         libswscale-dev         libtbb2         libtbb-dev         libjpeg-dev         libpng-dev         libtiff-dev         libavformat-dev         libhdf5-dev         libpq-dev" shape="box"];
  "sha256:03db22f309cd705c47c4f07685012d7de0bd643ab44381a2f9796173e42790e6" [label="/bin/sh -c apt-get update && apt-get install -y wget && wget https://github.com/opencv/opencv/archive/3.4.1.zip     && unzip 3.4.1.zip     && mkdir /opencv-3.4.1/cmake_binary     && cd /opencv-3.4.1/cmake_binary     && cmake -DBUILD_TIFF=ON     -DBUILD_opencv_java=OFF     -DWITH_CUDA=OFF     -DENABLE_AVX=ON     -DWITH_OPENGL=ON     -DWITH_OPENCL=ON     -DWITH_IPP=ON     -DWITH_TBB=ON     -DWITH_EIGEN=ON     -DWITH_V4L=ON     -DBUILD_TESTS=OFF     -DBUILD_PERF_TESTS=OFF     -DCMAKE_BUILD_TYPE=RELEASE     -DCMAKE_INSTALL_PREFIX=$(python3 -c \"import sys; print(sys.prefix)\")     -DPYTHON_EXECUTABLE=$(which python3)     -DPYTHON_INCLUDE_DIR=$(python3 -c \"from distutils.sysconfig import get_python_inc; print(get_python_inc())\")     -DPYTHON_PACKAGES_PATH=$(python3 -c \"from distutils.sysconfig import get_python_lib; print(get_python_lib())\") ..     && make install     && rm /3.4.1.zip     && rm -r /opencv-3.4.1" shape="box"];
  "sha256:eba5dc75e12c009dc14234aebd6eec9b808c0367c6e41b266e6f4a23982a4056" [label="/bin/sh -c pip3 install --upgrade cython" shape="box"];
  "sha256:99168011aa1f46caf31e8bde8c6937080a88fc83d8a6ad99747529d8521679df" [label="/bin/sh -c wget https://s3.amazonaws.com/vision4j/problems/external_models/mask-rcnn-segmentation/requirements.txt -O /tmp/requirements.txt" shape="box"];
  "sha256:23bc1c09fe0e4fc93178d66b9afa2029d49374ef40ae9123ef18a51ae194b030" [label="/bin/sh -c pip3 install -r /tmp/requirements.txt" shape="box"];
  "sha256:8a0ac56efd629ab9908067dd6f78268d5763f36ae92e6b7063e19c2f597ba125" [label="/bin/sh -c mkdir -p /app" shape="box"];
  "sha256:a9e37062eb5ddd6ffef4f3a9f1909a84c017d275b5c0ad7f4a65dad51c802d28" [label="/bin/sh -c wget https://github.com/matterport/Mask_RCNN/releases/download/v2.0/mask_rcnn_coco.h5 -O /app/mask_rcnn_coco.h5" shape="box"];
  "sha256:9eb25edf1cd187858b718c4515dcc08aa9d74b4b0e2e56be225a52bdab69a315" [label="/bin/sh -c mkdir -p /app/proto" shape="box"];
  "sha256:907f034a501eefb552a63eb85500188903846a3f84915a10dd16bb54a6ba17f2" [label="local://context" shape="ellipse"];
  "sha256:444857ef03864e6f2670805fcd874fc79e57732b42ff80caf95135f67dce8b98" [label="copy{src=/segmentation.proto, dest=/app/proto}" shape="note"];
  "sha256:6f6da6a9bf07f9d519f2f1deb4a81bad7ca1109650a150ab92c60d6f99589a3b" [label="copy{src=/*.py, dest=/app/}" shape="note"];
  "sha256:d635c11fbb03de908df3b4809e7f58b798fac0f481fc88d013f27c963b470914" [label="/bin/sh -c python -m grpc_tools.protoc -I/app/proto --python_out=/app --grpc_python_out=/app /app/proto/segmentation.proto" shape="box"];
  "sha256:0a8e2ee90c96793d56c95bb5ddc33a14310403cdeb302303dce6a06c25d6609c" [label="sha256:0a8e2ee90c96793d56c95bb5ddc33a14310403cdeb302303dce6a06c25d6609c" shape="plaintext"];
  "sha256:d5c7acbf53475a9f6c3d05b9dd0aab1b4bdac9fda87190f4d1cdd57de8b56853" -> "sha256:79d4ac162c87fb265f1bd37209cd0384f53aab364125fe6cbd7f23907a97843b" [label=""];
  "sha256:79d4ac162c87fb265f1bd37209cd0384f53aab364125fe6cbd7f23907a97843b" -> "sha256:42e1e91d96f876637b7f5cccb577b46aaf33ea9971c8100a8581a5cdf98a085e" [label=""];
  "sha256:42e1e91d96f876637b7f5cccb577b46aaf33ea9971c8100a8581a5cdf98a085e" -> "sha256:03db22f309cd705c47c4f07685012d7de0bd643ab44381a2f9796173e42790e6" [label=""];
  "sha256:03db22f309cd705c47c4f07685012d7de0bd643ab44381a2f9796173e42790e6" -> "sha256:eba5dc75e12c009dc14234aebd6eec9b808c0367c6e41b266e6f4a23982a4056" [label=""];
  "sha256:eba5dc75e12c009dc14234aebd6eec9b808c0367c6e41b266e6f4a23982a4056" -> "sha256:99168011aa1f46caf31e8bde8c6937080a88fc83d8a6ad99747529d8521679df" [label=""];
  "sha256:99168011aa1f46caf31e8bde8c6937080a88fc83d8a6ad99747529d8521679df" -> "sha256:23bc1c09fe0e4fc93178d66b9afa2029d49374ef40ae9123ef18a51ae194b030" [label=""];
  "sha256:23bc1c09fe0e4fc93178d66b9afa2029d49374ef40ae9123ef18a51ae194b030" -> "sha256:8a0ac56efd629ab9908067dd6f78268d5763f36ae92e6b7063e19c2f597ba125" [label=""];
  "sha256:8a0ac56efd629ab9908067dd6f78268d5763f36ae92e6b7063e19c2f597ba125" -> "sha256:a9e37062eb5ddd6ffef4f3a9f1909a84c017d275b5c0ad7f4a65dad51c802d28" [label=""];
  "sha256:a9e37062eb5ddd6ffef4f3a9f1909a84c017d275b5c0ad7f4a65dad51c802d28" -> "sha256:9eb25edf1cd187858b718c4515dcc08aa9d74b4b0e2e56be225a52bdab69a315" [label=""];
  "sha256:9eb25edf1cd187858b718c4515dcc08aa9d74b4b0e2e56be225a52bdab69a315" -> "sha256:444857ef03864e6f2670805fcd874fc79e57732b42ff80caf95135f67dce8b98" [label=""];
  "sha256:907f034a501eefb552a63eb85500188903846a3f84915a10dd16bb54a6ba17f2" -> "sha256:444857ef03864e6f2670805fcd874fc79e57732b42ff80caf95135f67dce8b98" [label=""];
  "sha256:444857ef03864e6f2670805fcd874fc79e57732b42ff80caf95135f67dce8b98" -> "sha256:6f6da6a9bf07f9d519f2f1deb4a81bad7ca1109650a150ab92c60d6f99589a3b" [label=""];
  "sha256:907f034a501eefb552a63eb85500188903846a3f84915a10dd16bb54a6ba17f2" -> "sha256:6f6da6a9bf07f9d519f2f1deb4a81bad7ca1109650a150ab92c60d6f99589a3b" [label=""];
  "sha256:6f6da6a9bf07f9d519f2f1deb4a81bad7ca1109650a150ab92c60d6f99589a3b" -> "sha256:d635c11fbb03de908df3b4809e7f58b798fac0f481fc88d013f27c963b470914" [label=""];
  "sha256:d635c11fbb03de908df3b4809e7f58b798fac0f481fc88d013f27c963b470914" -> "sha256:0a8e2ee90c96793d56c95bb5ddc33a14310403cdeb302303dce6a06c25d6609c" [label=""];
}

