[app/sources/149868457.Dockerfile]
digraph {
  "sha256:7c9f2d8952bfd78fc6b67343a80735183ebae5f5821fc69800becba62b066875" [label="docker-image://docker.io/library/centos:latest" shape="ellipse"];
  "sha256:01a04e524529fb3c489e89430b9b2998eb06e5e8391cac4dfbfeace9a423030e" [label="mkdir{path=/root}" shape="note"];
  "sha256:4f7441ffa40fa6090872cdb1ee5260330c95b3ab2f9f79235ada172d1c7fe1a0" [label="/bin/sh -c buildDeps=\"gcc-c++ cmake automake autoconf libtool bzip2-devel wget tar unzip make zlib-devel\"     && yum install -y $buildDeps     && mkdir -p /root/rocketmq-cpp/     && wget -O rocketmq.tar.gz 'https://github.com/apache/rocketmq-client-cpp/archive/1.2.2.tar.gz'     && tar xvf rocketmq.tar.gz -C /root/rocketmq-cpp/ --strip-components=1     && cd /root/rocketmq-cpp/     && sh build.sh     && yum clean all     && mkdir -p /usr/include/rocketmq     && cp /root/rocketmq-cpp/bin/librocketmq.* /usr/lib64/ -rf     && cp /root/rocketmq-cpp/include/* /usr/include/rocketmq/ -rf     && cp /root/rocketmq-cpp/bin/include/* /usr/include/ -rf     && cp /root/rocketmq-cpp/bin/lib/* /usr/lib64/ -rf     && rm -rf /root/rocketmq*" shape="box"];
  "sha256:f7b1df2d0f9486ee6844f5e7f74fa059e22c2a7664c22def9b9781a24f94b9ee" [label="sha256:f7b1df2d0f9486ee6844f5e7f74fa059e22c2a7664c22def9b9781a24f94b9ee" shape="plaintext"];
  "sha256:7c9f2d8952bfd78fc6b67343a80735183ebae5f5821fc69800becba62b066875" -> "sha256:01a04e524529fb3c489e89430b9b2998eb06e5e8391cac4dfbfeace9a423030e" [label=""];
  "sha256:01a04e524529fb3c489e89430b9b2998eb06e5e8391cac4dfbfeace9a423030e" -> "sha256:4f7441ffa40fa6090872cdb1ee5260330c95b3ab2f9f79235ada172d1c7fe1a0" [label=""];
  "sha256:4f7441ffa40fa6090872cdb1ee5260330c95b3ab2f9f79235ada172d1c7fe1a0" -> "sha256:f7b1df2d0f9486ee6844f5e7f74fa059e22c2a7664c22def9b9781a24f94b9ee" [label=""];
}

