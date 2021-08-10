[app/sources/428861185.Dockerfile]
digraph {
  "sha256:2051262e6ff991b66b36bac5ca7c1bc65b88f4fb7b775bf67f5ab484b757a716" [label="local://context" shape="ellipse"];
  "sha256:6fc8c36586e38bbec514f40c07c3330b35c8f9d13820ac975d3340766d6c8381" [label="docker-image://docker.io/tensorflow/tensorflow:latest-gpu-py3" shape="ellipse"];
  "sha256:d596e0d6e9404cecb3e492a0ecd37b0283029b828434d2f0c594545ba780d3af" [label="/bin/sh -c apt-get update &&     apt-get install -y --no-install-recommends libboost-all-dev &&     apt-get install -y software-properties-common     git     wget     cmake     python-zmq     python-dev     libzmq3-dev     libssl-dev     libgflags-dev     libgoogle-glog-dev     liblmdb-dev     libatlas-base-dev     libblas-dev     liblapack-dev     libgflags-dev     libgoogle-glog-dev     liblmdb-dev     libprotobuf-dev     libleveldb-dev     libsnappy-dev     libopencv-dev     libhdf5-serial-dev     protobuf-compiler     python-tk" shape="box"];
  "sha256:77a216f386c37e38c67c504659063960b25cd3135300ec0fc844b29e07d9925f" [label="copy{src=/requirements.txt, dest=/root/}" shape="note"];
  "sha256:8cd2436c39eb08d533f79dd6430ee4640177b2e9abcd6b4d7e92ea7750746fb4" [label="/bin/sh -c pip install -r /root/requirements.txt" shape="box"];
  "sha256:c02a0495dc61d8ecc45b5914eef70bd0df7d29d869b7a8ba28e6ca8e9cf7e0c8" [label="/bin/sh -c rm /root/requirements.txt" shape="box"];
  "sha256:6a973183ea831117a30a9645d3a962c074db6a4b19ef150aaaddb4dc85af5deb" [label="mkdir{path=/root}" shape="note"];
  "sha256:a7ba2634f430e8dac58ee7a258f3367778e9c89e5e21d7945ee7372f428fa1ee" [label="sha256:a7ba2634f430e8dac58ee7a258f3367778e9c89e5e21d7945ee7372f428fa1ee" shape="plaintext"];
  "sha256:6fc8c36586e38bbec514f40c07c3330b35c8f9d13820ac975d3340766d6c8381" -> "sha256:d596e0d6e9404cecb3e492a0ecd37b0283029b828434d2f0c594545ba780d3af" [label=""];
  "sha256:d596e0d6e9404cecb3e492a0ecd37b0283029b828434d2f0c594545ba780d3af" -> "sha256:77a216f386c37e38c67c504659063960b25cd3135300ec0fc844b29e07d9925f" [label=""];
  "sha256:2051262e6ff991b66b36bac5ca7c1bc65b88f4fb7b775bf67f5ab484b757a716" -> "sha256:77a216f386c37e38c67c504659063960b25cd3135300ec0fc844b29e07d9925f" [label=""];
  "sha256:77a216f386c37e38c67c504659063960b25cd3135300ec0fc844b29e07d9925f" -> "sha256:8cd2436c39eb08d533f79dd6430ee4640177b2e9abcd6b4d7e92ea7750746fb4" [label=""];
  "sha256:8cd2436c39eb08d533f79dd6430ee4640177b2e9abcd6b4d7e92ea7750746fb4" -> "sha256:c02a0495dc61d8ecc45b5914eef70bd0df7d29d869b7a8ba28e6ca8e9cf7e0c8" [label=""];
  "sha256:c02a0495dc61d8ecc45b5914eef70bd0df7d29d869b7a8ba28e6ca8e9cf7e0c8" -> "sha256:6a973183ea831117a30a9645d3a962c074db6a4b19ef150aaaddb4dc85af5deb" [label=""];
  "sha256:6a973183ea831117a30a9645d3a962c074db6a4b19ef150aaaddb4dc85af5deb" -> "sha256:a7ba2634f430e8dac58ee7a258f3367778e9c89e5e21d7945ee7372f428fa1ee" [label=""];
}

