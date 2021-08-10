[app/sources/279141694.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:ed0d17ba0df9347995efa2a6bcb4fd31b2258836d0a0bfb4fe0d4055e6104722" [label="local://context" shape="ellipse"];
  "sha256:2bfe05e157f548a7de77244b6a5e88839604dfee57c5b29bb8b52c8c750c54aa" [label="copy{src=/neo, dest=/root/neo}" shape="note"];
  "sha256:8dc5d810c043f669f177580bc33548a5c9d0d1f63f389524df2bd4cff890599c" [label="/bin/sh -c echo \"deb http://ppa.launchpad.net/ocl-dev/intel-opencl/ubuntu xenial main\" >> /etc/apt/sources.list;     apt-key adv --keyserver keyserver.ubuntu.com --recv-keys C3086B78CC05B8B1;     apt-get -y update ; apt-get install -y --allow-unauthenticated cmake g++-5 git pkg-config ninja-build intel-igc-opencl-dev" shape="box"];
  "sha256:a6d8b01dfd03be04d84f78319ad4ff4e759da28ee3c7f3341545d5bbe3292fce" [label="/bin/sh -c cd /root; git clone --depth 1 https://github.com/intel/gmmlib gmmlib" shape="box"];
  "sha256:0d8886786f6279c572226a66910b2afa521e4f80ae988ca3cb2eab73d8768886" [label="/bin/sh -c mkdir /root/build; cd /root/build ; cmake -G Ninja -DCMAKE_BUILD_TYPE=Release     -DCMAKE_C_COMPILER=gcc-5 -DCMAKE_CXX_COMPILER=g++-5 -DSKIP_UNIT_TESTS=1 ../neo;     ninja -j `nproc`" shape="box"];
  "sha256:4a7db69f6985f2af097919a1d7e6936e376512e01dd603b1443bd1b6aa5f79e1" [label="sha256:4a7db69f6985f2af097919a1d7e6936e376512e01dd603b1443bd1b6aa5f79e1" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:2bfe05e157f548a7de77244b6a5e88839604dfee57c5b29bb8b52c8c750c54aa" [label=""];
  "sha256:ed0d17ba0df9347995efa2a6bcb4fd31b2258836d0a0bfb4fe0d4055e6104722" -> "sha256:2bfe05e157f548a7de77244b6a5e88839604dfee57c5b29bb8b52c8c750c54aa" [label=""];
  "sha256:2bfe05e157f548a7de77244b6a5e88839604dfee57c5b29bb8b52c8c750c54aa" -> "sha256:8dc5d810c043f669f177580bc33548a5c9d0d1f63f389524df2bd4cff890599c" [label=""];
  "sha256:8dc5d810c043f669f177580bc33548a5c9d0d1f63f389524df2bd4cff890599c" -> "sha256:a6d8b01dfd03be04d84f78319ad4ff4e759da28ee3c7f3341545d5bbe3292fce" [label=""];
  "sha256:a6d8b01dfd03be04d84f78319ad4ff4e759da28ee3c7f3341545d5bbe3292fce" -> "sha256:0d8886786f6279c572226a66910b2afa521e4f80ae988ca3cb2eab73d8768886" [label=""];
  "sha256:0d8886786f6279c572226a66910b2afa521e4f80ae988ca3cb2eab73d8768886" -> "sha256:4a7db69f6985f2af097919a1d7e6936e376512e01dd603b1443bd1b6aa5f79e1" [label=""];
}

