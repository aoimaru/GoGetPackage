[app/sources/255126737.Dockerfile]
digraph {
  "sha256:79fe0cfd109e2e329535f6967f863177b7662e8ef5fec84ac56182d6e1fd53ac" [label="docker-image://docker.io/library/redis_cpu:latest" shape="ellipse"];
  "sha256:759f41354b946159871461dbd6207978699330a9f70466ee41faa349d5e1497c" [label="/bin/sh -c apt-get update && apt-get install -y         libopenblas-dev         llvm-6.0         llvm-6.0-dev         llvm-6.0-doc         llvm-6.0-examples         llvm-6.0-runtime         clang-6.0         clang-6.0-doc         libclang-common-6.0-dev         libclang-6.0-dev         libclang1-6.0         libclang1-6.0-dbg         libllvm6.0         libllvm6.0-dbg         lldb-6.0         clang-format-6.0         python-clang-6.0         libfuzzer-4.0-dev         opencl-headers         beignet beignet-dev         &&     apt-get clean &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:db8035fd6d9949f65a868d326fad300874ad0691bff50eda0ff8e33f9b72a2e1" [label="/bin/sh -c cd \"$LIB_DIR\" && git clone --recursive https://github.com/dmlc/tvm" shape="box"];
  "sha256:cf2ebc4cc31c50da43f4af8f6524808af457182b10a19167f3312f7e6ffdc883" [label="/bin/sh -c cd  \"$TVM_DIR\" &&     mkdir build && cd build &&     cp ../cmake/config.cmake config.cmake &&     cmake .. -DUSE_CUDA=OFF -DUSE_LLVM=ON -DUSE_BLAS=openblas -DUSE_OPENCL=ON &&     make -j\"$(nproc)\"" shape="box"];
  "sha256:bca740d371283c7829f99cd79f31545b1b11327161422cc80056920e9e601184" [label="sha256:bca740d371283c7829f99cd79f31545b1b11327161422cc80056920e9e601184" shape="plaintext"];
  "sha256:79fe0cfd109e2e329535f6967f863177b7662e8ef5fec84ac56182d6e1fd53ac" -> "sha256:759f41354b946159871461dbd6207978699330a9f70466ee41faa349d5e1497c" [label=""];
  "sha256:759f41354b946159871461dbd6207978699330a9f70466ee41faa349d5e1497c" -> "sha256:db8035fd6d9949f65a868d326fad300874ad0691bff50eda0ff8e33f9b72a2e1" [label=""];
  "sha256:db8035fd6d9949f65a868d326fad300874ad0691bff50eda0ff8e33f9b72a2e1" -> "sha256:cf2ebc4cc31c50da43f4af8f6524808af457182b10a19167f3312f7e6ffdc883" [label=""];
  "sha256:cf2ebc4cc31c50da43f4af8f6524808af457182b10a19167f3312f7e6ffdc883" -> "sha256:bca740d371283c7829f99cd79f31545b1b11327161422cc80056920e9e601184" [label=""];
}

