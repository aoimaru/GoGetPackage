[app/sources/321451024.Dockerfile]
digraph {
  "sha256:bdfefdced47fe4246c5a5924f6b7988950ea5cc0a5c083a5d37b5ee7e4cab4aa" [label="local://context" shape="ellipse"];
  "sha256:6fc8c36586e38bbec514f40c07c3330b35c8f9d13820ac975d3340766d6c8381" [label="docker-image://docker.io/tensorflow/tensorflow:latest-gpu-py3" shape="ellipse"];
  "sha256:229b854d137542fcb613c5ea6979c1a7a2e72ae0252bde536ef0e12aed142cbb" [label="/bin/sh -c apt-get update -qq -y  && apt-get install -y libsm6 libxrender1 libxext-dev python3-tk && apt-get clean  && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:e6f94a2b93f691d165c3236c086cc16ceb79825531c16d461697880d0bbaeaa9" [label="copy{src=/requirements.txt, dest=/opt/}" shape="note"];
  "sha256:c5fd230b95febb59695c55c2b9826853e1c690571ccc50aab8c9bae6365ff519" [label="/bin/sh -c pip3 install cmake" shape="box"];
  "sha256:96010cc2f5337d1a78fccb1bdbafe33f05a8cb53bb27a07b9ba5051546452f8f" [label="/bin/sh -c pip3 install dlib --install-option=--yes --install-option=USE_AVX_INSTRUCTIONS" shape="box"];
  "sha256:12d69fdfa89be88e674906119f45eb79e332719a92d1a383fbae30b25bdc98b5" [label="/bin/sh -c pip3 --no-cache-dir install -r /opt/requirements.txt && rm /opt/requirements.txt" shape="box"];
  "sha256:3db12c1303df42e1eece5e5b88e136c6dbdb2fc0658f800c736ce1a4445bc544" [label="/bin/sh -c cd /usr/local/cuda/lib64  && mv stubs/libcuda.so ./  && ln -s libcuda.so libcuda.so.1  && ldconfig" shape="box"];
  "sha256:6c54b240b32a1a611fb281d6c003a86c20c51b924538e3da6678906b6241ba54" [label="mkdir{path=/notebooks}" shape="note"];
  "sha256:4a2f7bf2762e14d6b07eeefeeee1b72c3dacae62d6a3e0257c2d6c6cf91f396d" [label="sha256:4a2f7bf2762e14d6b07eeefeeee1b72c3dacae62d6a3e0257c2d6c6cf91f396d" shape="plaintext"];
  "sha256:6fc8c36586e38bbec514f40c07c3330b35c8f9d13820ac975d3340766d6c8381" -> "sha256:229b854d137542fcb613c5ea6979c1a7a2e72ae0252bde536ef0e12aed142cbb" [label=""];
  "sha256:229b854d137542fcb613c5ea6979c1a7a2e72ae0252bde536ef0e12aed142cbb" -> "sha256:e6f94a2b93f691d165c3236c086cc16ceb79825531c16d461697880d0bbaeaa9" [label=""];
  "sha256:bdfefdced47fe4246c5a5924f6b7988950ea5cc0a5c083a5d37b5ee7e4cab4aa" -> "sha256:e6f94a2b93f691d165c3236c086cc16ceb79825531c16d461697880d0bbaeaa9" [label=""];
  "sha256:e6f94a2b93f691d165c3236c086cc16ceb79825531c16d461697880d0bbaeaa9" -> "sha256:c5fd230b95febb59695c55c2b9826853e1c690571ccc50aab8c9bae6365ff519" [label=""];
  "sha256:c5fd230b95febb59695c55c2b9826853e1c690571ccc50aab8c9bae6365ff519" -> "sha256:96010cc2f5337d1a78fccb1bdbafe33f05a8cb53bb27a07b9ba5051546452f8f" [label=""];
  "sha256:96010cc2f5337d1a78fccb1bdbafe33f05a8cb53bb27a07b9ba5051546452f8f" -> "sha256:12d69fdfa89be88e674906119f45eb79e332719a92d1a383fbae30b25bdc98b5" [label=""];
  "sha256:12d69fdfa89be88e674906119f45eb79e332719a92d1a383fbae30b25bdc98b5" -> "sha256:3db12c1303df42e1eece5e5b88e136c6dbdb2fc0658f800c736ce1a4445bc544" [label=""];
  "sha256:3db12c1303df42e1eece5e5b88e136c6dbdb2fc0658f800c736ce1a4445bc544" -> "sha256:6c54b240b32a1a611fb281d6c003a86c20c51b924538e3da6678906b6241ba54" [label=""];
  "sha256:6c54b240b32a1a611fb281d6c003a86c20c51b924538e3da6678906b6241ba54" -> "sha256:4a2f7bf2762e14d6b07eeefeeee1b72c3dacae62d6a3e0257c2d6c6cf91f396d" [label=""];
}

