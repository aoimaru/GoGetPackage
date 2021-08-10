[app/sources/333519445.Dockerfile]
digraph {
  "sha256:19fefe93f9e1a6b76fe0d8b9e1a84cb993ebbe227f16b57e5d7b7ecd05b625d3" [label="docker-image://docker.io/hirs/hirs-ci:centos7" shape="ellipse"];
  "sha256:29b17ddda21a7cee79e46d34f531ee8d35ee34538780cc2d229766717e7c0327" [label="/bin/sh -c yum -y update && yum clean all" shape="box"];
  "sha256:a056ac5bb4de5af4ecca613ba8ffad3eb131f6a70d6f07bcd9e8076787609b10" [label="/bin/sh -c yum install -y java-1.8.0-openjdk wget util-linux chkconfig sed systemd gmp-devel coreutils dmidecode bash autoconf autoconf-archive automake libtool pkgconfig m4 gcc-c++ openssl python-requests && yum clean all" shape="box"];
  "sha256:d3e99c9e6b1ac937656a9677d14a19ba10dc6fee79cb575ccdad94de7171685a" [label="/bin/sh -c mkdir tpm_module && pushd tpm_module && wget https://github.com/nsacyber/HIRS/releases/download/v1.0.4/tpm_module-1.0.4-1558547257.cedc93.x86_64.rpm && yum -y install tpm_module-*.rpm && popd" shape="box"];
  "sha256:aa7f63ac4c3d57e2abf8e9eacb17c60a8583b102f0821f83c0f4a0b9a05bd97e" [label="/bin/sh -c mkdir paccor && pushd paccor && wget https://github.com/nsacyber/paccor/releases/download/v1.1.2r1/paccor-1.1.2-1.noarch.rpm && yum -y install paccor-*.rpm && popd" shape="box"];
  "sha256:6f982c6bc568daf68839e327977329fc1a1d44e510bc34184b6317e32b47d399" [label="/bin/sh -c mkdir tpm_emulator && pushd tpm_emulator && wget https://phoenixnap.dl.sourceforge.net/project/ibmswtpm/tpm4769tar.gz && tar -xzvf tpm4769tar.gz && pushd libtpm && ./autogen && ./configure && make && popd && pushd tpm && make -f makefile-tpm && popd && popd" shape="box"];
  "sha256:ed3586edf216d2bbc0dd706fb09af3622477b77ef3876c8dfbb336fde469c1ac" [label="sha256:ed3586edf216d2bbc0dd706fb09af3622477b77ef3876c8dfbb336fde469c1ac" shape="plaintext"];
  "sha256:19fefe93f9e1a6b76fe0d8b9e1a84cb993ebbe227f16b57e5d7b7ecd05b625d3" -> "sha256:29b17ddda21a7cee79e46d34f531ee8d35ee34538780cc2d229766717e7c0327" [label=""];
  "sha256:29b17ddda21a7cee79e46d34f531ee8d35ee34538780cc2d229766717e7c0327" -> "sha256:a056ac5bb4de5af4ecca613ba8ffad3eb131f6a70d6f07bcd9e8076787609b10" [label=""];
  "sha256:a056ac5bb4de5af4ecca613ba8ffad3eb131f6a70d6f07bcd9e8076787609b10" -> "sha256:d3e99c9e6b1ac937656a9677d14a19ba10dc6fee79cb575ccdad94de7171685a" [label=""];
  "sha256:d3e99c9e6b1ac937656a9677d14a19ba10dc6fee79cb575ccdad94de7171685a" -> "sha256:aa7f63ac4c3d57e2abf8e9eacb17c60a8583b102f0821f83c0f4a0b9a05bd97e" [label=""];
  "sha256:aa7f63ac4c3d57e2abf8e9eacb17c60a8583b102f0821f83c0f4a0b9a05bd97e" -> "sha256:6f982c6bc568daf68839e327977329fc1a1d44e510bc34184b6317e32b47d399" [label=""];
  "sha256:6f982c6bc568daf68839e327977329fc1a1d44e510bc34184b6317e32b47d399" -> "sha256:ed3586edf216d2bbc0dd706fb09af3622477b77ef3876c8dfbb336fde469c1ac" [label=""];
}

