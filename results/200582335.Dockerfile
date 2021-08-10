[app/sources/200582335.Dockerfile]
digraph {
  "sha256:84e87c6586bad4ec6410c0689a30c9100cf43c99b88a2c9c172b89ebe2b26544" [label="docker-image://docker.io/nvidia/cuda:10.0-cudnn7-devel-centos7" shape="ellipse"];
  "sha256:32d6bb4e52db0075dbce47481fe946dd2c1956b2273833f106e65a4826434117" [label="docker-image://docker.io/skymindops/jenkins-agent:amd64-centos7" shape="ellipse"];
  "sha256:c71b500125c9c130bb40928d2f45c5087b497689552ab6763ef1d0224615c9ef" [label="copy{src=/opt, dest=/opt}" shape="note"];
  "sha256:a0acbb9ae2f1f5b800831f786c48e5285be7938186d25db7b24739cfcf2a5cbb" [label="/bin/sh -c yum install -y         centos-release-scl-rh         epel-release &&     yum update -y &&     yum install -y         devtoolset-6-toolchain         devtoolset-6-libasan-devel         devtoolset-6-liblsan-devel         devtoolset-7-toolchain         devtoolset-7-libasan-devel         devtoolset-7-liblsan-devel         tar         wget         curl         openssl         ca-certificates         git         rpm-build         java-1.8.0-openjdk-devel         which         gtk2-devel         python-argparse         python-pip         python36         python36-devel &&     yum clean all && rm -rf /var/cache/yum &&     ln -s /opt/maven/bin/mvn /usr/bin/mvn" shape="box"];
  "sha256:12ef07229177e5e5e139ed40e525baeea487b1defcb6235a8a3188c4d74ebe74" [label="/bin/sh -c pip install --no-cache-dir Cython --install-option=\"--no-cython-compile\" &&     pip install --no-cache-dir numpy" shape="box"];
  "sha256:d5a1a8ef284dfd47c276a87ba02959a310d5c0aef8d6f0d019abb4a928f3c76f" [label="/bin/sh -c ln -s /usr/local/cuda/lib64/stubs/libcuda.so /usr/local/cuda/lib64/stubs/libcuda.so.1" shape="box"];
  "sha256:a7c4f93645a125ddb11e4ea132b34d44287f53815d717f535a172965ddc4c23a" [label="/bin/sh -c groupadd jenkins -g 1001 && useradd -d ${HOME} -u 1001 -g 1001 -m jenkins" shape="box"];
  "sha256:a4668372bae8b270776b44343e01148136224ebafab1b85d16e1b725b48822bf" [label="mkdir{path=/home/jenkins}" shape="note"];
  "sha256:a8053a911227565e65aabb086db7e6828e2bb40b7d4ec20dab2c07264cdc188d" [label="/bin/sh -c echo 'source /opt/rh/devtoolset-6/enable' >> \"${HOME}/.bashrc\"" shape="box"];
  "sha256:59c229e779c3f233d2ee78de73b18054a1b87fbf7a3056193b31924040ebb75f" [label="sha256:59c229e779c3f233d2ee78de73b18054a1b87fbf7a3056193b31924040ebb75f" shape="plaintext"];
  "sha256:84e87c6586bad4ec6410c0689a30c9100cf43c99b88a2c9c172b89ebe2b26544" -> "sha256:c71b500125c9c130bb40928d2f45c5087b497689552ab6763ef1d0224615c9ef" [label=""];
  "sha256:32d6bb4e52db0075dbce47481fe946dd2c1956b2273833f106e65a4826434117" -> "sha256:c71b500125c9c130bb40928d2f45c5087b497689552ab6763ef1d0224615c9ef" [label=""];
  "sha256:c71b500125c9c130bb40928d2f45c5087b497689552ab6763ef1d0224615c9ef" -> "sha256:a0acbb9ae2f1f5b800831f786c48e5285be7938186d25db7b24739cfcf2a5cbb" [label=""];
  "sha256:a0acbb9ae2f1f5b800831f786c48e5285be7938186d25db7b24739cfcf2a5cbb" -> "sha256:12ef07229177e5e5e139ed40e525baeea487b1defcb6235a8a3188c4d74ebe74" [label=""];
  "sha256:12ef07229177e5e5e139ed40e525baeea487b1defcb6235a8a3188c4d74ebe74" -> "sha256:d5a1a8ef284dfd47c276a87ba02959a310d5c0aef8d6f0d019abb4a928f3c76f" [label=""];
  "sha256:d5a1a8ef284dfd47c276a87ba02959a310d5c0aef8d6f0d019abb4a928f3c76f" -> "sha256:a7c4f93645a125ddb11e4ea132b34d44287f53815d717f535a172965ddc4c23a" [label=""];
  "sha256:a7c4f93645a125ddb11e4ea132b34d44287f53815d717f535a172965ddc4c23a" -> "sha256:a4668372bae8b270776b44343e01148136224ebafab1b85d16e1b725b48822bf" [label=""];
  "sha256:a4668372bae8b270776b44343e01148136224ebafab1b85d16e1b725b48822bf" -> "sha256:a8053a911227565e65aabb086db7e6828e2bb40b7d4ec20dab2c07264cdc188d" [label=""];
  "sha256:a8053a911227565e65aabb086db7e6828e2bb40b7d4ec20dab2c07264cdc188d" -> "sha256:59c229e779c3f233d2ee78de73b18054a1b87fbf7a3056193b31924040ebb75f" [label=""];
}

