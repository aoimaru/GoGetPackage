[app/sources/192579961.Dockerfile]
digraph {
  "sha256:453047d46d9c03d3ee8062d3180e086352a57f2f3237f50a8f0df0bd3c800882" [label="docker-image://docker.io/library/centos:6.6" shape="ellipse"];
  "sha256:7d7c92c3329772dc0c57c85a22512ef34b5811bfc3ae67d362a3e2b867c4c8a8" [label="/bin/sh -c yum install -y git                    tar                    wget                    make                    autoconf                    curl-devel                    unzip                    automake                    libtool                    glibc-static.i686                    glibc-devel                    glibc-devel.i686" shape="box"];
  "sha256:bf4bdc976a605930cabe0c065c807e8e55b9f0007c8b9a7cdd51d95ff5b45ec8" [label="/bin/sh -c wget -q --no-cookies --no-check-certificate     --header \"Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie\" \"http://download.oracle.com/otn-pub/java/jdk/8u45-b14/jdk-8u45-linux-x64.tar.gz\"     -O - | tar xz -C /var/local" shape="box"];
  "sha256:c4fbfc4b69a61abfa72f098fd358e5eeb614b858abf9814c6230678d40e1b53a" [label="/bin/sh -c wget -q http://apache.cs.utah.edu/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz -O - |     tar xz -C /var/local" shape="box"];
  "sha256:9ad20f03afefbc57128d8d35d084639903c35092d64bf4f4620915f841dede9a" [label="/bin/sh -c wget http://people.centos.org/tru/devtools-1.1/devtools-1.1.repo -P /etc/yum.repos.d" shape="box"];
  "sha256:71991c0f8686a88d9940be6bf25c33393fbdb14ee5c387954377b0f45a887dc8" [label="/bin/sh -c bash -c 'echo \"enabled=1\" >> /etc/yum.repos.d/devtools-1.1.repo'" shape="box"];
  "sha256:5d0bfa4d9bd528237c4512f1082b0d1cb3f6b1aaf8c38cced9f1a2a564a5ef79" [label="/bin/sh -c bash -c \"sed -e 's/\\$basearch/i386/g' /etc/yum.repos.d/devtools-1.1.repo > /etc/yum.repos.d/devtools-i386-1.1.repo\"" shape="box"];
  "sha256:da0a45f4631deeeefb1d57d111741dfbb2fa2145ecd34d2d04327eb7830769ed" [label="/bin/sh -c sed -e 's/testing-/testing-i386-/g' -i /etc/yum.repos.d/devtools-i386-1.1.repo" shape="box"];
  "sha256:c254b223a68914c5772199b5cda500e26a8a35386c1cff3c65536fe40024f492" [label="/bin/sh -c yum install -y devtoolset-1.1                    devtoolset-1.1-libstdc++-devel                    devtoolset-1.1-libstdc++-devel.i686" shape="box"];
  "sha256:221b0137c05cced145e9d393fa8281be4a99484de08340866317d2d45a24a719" [label="/bin/sh -c git clone --depth 1 https://github.com/google/protobuf.git" shape="box"];
  "sha256:9fcf01d6e199da45005fb25a3abe8e840fc7ac6ad32b66a7054aa18bd932463c" [label="sha256:9fcf01d6e199da45005fb25a3abe8e840fc7ac6ad32b66a7054aa18bd932463c" shape="plaintext"];
  "sha256:453047d46d9c03d3ee8062d3180e086352a57f2f3237f50a8f0df0bd3c800882" -> "sha256:7d7c92c3329772dc0c57c85a22512ef34b5811bfc3ae67d362a3e2b867c4c8a8" [label=""];
  "sha256:7d7c92c3329772dc0c57c85a22512ef34b5811bfc3ae67d362a3e2b867c4c8a8" -> "sha256:bf4bdc976a605930cabe0c065c807e8e55b9f0007c8b9a7cdd51d95ff5b45ec8" [label=""];
  "sha256:bf4bdc976a605930cabe0c065c807e8e55b9f0007c8b9a7cdd51d95ff5b45ec8" -> "sha256:c4fbfc4b69a61abfa72f098fd358e5eeb614b858abf9814c6230678d40e1b53a" [label=""];
  "sha256:c4fbfc4b69a61abfa72f098fd358e5eeb614b858abf9814c6230678d40e1b53a" -> "sha256:9ad20f03afefbc57128d8d35d084639903c35092d64bf4f4620915f841dede9a" [label=""];
  "sha256:9ad20f03afefbc57128d8d35d084639903c35092d64bf4f4620915f841dede9a" -> "sha256:71991c0f8686a88d9940be6bf25c33393fbdb14ee5c387954377b0f45a887dc8" [label=""];
  "sha256:71991c0f8686a88d9940be6bf25c33393fbdb14ee5c387954377b0f45a887dc8" -> "sha256:5d0bfa4d9bd528237c4512f1082b0d1cb3f6b1aaf8c38cced9f1a2a564a5ef79" [label=""];
  "sha256:5d0bfa4d9bd528237c4512f1082b0d1cb3f6b1aaf8c38cced9f1a2a564a5ef79" -> "sha256:da0a45f4631deeeefb1d57d111741dfbb2fa2145ecd34d2d04327eb7830769ed" [label=""];
  "sha256:da0a45f4631deeeefb1d57d111741dfbb2fa2145ecd34d2d04327eb7830769ed" -> "sha256:c254b223a68914c5772199b5cda500e26a8a35386c1cff3c65536fe40024f492" [label=""];
  "sha256:c254b223a68914c5772199b5cda500e26a8a35386c1cff3c65536fe40024f492" -> "sha256:221b0137c05cced145e9d393fa8281be4a99484de08340866317d2d45a24a719" [label=""];
  "sha256:221b0137c05cced145e9d393fa8281be4a99484de08340866317d2d45a24a719" -> "sha256:9fcf01d6e199da45005fb25a3abe8e840fc7ac6ad32b66a7054aa18bd932463c" [label=""];
}

