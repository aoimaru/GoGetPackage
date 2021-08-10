[app/sources/196071836.Dockerfile]
digraph {
  "sha256:119211a790fef3fedd8682a238c4c79b0430bac4e74413342424c918a38853c3" [label="docker-image://docker.io/kaixhin/cuda-caffe-deps:7.5" shape="ellipse"];
  "sha256:6e2c03231db716a3d9e9d1fd93c4e10b573a554227282f86855aee64bdb0c6a1" [label="/bin/sh -c cd /root/caffe && mkdir build && cd build && cmake .. && make -j\"$(nproc)\" all && make install" shape="box"];
  "sha256:e94da280733e6a81016f8bbe7d3010dad7dff68765574ec9a5e8fb60fae1f2a7" [label="mkdir{path=/root/caffe}" shape="note"];
  "sha256:34c42df6140cf9016f615a689b34c5bbe4b01b4126257cdca6f15da6f3b61d51" [label="/bin/sh -c apt-get update && \tapt-get install -y git python-numpy cython python-pip python-skimage \tpython-protobuf python-opencv python-pandas python-yaml python-sklearn \toctave python-ipdb" shape="box"];
  "sha256:c9b5fdde4341d4471897c54d8448134ffd3a8affc8e70a60430dd04b27bee658" [label="/bin/sh -c pip install easydict && pip install \"ipython[notebook]\"" shape="box"];
  "sha256:cc64a19c792ac2c0249d3e94d0c8d18362e123e347f81ff68cb509ee4556bc12" [label="/bin/sh -c ln -s /usr/bin/octave /usr/bin/matlab" shape="box"];
  "sha256:b8a6157d40bf97ce81c72b07c270d9b302923980d1bffa45342d9a9175f7fade" [label="/bin/sh -c cd /opt && \tgit clone --recursive https://github.com/rbgirshick/fast-rcnn.git" shape="box"];
  "sha256:d85450a183bc0c7b1b9e8be01c71654514dc3ee161647076b58c3d366010f831" [label="local://context" shape="ellipse"];
  "sha256:e07da5d0e583aa2e880860a0fb1403a33e95655eeed06fd26ab5b718e6983547" [label="copy{src=/Makefile.config, dest=/opt/fast-rcnn/caffe-fast-rcnn/Makefile.config}" shape="note"];
  "sha256:323b010c3da6729cbf9af56cde67e6f4196f1711aceb32eed7a2b422985105c4" [label="/bin/sh -c cd /opt/fast-rcnn/lib && make -j4 && \tcd ../caffe-fast-rcnn && make -j4 && make -j4 pycaffe" shape="box"];
  "sha256:516a0ddd363771bd56a92b4ec85d5728a17de66dc4fee27628b850cc316485a4" [label="sha256:516a0ddd363771bd56a92b4ec85d5728a17de66dc4fee27628b850cc316485a4" shape="plaintext"];
  "sha256:119211a790fef3fedd8682a238c4c79b0430bac4e74413342424c918a38853c3" -> "sha256:6e2c03231db716a3d9e9d1fd93c4e10b573a554227282f86855aee64bdb0c6a1" [label=""];
  "sha256:6e2c03231db716a3d9e9d1fd93c4e10b573a554227282f86855aee64bdb0c6a1" -> "sha256:e94da280733e6a81016f8bbe7d3010dad7dff68765574ec9a5e8fb60fae1f2a7" [label=""];
  "sha256:e94da280733e6a81016f8bbe7d3010dad7dff68765574ec9a5e8fb60fae1f2a7" -> "sha256:34c42df6140cf9016f615a689b34c5bbe4b01b4126257cdca6f15da6f3b61d51" [label=""];
  "sha256:34c42df6140cf9016f615a689b34c5bbe4b01b4126257cdca6f15da6f3b61d51" -> "sha256:c9b5fdde4341d4471897c54d8448134ffd3a8affc8e70a60430dd04b27bee658" [label=""];
  "sha256:c9b5fdde4341d4471897c54d8448134ffd3a8affc8e70a60430dd04b27bee658" -> "sha256:cc64a19c792ac2c0249d3e94d0c8d18362e123e347f81ff68cb509ee4556bc12" [label=""];
  "sha256:cc64a19c792ac2c0249d3e94d0c8d18362e123e347f81ff68cb509ee4556bc12" -> "sha256:b8a6157d40bf97ce81c72b07c270d9b302923980d1bffa45342d9a9175f7fade" [label=""];
  "sha256:b8a6157d40bf97ce81c72b07c270d9b302923980d1bffa45342d9a9175f7fade" -> "sha256:e07da5d0e583aa2e880860a0fb1403a33e95655eeed06fd26ab5b718e6983547" [label=""];
  "sha256:d85450a183bc0c7b1b9e8be01c71654514dc3ee161647076b58c3d366010f831" -> "sha256:e07da5d0e583aa2e880860a0fb1403a33e95655eeed06fd26ab5b718e6983547" [label=""];
  "sha256:e07da5d0e583aa2e880860a0fb1403a33e95655eeed06fd26ab5b718e6983547" -> "sha256:323b010c3da6729cbf9af56cde67e6f4196f1711aceb32eed7a2b422985105c4" [label=""];
  "sha256:323b010c3da6729cbf9af56cde67e6f4196f1711aceb32eed7a2b422985105c4" -> "sha256:516a0ddd363771bd56a92b4ec85d5728a17de66dc4fee27628b850cc316485a4" [label=""];
}

