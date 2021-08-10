[app/sources/168271198.Dockerfile]
digraph {
  "sha256:67e121a9d9b710d86fa99c9a17205fd4b9e81708b4bff1f158659a8c329cc654" [label="local://context" shape="ellipse"];
  "sha256:b9d3b85a7c59b4253e0a337417de5c1fdbe98060769ac7b2ec2224a0ab9b7150" [label="docker-image://docker.io/library/rhel7:7.2-46" shape="ellipse"];
  "sha256:73d1af73290d1a117db0c0a794d4268fb8281a1300d87c0fa05b7c2d941995fa" [label="copy{src=/contrib/etc/scl_enable, dest=/opt/app-root/etc/scl_enable}" shape="note"];
  "sha256:f40dabf69b9a73a815804229512e935a9d8a45b83dcdb770616cd26666231ee6" [label="/bin/sh -c yum install -y --setopt=tsflags=nodocs   autoconf   automake   findutils   gcc-c++   gdb   gettext   git   libcurl-devel   libxml2-devel   libxslt-devel   lsof   make   mariadb-devel   mariadb-libs   openssl-devel   patch   postgresql-devel   procps-ng   scl-utils   sqlite-devel   tar   unzip   wget   which   yum-utils   zlib-devel &&   yum clean all -y &&   mkdir -p ${HOME} &&   groupadd -r default -f -g 1001 &&   useradd -u 1001 -r -g default -d ${HOME} -s /sbin/nologin       -c \"Default Application User\" default &&   chown -R 1001:1001 /opt/app-root" shape="box"];
  "sha256:0ff37d948716538ed6e5c63cfa6884a19a343cef341a4b9a7b68fbfe49ee144e" [label="/bin/sh -c yum-config-manager --enable rhel-server-rhscl-7-rpms &&     yum-config-manager --enable rhel-7-server-optional-rpms &&     yum install -y --setopt=tsflags=nodocs rh-ruby23 rh-ruby23-ruby-devel rh-ruby23-rubygem-rake v8314 rh-ruby23-rubygem-bundler rh-ror42 rh-nodejs4 &&     yum clean all -y" shape="box"];
  "sha256:1fe3ba6bb5a8fbb323c4cc709392ce576528045afbd8f636dd063e05d32a692e" [label="copy{src=/contrib/.gemrc, dest=/opt/app-root/.gemrc}" shape="note"];
  "sha256:2178ee85c586be2fd1002dd32b3131f8b1d1597b1c1faef56ef3886827372edd" [label="/bin/sh -c chown -R 1001:1001 /opt/app-root" shape="box"];
  "sha256:745893debb553f160c4c424f83043127f73dc42c8bff6635f51ffc399b7f3c38" [label="mkdir{path=/opt/app-root/src}" shape="note"];
  "sha256:b11d9babb8662b11d852015313c273d68117c532ea5f5eec0df2f2d1b24395af" [label="copy{src=/contrib/bin/usage, dest=/usr/local/bin/usage}" shape="note"];
  "sha256:64fdfc45529d0e92a94eb9c642df847a09afcd789fa649c2bc73f18e463aefbe" [label="copy{src=/contrib/bin/container-entrypoint, dest=/usr/bin/container-entrypoint}" shape="note"];
  "sha256:14f6f25f195c9616a931eb7a38f7f91639fb2bb4e4559fd737a2228544c82f5c" [label="sha256:14f6f25f195c9616a931eb7a38f7f91639fb2bb4e4559fd737a2228544c82f5c" shape="plaintext"];
  "sha256:b9d3b85a7c59b4253e0a337417de5c1fdbe98060769ac7b2ec2224a0ab9b7150" -> "sha256:73d1af73290d1a117db0c0a794d4268fb8281a1300d87c0fa05b7c2d941995fa" [label=""];
  "sha256:67e121a9d9b710d86fa99c9a17205fd4b9e81708b4bff1f158659a8c329cc654" -> "sha256:73d1af73290d1a117db0c0a794d4268fb8281a1300d87c0fa05b7c2d941995fa" [label=""];
  "sha256:73d1af73290d1a117db0c0a794d4268fb8281a1300d87c0fa05b7c2d941995fa" -> "sha256:f40dabf69b9a73a815804229512e935a9d8a45b83dcdb770616cd26666231ee6" [label=""];
  "sha256:f40dabf69b9a73a815804229512e935a9d8a45b83dcdb770616cd26666231ee6" -> "sha256:0ff37d948716538ed6e5c63cfa6884a19a343cef341a4b9a7b68fbfe49ee144e" [label=""];
  "sha256:0ff37d948716538ed6e5c63cfa6884a19a343cef341a4b9a7b68fbfe49ee144e" -> "sha256:1fe3ba6bb5a8fbb323c4cc709392ce576528045afbd8f636dd063e05d32a692e" [label=""];
  "sha256:67e121a9d9b710d86fa99c9a17205fd4b9e81708b4bff1f158659a8c329cc654" -> "sha256:1fe3ba6bb5a8fbb323c4cc709392ce576528045afbd8f636dd063e05d32a692e" [label=""];
  "sha256:1fe3ba6bb5a8fbb323c4cc709392ce576528045afbd8f636dd063e05d32a692e" -> "sha256:2178ee85c586be2fd1002dd32b3131f8b1d1597b1c1faef56ef3886827372edd" [label=""];
  "sha256:2178ee85c586be2fd1002dd32b3131f8b1d1597b1c1faef56ef3886827372edd" -> "sha256:745893debb553f160c4c424f83043127f73dc42c8bff6635f51ffc399b7f3c38" [label=""];
  "sha256:745893debb553f160c4c424f83043127f73dc42c8bff6635f51ffc399b7f3c38" -> "sha256:b11d9babb8662b11d852015313c273d68117c532ea5f5eec0df2f2d1b24395af" [label=""];
  "sha256:67e121a9d9b710d86fa99c9a17205fd4b9e81708b4bff1f158659a8c329cc654" -> "sha256:b11d9babb8662b11d852015313c273d68117c532ea5f5eec0df2f2d1b24395af" [label=""];
  "sha256:b11d9babb8662b11d852015313c273d68117c532ea5f5eec0df2f2d1b24395af" -> "sha256:64fdfc45529d0e92a94eb9c642df847a09afcd789fa649c2bc73f18e463aefbe" [label=""];
  "sha256:67e121a9d9b710d86fa99c9a17205fd4b9e81708b4bff1f158659a8c329cc654" -> "sha256:64fdfc45529d0e92a94eb9c642df847a09afcd789fa649c2bc73f18e463aefbe" [label=""];
  "sha256:64fdfc45529d0e92a94eb9c642df847a09afcd789fa649c2bc73f18e463aefbe" -> "sha256:14f6f25f195c9616a931eb7a38f7f91639fb2bb4e4559fd737a2228544c82f5c" [label=""];
}

