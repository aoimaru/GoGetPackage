[app/sources/233349640.Dockerfile]
digraph {
  "sha256:e0d0ee7456543f8a1eb96d728c2c73f79dee4ba688ae79ea89708d52a94c12a3" [label="docker-image://docker.io/library/centos:centos6.7" shape="ellipse"];
  "sha256:cc26fed16dbd116f0e9cd3c023230d80d1f7d5617f009b9c4e73cb4caa56e0d2" [label="/bin/sh -c yum -y upgrade" shape="box"];
  "sha256:59083cee133c22614b0832cf34af03c8240ee9b161a1f5ef297a95bc93e9127e" [label="/bin/sh -c yum -y install     java-1.8.0-openjdk-devel     wget which findutils binutils gcc tar gzip     zip unzip java java-devel git clang zlib-devel     gcc-c++" shape="box"];
  "sha256:6351379786254b382feee3f0096f3c3c0d573eae3666d611ffc47f5f8f555bde" [label="/bin/sh -c wget http://people.centos.org/tru/devtools-2/devtools-2.repo -O /etc/yum.repos.d/devtools-2.repo" shape="box"];
  "sha256:75616b1fc51e6951ed6d65daebf497609ccfe9357360038c97d7061134252228" [label="/bin/sh -c yum -y install devtoolset-2-gcc devtoolset-2-gcc-c++ devtoolset-2-binutils" shape="box"];
  "sha256:1197f897eb86c067fb3a866abc38106fabd2bfdb741fbc410441fe1276e33471" [label="sha256:1197f897eb86c067fb3a866abc38106fabd2bfdb741fbc410441fe1276e33471" shape="plaintext"];
  "sha256:e0d0ee7456543f8a1eb96d728c2c73f79dee4ba688ae79ea89708d52a94c12a3" -> "sha256:cc26fed16dbd116f0e9cd3c023230d80d1f7d5617f009b9c4e73cb4caa56e0d2" [label=""];
  "sha256:cc26fed16dbd116f0e9cd3c023230d80d1f7d5617f009b9c4e73cb4caa56e0d2" -> "sha256:59083cee133c22614b0832cf34af03c8240ee9b161a1f5ef297a95bc93e9127e" [label=""];
  "sha256:59083cee133c22614b0832cf34af03c8240ee9b161a1f5ef297a95bc93e9127e" -> "sha256:6351379786254b382feee3f0096f3c3c0d573eae3666d611ffc47f5f8f555bde" [label=""];
  "sha256:6351379786254b382feee3f0096f3c3c0d573eae3666d611ffc47f5f8f555bde" -> "sha256:75616b1fc51e6951ed6d65daebf497609ccfe9357360038c97d7061134252228" [label=""];
  "sha256:75616b1fc51e6951ed6d65daebf497609ccfe9357360038c97d7061134252228" -> "sha256:1197f897eb86c067fb3a866abc38106fabd2bfdb741fbc410441fe1276e33471" [label=""];
}

