[app/sources/332050997.Dockerfile]
digraph {
  "sha256:6a992accf2379ea0277bf4c912f91bb7ad8a7faa1d1423537beadfb4cc61b0b4" [label="docker-image://docker.io/library/ubuntu:16.04@sha256:6a3ac136b6ca623d6a6fa20a7622f098b2fae1ac05f0114386ef439d8ca89a4a" shape="ellipse"];
  "sha256:b1cabbc37328bd18296281389cbac13f9aa09cc7aa8e171d8b79c76ae8d7c318" [label="/bin/sh -c apt-get update && apt-get install -y gcc-arm-none-eabi libnewlib-arm-none-eabi python python-pip gcc g++ git autoconf gperf bison flex automake texinfo wget help2man gawk libtool libtool-bin ncurses-dev unzip unrar-free libexpat-dev sed bzip2" shape="box"];
  "sha256:b8b1828299ca5714cbf3030affbafb6152f51b72b99a501aa3bb07d9da0e187d" [label="/bin/sh -c pip install pycrypto==2.6.1" shape="box"];
  "sha256:c1b5e4431cc88684e624b1edb071e5f6b97e1e7d436a2ee85ddabe6631b802f7" [label="/bin/sh -c mkdir -p /panda/boardesp" shape="box"];
  "sha256:f08b9f6de1b4b1c89ad7760e8a8ca04b85ad74d02be24c6433726edbb4569158" [label="mkdir{path=/panda/boardesp}" shape="note"];
  "sha256:dc9abcf71f374de7bd6400e88f10bd043b93df7ae678b292951e0b8b3d87a596" [label="/bin/sh -c git clone --recursive https://github.com/pfalcon/esp-open-sdk.git" shape="box"];
  "sha256:caa8614587cfaf42b9e412a993e9a4163adbf5294a056f5276b0694bdd86f7e5" [label="mkdir{path=/panda/boardesp/esp-open-sdk}" shape="note"];
  "sha256:f2ba8991e4ffe4187da649509ccc3416046a3c1f844b4e3a0285e208fa216f40" [label="/bin/sh -c git checkout 03f5e898a059451ec5f3de30e7feff30455f7ce" shape="box"];
  "sha256:6f5316300b4106da0b94455e4ab8418ab42d0a5e851f9f8daa746afe7b6ee445" [label="/bin/sh -c CT_ALLOW_BUILD_AS_ROOT_SURE=1 make STANDALONE=y" shape="box"];
  "sha256:565afb3b5283daf9ae01ac43dc68b2f02735b9683976451cd8d01620d2f9eb7a" [label="local://context" shape="ellipse"];
  "sha256:6d2796ee4e40bd9e0adcf84d1b41495b72a72312cc1579043c457464d1531997" [label="copy{src=/, dest=/panda}" shape="note"];
  "sha256:7df8bd2033730fa7c0b9325fe28c11431933ea6df3d06433c356bd77231aa644" [label="mkdir{path=/panda}" shape="note"];
  "sha256:c61d76300b4c80f1713246fec149f975bbecbba3a0b0727f0b95bb1a05ac9643" [label="sha256:c61d76300b4c80f1713246fec149f975bbecbba3a0b0727f0b95bb1a05ac9643" shape="plaintext"];
  "sha256:6a992accf2379ea0277bf4c912f91bb7ad8a7faa1d1423537beadfb4cc61b0b4" -> "sha256:b1cabbc37328bd18296281389cbac13f9aa09cc7aa8e171d8b79c76ae8d7c318" [label=""];
  "sha256:b1cabbc37328bd18296281389cbac13f9aa09cc7aa8e171d8b79c76ae8d7c318" -> "sha256:b8b1828299ca5714cbf3030affbafb6152f51b72b99a501aa3bb07d9da0e187d" [label=""];
  "sha256:b8b1828299ca5714cbf3030affbafb6152f51b72b99a501aa3bb07d9da0e187d" -> "sha256:c1b5e4431cc88684e624b1edb071e5f6b97e1e7d436a2ee85ddabe6631b802f7" [label=""];
  "sha256:c1b5e4431cc88684e624b1edb071e5f6b97e1e7d436a2ee85ddabe6631b802f7" -> "sha256:f08b9f6de1b4b1c89ad7760e8a8ca04b85ad74d02be24c6433726edbb4569158" [label=""];
  "sha256:f08b9f6de1b4b1c89ad7760e8a8ca04b85ad74d02be24c6433726edbb4569158" -> "sha256:dc9abcf71f374de7bd6400e88f10bd043b93df7ae678b292951e0b8b3d87a596" [label=""];
  "sha256:dc9abcf71f374de7bd6400e88f10bd043b93df7ae678b292951e0b8b3d87a596" -> "sha256:caa8614587cfaf42b9e412a993e9a4163adbf5294a056f5276b0694bdd86f7e5" [label=""];
  "sha256:caa8614587cfaf42b9e412a993e9a4163adbf5294a056f5276b0694bdd86f7e5" -> "sha256:f2ba8991e4ffe4187da649509ccc3416046a3c1f844b4e3a0285e208fa216f40" [label=""];
  "sha256:f2ba8991e4ffe4187da649509ccc3416046a3c1f844b4e3a0285e208fa216f40" -> "sha256:6f5316300b4106da0b94455e4ab8418ab42d0a5e851f9f8daa746afe7b6ee445" [label=""];
  "sha256:6f5316300b4106da0b94455e4ab8418ab42d0a5e851f9f8daa746afe7b6ee445" -> "sha256:6d2796ee4e40bd9e0adcf84d1b41495b72a72312cc1579043c457464d1531997" [label=""];
  "sha256:565afb3b5283daf9ae01ac43dc68b2f02735b9683976451cd8d01620d2f9eb7a" -> "sha256:6d2796ee4e40bd9e0adcf84d1b41495b72a72312cc1579043c457464d1531997" [label=""];
  "sha256:6d2796ee4e40bd9e0adcf84d1b41495b72a72312cc1579043c457464d1531997" -> "sha256:7df8bd2033730fa7c0b9325fe28c11431933ea6df3d06433c356bd77231aa644" [label=""];
  "sha256:7df8bd2033730fa7c0b9325fe28c11431933ea6df3d06433c356bd77231aa644" -> "sha256:c61d76300b4c80f1713246fec149f975bbecbba3a0b0727f0b95bb1a05ac9643" [label=""];
}

