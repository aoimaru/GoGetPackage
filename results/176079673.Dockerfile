[app/sources/176079673.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:0ecc6e4e28adbe0432dd837205da7336b75e9a319595a315524ff744fac77230" [label="/bin/sh -c apt-get update && apt-get -y install wget xz-utils" shape="box"];
  "sha256:f3de7243876e9f564ac9199ea44a59ee8ec9d9cee575f226e86d29069743ce8e" [label="/bin/sh -c wget http://releases.llvm.org/5.0.0/clang+llvm-5.0.0-linux-x86_64-ubuntu14.04.tar.xz" shape="box"];
  "sha256:32e32953915f864e37bbe48f76001c1affe67d04ec620a99fb959608c1e70c8a" [label="/bin/sh -c tar xf clang+llvm-5.0.0-linux-x86_64-ubuntu14.04.tar.xz" shape="box"];
  "sha256:c94dd8be98d3721ed6e9a7c9da2bbfebe83fa8cbee3431c3eebef64cb61a37e5" [label="/bin/sh -c ln -s /clang+llvm-5.0.0-linux-x86_64-ubuntu14.04/bin/clang-format /usr/local/bin/clang-format" shape="box"];
  "sha256:87714ba19ec215cfe8d7e176c718d05c98b72418d085c85940ae53627fe60a17" [label="/bin/sh -c ln -s /clang+llvm-5.0.0-linux-x86_64-ubuntu14.04/bin/clang-tidy /usr/local/bin/clang-tidy" shape="box"];
  "sha256:c3f4b59527c292e0a20934b3a3b8c9186f937648b239df3d3516d252a4d5c193" [label="/bin/sh -c apt-get update && apt-get install -y     python-all-dev     python3-all-dev     python-pip" shape="box"];
  "sha256:7d487c13b9073114fd2158a1d74bdd613cc3fdbb9175473db122c077aa640bf9" [label="/bin/sh -c pip install --upgrade pip==10.0.1" shape="box"];
  "sha256:70b37f57084eb20c2f41bbf99de3887c074479f7dc950e72abeb380490ba3a90" [label="/bin/sh -c pip install virtualenv" shape="box"];
  "sha256:f5ef3f80935ab70683a0b160c17167bd454ac1fda42ccfe8008a9e9797f60f4d" [label="/bin/sh -c pip install futures==2.2.0 enum34==1.0.4 protobuf==3.5.2.post1 six==1.10.0 twisted==17.5.0" shape="box"];
  "sha256:d743d5438d467527fadec8fb27cb0c60c8274ae22ee114c48b684651fbcd4804" [label="local://context" shape="ellipse"];
  "sha256:93efee934e0cf1a147c431ce11660f87fe378dfd02f2f030ea761ac5da4332a8" [label="copy{src=/clang_tidy_all_the_things.sh, dest=/}" shape="note"];
  "sha256:1caada6f89cd6f9034712f7e8f4134341ab84f5e297c9c244b290279cce9fbd1" [label="/bin/sh -c chmod a+rx /clang_tidy_all_the_things.sh" shape="box"];
  "sha256:8d13a460a658c03991c0a5ed65701c498ab31d7e3845f6198f337884f8105336" [label="sha256:8d13a460a658c03991c0a5ed65701c498ab31d7e3845f6198f337884f8105336" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:0ecc6e4e28adbe0432dd837205da7336b75e9a319595a315524ff744fac77230" [label=""];
  "sha256:0ecc6e4e28adbe0432dd837205da7336b75e9a319595a315524ff744fac77230" -> "sha256:f3de7243876e9f564ac9199ea44a59ee8ec9d9cee575f226e86d29069743ce8e" [label=""];
  "sha256:f3de7243876e9f564ac9199ea44a59ee8ec9d9cee575f226e86d29069743ce8e" -> "sha256:32e32953915f864e37bbe48f76001c1affe67d04ec620a99fb959608c1e70c8a" [label=""];
  "sha256:32e32953915f864e37bbe48f76001c1affe67d04ec620a99fb959608c1e70c8a" -> "sha256:c94dd8be98d3721ed6e9a7c9da2bbfebe83fa8cbee3431c3eebef64cb61a37e5" [label=""];
  "sha256:c94dd8be98d3721ed6e9a7c9da2bbfebe83fa8cbee3431c3eebef64cb61a37e5" -> "sha256:87714ba19ec215cfe8d7e176c718d05c98b72418d085c85940ae53627fe60a17" [label=""];
  "sha256:87714ba19ec215cfe8d7e176c718d05c98b72418d085c85940ae53627fe60a17" -> "sha256:c3f4b59527c292e0a20934b3a3b8c9186f937648b239df3d3516d252a4d5c193" [label=""];
  "sha256:c3f4b59527c292e0a20934b3a3b8c9186f937648b239df3d3516d252a4d5c193" -> "sha256:7d487c13b9073114fd2158a1d74bdd613cc3fdbb9175473db122c077aa640bf9" [label=""];
  "sha256:7d487c13b9073114fd2158a1d74bdd613cc3fdbb9175473db122c077aa640bf9" -> "sha256:70b37f57084eb20c2f41bbf99de3887c074479f7dc950e72abeb380490ba3a90" [label=""];
  "sha256:70b37f57084eb20c2f41bbf99de3887c074479f7dc950e72abeb380490ba3a90" -> "sha256:f5ef3f80935ab70683a0b160c17167bd454ac1fda42ccfe8008a9e9797f60f4d" [label=""];
  "sha256:f5ef3f80935ab70683a0b160c17167bd454ac1fda42ccfe8008a9e9797f60f4d" -> "sha256:93efee934e0cf1a147c431ce11660f87fe378dfd02f2f030ea761ac5da4332a8" [label=""];
  "sha256:d743d5438d467527fadec8fb27cb0c60c8274ae22ee114c48b684651fbcd4804" -> "sha256:93efee934e0cf1a147c431ce11660f87fe378dfd02f2f030ea761ac5da4332a8" [label=""];
  "sha256:93efee934e0cf1a147c431ce11660f87fe378dfd02f2f030ea761ac5da4332a8" -> "sha256:1caada6f89cd6f9034712f7e8f4134341ab84f5e297c9c244b290279cce9fbd1" [label=""];
  "sha256:1caada6f89cd6f9034712f7e8f4134341ab84f5e297c9c244b290279cce9fbd1" -> "sha256:8d13a460a658c03991c0a5ed65701c498ab31d7e3845f6198f337884f8105336" [label=""];
}

