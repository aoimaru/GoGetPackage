[app/sources/330259769.Dockerfile]
digraph {
  "sha256:94212706f551483147afd30a8640aa06dbb08699fdf855f3373c6b8ec8b0f2e3" [label="docker-image://123124136734.dkr.ecr.us-east-1.amazonaws.com/amzn-linux:2012.3" shape="ellipse"];
  "sha256:d3f75baf946ba6d161d4da27e7d5653c801c897c2602aaec2a48f2b76892c1da" [label="/bin/sh -c set -ex     && rpm --rebuilddb     && yum update -y     && yum install -y tar gcc gcc-c++ git libffi-devel zlib-devel" shape="box"];
  "sha256:280a6215b9121e5fbff28700beda5494445268e6f6255e1f62c79cd784eb3425" [label="/bin/sh -c set -ex     && cd /tmp     && curl -LO https://github.com/Kitware/CMake/releases/download/v${CMAKE_VERSION}/cmake-${CMAKE_VERSION}-Linux-x86_64.tar.gz     && tar xzf cmake-${CMAKE_VERSION}-Linux-x86_64.tar.gz -C /usr --strip-components 1     && cmake --version" shape="box"];
  "sha256:3e3a19e0616b06fa0d9ef010118609afad1263e14c782b0db21f9b87974c545a" [label="/bin/sh -c set -ex     && mkdir -p /tmp/build     && cd /tmp/build     && git clone https://github.com/openssl/openssl.git     && pushd openssl     && git checkout OpenSSL_1_0_2-stable     && ./config -fPIC         no-md2 no-rc5 no-rfc3779 no-sctp no-ssl-trace no-zlib no-hw no-mdc2         no-seed no-idea no-camellia no-bf no-dsa no-ssl3 no-capieng         no-unit-test no-tests         -DSSL_FORBID_ENULL -DOPENSSL_NO_DTLS1 -DOPENSSL_NO_HEARTBEATS         --prefix=${openssl_dir} --openssldir=${openssl_dir}     && make -j depend     && make -j     && make install_sw     && LD_LIBRARY_PATH=$LD_LIBRARY_PATH:${openssl_dir}/lib ${openssl_dir}/bin/openssl version" shape="box"];
  "sha256:598f9eb7ee3f54bcde63e9dfb193736bc7472d9b654ca9b83c7efbf2e3d49302" [label="/bin/sh -c set -ex     && cd /tmp     && curl -LO https://www.python.org/ftp/python/${PYTHON_VERSION}/Python-${PYTHON_VERSION}.tgz     && tar xzf Python-3.7.3.tgz     && cd Python-${PYTHON_VERSION}     && ./configure --with-openssl=${openssl_dir}     && make -sj     && make install" shape="box"];
  "sha256:326eb80f5b6540c93980513eec4801e4dff83ce31aeccb1e6325dc4d5fe753fb" [label="/bin/sh -c set -ex     && yum clean all     && rm -rf /tmp/*" shape="box"];
  "sha256:72f608609ad3828ad3725fc93f60f1ed329d2f4ef6f64908ae4e88f5cf8a17a0" [label="sha256:72f608609ad3828ad3725fc93f60f1ed329d2f4ef6f64908ae4e88f5cf8a17a0" shape="plaintext"];
  "sha256:94212706f551483147afd30a8640aa06dbb08699fdf855f3373c6b8ec8b0f2e3" -> "sha256:d3f75baf946ba6d161d4da27e7d5653c801c897c2602aaec2a48f2b76892c1da" [label=""];
  "sha256:d3f75baf946ba6d161d4da27e7d5653c801c897c2602aaec2a48f2b76892c1da" -> "sha256:280a6215b9121e5fbff28700beda5494445268e6f6255e1f62c79cd784eb3425" [label=""];
  "sha256:280a6215b9121e5fbff28700beda5494445268e6f6255e1f62c79cd784eb3425" -> "sha256:3e3a19e0616b06fa0d9ef010118609afad1263e14c782b0db21f9b87974c545a" [label=""];
  "sha256:3e3a19e0616b06fa0d9ef010118609afad1263e14c782b0db21f9b87974c545a" -> "sha256:598f9eb7ee3f54bcde63e9dfb193736bc7472d9b654ca9b83c7efbf2e3d49302" [label=""];
  "sha256:598f9eb7ee3f54bcde63e9dfb193736bc7472d9b654ca9b83c7efbf2e3d49302" -> "sha256:326eb80f5b6540c93980513eec4801e4dff83ce31aeccb1e6325dc4d5fe753fb" [label=""];
  "sha256:326eb80f5b6540c93980513eec4801e4dff83ce31aeccb1e6325dc4d5fe753fb" -> "sha256:72f608609ad3828ad3725fc93f60f1ed329d2f4ef6f64908ae4e88f5cf8a17a0" [label=""];
}

