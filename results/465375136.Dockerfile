[app/sources/465375136.Dockerfile]
digraph {
  "sha256:4640acf6de4ed4f8779c2331e71000c7fdb6f6428f03e4dda5d15781c0c5df07" [label="docker-image://docker.io/adamhrv/cuda8-cudnn6-cv3.4.0:latest" shape="ellipse"];
  "sha256:e45ac04a869ef8d4750e932ed1d8917c4c3001d579ad73d2e074bd1b09e7300c" [label="mkdir{path=/opt}" shape="note"];
  "sha256:a4747752c89e6624aba3aeace0ce91fb5b3c8ebf512f2fa963f756b7863152d4" [label="/bin/sh -c git clone https://github.com/pjreddie/darknet darknet_pjreddie &&   cd darknet_pjreddie &&   sed -i 's/GPU=0/GPU=1/g' Makefile &&   sed -i 's/CUDNN=0/CUDNN=1/g' Makefile &&   sed -i 's/OPENCV=0/OPENCV=1/g' Makefile &&   make" shape="box"];
  "sha256:eaeacbcb5c02ccb8dc0063144b7fbc2b02ed3f4c65c0842d4b77b8ae5979ded3" [label="mkdir{path=/opt}" shape="note"];
  "sha256:15056af930927a214c2566796515aed77c6bbfb90638fa3c39ba81c3e6a5bdde" [label="/bin/sh -c git clone --recursive https://github.com/rayhou0710/pyyolo.git &&   cd pyyolo &&   make &&   rm -rf build &&   python3 setup_gpu.py build &&   python3 setup_gpu.py install" shape="box"];
  "sha256:32919ea968a5817e37382f0effec6bbed53793e7e24d6714464297e1a5fc5e28" [label="sha256:32919ea968a5817e37382f0effec6bbed53793e7e24d6714464297e1a5fc5e28" shape="plaintext"];
  "sha256:4640acf6de4ed4f8779c2331e71000c7fdb6f6428f03e4dda5d15781c0c5df07" -> "sha256:e45ac04a869ef8d4750e932ed1d8917c4c3001d579ad73d2e074bd1b09e7300c" [label=""];
  "sha256:e45ac04a869ef8d4750e932ed1d8917c4c3001d579ad73d2e074bd1b09e7300c" -> "sha256:a4747752c89e6624aba3aeace0ce91fb5b3c8ebf512f2fa963f756b7863152d4" [label=""];
  "sha256:a4747752c89e6624aba3aeace0ce91fb5b3c8ebf512f2fa963f756b7863152d4" -> "sha256:eaeacbcb5c02ccb8dc0063144b7fbc2b02ed3f4c65c0842d4b77b8ae5979ded3" [label=""];
  "sha256:eaeacbcb5c02ccb8dc0063144b7fbc2b02ed3f4c65c0842d4b77b8ae5979ded3" -> "sha256:15056af930927a214c2566796515aed77c6bbfb90638fa3c39ba81c3e6a5bdde" [label=""];
  "sha256:15056af930927a214c2566796515aed77c6bbfb90638fa3c39ba81c3e6a5bdde" -> "sha256:32919ea968a5817e37382f0effec6bbed53793e7e24d6714464297e1a5fc5e28" [label=""];
}

