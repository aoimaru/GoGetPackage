[app/sources/337848894.Dockerfile]
digraph {
  "sha256:50d4a1eb11fad183f0065c15306a15e443c6bc670f0d3d04c0b140d4c93cf524" [label="local://context" shape="ellipse"];
  "sha256:0c4effced13f254e35fb54429c76908d52876de6ddd9acad8b46715818e6057e" [label="docker-image://docker.io/tensorflow/tensorflow:1.8.0-py3" shape="ellipse"];
  "sha256:6e0ae542bef4c95a600e37179ecb2abcd4bed7902e77611e438978b6e42e5420" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:a6daf2ad54af2aa88d1eec01407c95e9b22ea5684d7ba73ac7b78163a64a4806" [label="/bin/sh -c apt-get install -y         build-essential         cmake         git         wget         unzip         yasm         pkg-config         libswscale-dev         libtbb2         libtbb-dev         libjpeg-dev         libpng-dev         libtiff-dev         libavformat-dev         libhdf5-dev         libpq-dev" shape="box"];
  "sha256:5d7ae9cbbf81b255fd5ef9fdc25a7bd448841826c77061c9144ca96596dfcb54" [label="/bin/sh -c apt-get update && apt-get install -y wget && wget https://github.com/opencv/opencv/archive/3.4.1.zip     && unzip 3.4.1.zip     && mkdir /opencv-3.4.1/cmake_binary     && cd /opencv-3.4.1/cmake_binary     && cmake -DBUILD_TIFF=ON     -DBUILD_opencv_java=OFF     -DWITH_CUDA=OFF     -DENABLE_AVX=ON     -DWITH_OPENGL=ON     -DWITH_OPENCL=ON     -DWITH_IPP=ON     -DWITH_TBB=ON     -DWITH_EIGEN=ON     -DWITH_V4L=ON     -DBUILD_TESTS=OFF     -DBUILD_PERF_TESTS=OFF     -DCMAKE_BUILD_TYPE=RELEASE     -DCMAKE_INSTALL_PREFIX=$(python3 -c \"import sys; print(sys.prefix)\")     -DPYTHON_EXECUTABLE=$(which python3)     -DPYTHON_INCLUDE_DIR=$(python3 -c \"from distutils.sysconfig import get_python_inc; print(get_python_inc())\")     -DPYTHON_PACKAGES_PATH=$(python3 -c \"from distutils.sysconfig import get_python_lib; print(get_python_lib())\") ..     && make install     && rm /3.4.1.zip     && rm -r /opencv-3.4.1" shape="box"];
  "sha256:192227bdf60ffdd8ba0c6babd57f424565d494aaba9810c98ca2f577fce2274c" [label="/bin/sh -c pip3 install --upgrade cython" shape="box"];
  "sha256:9232eb202e2ab5a8efde88d2b380cd2151cfe023cc9d1640f31bee483488917d" [label="/bin/sh -c wget https://s3.amazonaws.com/vision4j/problems/external_models/mask-rcnn-segmentation/requirements.txt -O /tmp/requirements.txt" shape="box"];
  "sha256:9ce5ff97fc16e01a5e8ecfe11d1bdd1e9c7655a079234610cd66f44dbeb57e08" [label="/bin/sh -c pip3 install -r /tmp/requirements.txt" shape="box"];
  "sha256:d28d9f4b2bfe697413a59707954c4e98f2f0eca520d66868166cfb36bbad9874" [label="/bin/sh -c mkdir -p /app" shape="box"];
  "sha256:d385d3270f0c5f2b10db74eb63af54d3c6593ccb88664ef292efa2defa0ad070" [label="/bin/sh -c wget https://github.com/matterport/Mask_RCNN/releases/download/v2.0/mask_rcnn_coco.h5 -O /app/mask_rcnn_coco.h5" shape="box"];
  "sha256:802a4b7509e9415b87d544f2fdf0fe46aefe37a1cd1b6bb50a08149deaa21adb" [label="/bin/sh -c mkdir -p /app/proto" shape="box"];
  "sha256:54e392a2e314046d1045076b9192081fb12355ee306b8993bcd2993478ed1fa8" [label="copy{src=/detection.proto, dest=/app/proto}" shape="note"];
  "sha256:2b52ef7b763acf8292089c4d15b802c781cb176cc578fc1dcfc7d055b272e1b4" [label="copy{src=/*.py, dest=/app/}" shape="note"];
  "sha256:f85d4ffd8c9d9481959d5e714365f59d0c44218cecd161b839ffb0330d01e1e5" [label="/bin/sh -c python -m grpc_tools.protoc -I/app/proto --python_out=/app --grpc_python_out=/app /app/proto/detection.proto" shape="box"];
  "sha256:519bee9284427c725981ce05535d926aa0066abb313013a0c22d290e4d5114fd" [label="sha256:519bee9284427c725981ce05535d926aa0066abb313013a0c22d290e4d5114fd" shape="plaintext"];
  "sha256:0c4effced13f254e35fb54429c76908d52876de6ddd9acad8b46715818e6057e" -> "sha256:6e0ae542bef4c95a600e37179ecb2abcd4bed7902e77611e438978b6e42e5420" [label=""];
  "sha256:6e0ae542bef4c95a600e37179ecb2abcd4bed7902e77611e438978b6e42e5420" -> "sha256:a6daf2ad54af2aa88d1eec01407c95e9b22ea5684d7ba73ac7b78163a64a4806" [label=""];
  "sha256:a6daf2ad54af2aa88d1eec01407c95e9b22ea5684d7ba73ac7b78163a64a4806" -> "sha256:5d7ae9cbbf81b255fd5ef9fdc25a7bd448841826c77061c9144ca96596dfcb54" [label=""];
  "sha256:5d7ae9cbbf81b255fd5ef9fdc25a7bd448841826c77061c9144ca96596dfcb54" -> "sha256:192227bdf60ffdd8ba0c6babd57f424565d494aaba9810c98ca2f577fce2274c" [label=""];
  "sha256:192227bdf60ffdd8ba0c6babd57f424565d494aaba9810c98ca2f577fce2274c" -> "sha256:9232eb202e2ab5a8efde88d2b380cd2151cfe023cc9d1640f31bee483488917d" [label=""];
  "sha256:9232eb202e2ab5a8efde88d2b380cd2151cfe023cc9d1640f31bee483488917d" -> "sha256:9ce5ff97fc16e01a5e8ecfe11d1bdd1e9c7655a079234610cd66f44dbeb57e08" [label=""];
  "sha256:9ce5ff97fc16e01a5e8ecfe11d1bdd1e9c7655a079234610cd66f44dbeb57e08" -> "sha256:d28d9f4b2bfe697413a59707954c4e98f2f0eca520d66868166cfb36bbad9874" [label=""];
  "sha256:d28d9f4b2bfe697413a59707954c4e98f2f0eca520d66868166cfb36bbad9874" -> "sha256:d385d3270f0c5f2b10db74eb63af54d3c6593ccb88664ef292efa2defa0ad070" [label=""];
  "sha256:d385d3270f0c5f2b10db74eb63af54d3c6593ccb88664ef292efa2defa0ad070" -> "sha256:802a4b7509e9415b87d544f2fdf0fe46aefe37a1cd1b6bb50a08149deaa21adb" [label=""];
  "sha256:802a4b7509e9415b87d544f2fdf0fe46aefe37a1cd1b6bb50a08149deaa21adb" -> "sha256:54e392a2e314046d1045076b9192081fb12355ee306b8993bcd2993478ed1fa8" [label=""];
  "sha256:50d4a1eb11fad183f0065c15306a15e443c6bc670f0d3d04c0b140d4c93cf524" -> "sha256:54e392a2e314046d1045076b9192081fb12355ee306b8993bcd2993478ed1fa8" [label=""];
  "sha256:54e392a2e314046d1045076b9192081fb12355ee306b8993bcd2993478ed1fa8" -> "sha256:2b52ef7b763acf8292089c4d15b802c781cb176cc578fc1dcfc7d055b272e1b4" [label=""];
  "sha256:50d4a1eb11fad183f0065c15306a15e443c6bc670f0d3d04c0b140d4c93cf524" -> "sha256:2b52ef7b763acf8292089c4d15b802c781cb176cc578fc1dcfc7d055b272e1b4" [label=""];
  "sha256:2b52ef7b763acf8292089c4d15b802c781cb176cc578fc1dcfc7d055b272e1b4" -> "sha256:f85d4ffd8c9d9481959d5e714365f59d0c44218cecd161b839ffb0330d01e1e5" [label=""];
  "sha256:f85d4ffd8c9d9481959d5e714365f59d0c44218cecd161b839ffb0330d01e1e5" -> "sha256:519bee9284427c725981ce05535d926aa0066abb313013a0c22d290e4d5114fd" [label=""];
}

