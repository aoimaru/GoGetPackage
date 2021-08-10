[app/sources/351406746.Dockerfile]
digraph {
  "sha256:cacaf0ca00c103dbd95f1fe406b377fdac59f714e12226572cb8488745eb0a51" [label="docker-image://registry.rhc4tp.openshift.com/bitnami/rhel-extras-7:latest" shape="ellipse"];
  "sha256:162de9b6037df65a0a2981bdc1c6f23c32f00e7c132931497cc6d0f6f5f2ed92" [label="/bin/sh -c install_packages bzip2-libs ca-certificates curl gcc gcc-c++ git glibc keyutils-libs krb5-libs libcom_err libgcc libselinux libstdc++ libtool make ncurses-libs nss-softokn-freebl openssl-libs patch pcre pkgconfig readline sqlite unzip wget zlib" shape="box"];
  "sha256:be216b360870dce76ebf87e4d12d974f7173b9824ef12d05d615ee87edbabffe" [label="/bin/sh -c bitnami-pkg install node-8.16.0-0 --checksum 61831866f2d8995ad8f70cf0a4f0e2e75e5a37e9b9e8ee413f05be6facfeef45" shape="box"];
  "sha256:a67d070ffa6ef753799f76d127c4b8a3debef446b2f96ff401eca4b12f81cc67" [label="local://context" shape="ellipse"];
  "sha256:d9897e6184cf9ba130aa269a4e62ca2da237dab3f0b48f07e188001b157134d6" [label="copy{src=/rootfs, dest=/}" shape="note"];
  "sha256:d82703aa244c7e87ecae0cce32f73dfdc149122493aad6686e6f7787942c7d9e" [label="mkdir{path=/app}" shape="note"];
  "sha256:5e623815271d53d7d7d94be4580ee3a1b7ccf44398fcde4656a6b6b3c7ede1ca" [label="sha256:5e623815271d53d7d7d94be4580ee3a1b7ccf44398fcde4656a6b6b3c7ede1ca" shape="plaintext"];
  "sha256:cacaf0ca00c103dbd95f1fe406b377fdac59f714e12226572cb8488745eb0a51" -> "sha256:162de9b6037df65a0a2981bdc1c6f23c32f00e7c132931497cc6d0f6f5f2ed92" [label=""];
  "sha256:162de9b6037df65a0a2981bdc1c6f23c32f00e7c132931497cc6d0f6f5f2ed92" -> "sha256:be216b360870dce76ebf87e4d12d974f7173b9824ef12d05d615ee87edbabffe" [label=""];
  "sha256:be216b360870dce76ebf87e4d12d974f7173b9824ef12d05d615ee87edbabffe" -> "sha256:d9897e6184cf9ba130aa269a4e62ca2da237dab3f0b48f07e188001b157134d6" [label=""];
  "sha256:a67d070ffa6ef753799f76d127c4b8a3debef446b2f96ff401eca4b12f81cc67" -> "sha256:d9897e6184cf9ba130aa269a4e62ca2da237dab3f0b48f07e188001b157134d6" [label=""];
  "sha256:d9897e6184cf9ba130aa269a4e62ca2da237dab3f0b48f07e188001b157134d6" -> "sha256:d82703aa244c7e87ecae0cce32f73dfdc149122493aad6686e6f7787942c7d9e" [label=""];
  "sha256:d82703aa244c7e87ecae0cce32f73dfdc149122493aad6686e6f7787942c7d9e" -> "sha256:5e623815271d53d7d7d94be4580ee3a1b7ccf44398fcde4656a6b6b3c7ede1ca" [label=""];
}

