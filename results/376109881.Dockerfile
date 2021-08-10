[app/sources/376109881.Dockerfile]
digraph {
  "sha256:da66937e177bb15582ac501a737ac9c3082c0e3cc0fdfdbf5f3610efc2c5ea4b" [label="docker-image://docker.io/couchbase/centos-72-jenkins-core:20170613" shape="ellipse"];
  "sha256:d3abdb07a0d8618910f3d4b873fbee4ee1724f1c6aa07efbf10dfad7fbe5aeae" [label="/bin/sh -c yum install -y ruby-devel gcc make rpm-build rubygems &&     gem install fpm" shape="box"];
  "sha256:c08cdcf57233ef97a9499add57a98e443ca1c61235cf188371511886eab4a25c" [label="/bin/sh -c curl -o /etc/yum.repos.d/alonid.repo   https://copr.fedorainfracloud.org/coprs/alonid/llvm-3.9.1/repo/epel-7/alonid-llvm-3.9.1-epel-7.repo &&   yum install -y --setopt=keepcache=0 clang-3.9.1 llvm-3.9.1-devel" shape="box"];
  "sha256:4ccd5a7904207804d75bd3f844e89f98b6c94dcc8fc418502831d53a31833287" [label="/bin/sh -c update-alternatives --install /usr/bin/clang++ clang++ /opt/llvm-3.9.1/bin/clang++ 100 &&     update-alternatives --install /usr/bin/clang clang /opt/llvm-3.9.1/bin/clang 100 &&     rm /usr/bin/c++ &&     update-alternatives --install /usr/bin/c++ c++ /opt/llvm-3.9.1/bin/clang++ 100 &&     update-alternatives --install /usr/bin/cc cc /opt/llvm-3.9.1/bin/clang 100 &&     ln -s /opt/llvm-3.9.1/bin/llvm-config /usr/bin/llvm-config &&     mkdir -p /opt/llvm-3.9.1/share/llvm &&     ln -s /opt/llvm-3.9.1/lib64/cmake/llvm /opt/llvm-3.9.1/share/llvm/cmake" shape="box"];
  "sha256:f7ef1fcc380b93fb4e900d0a3bf36eef4bb0815f3f6a0e3423ee05e05b2efec4" [label="/bin/sh -c yum install -y --setopt=keepcache=0 tar openssl-devel make redhat-lsb-core wget unzip zip" shape="box"];
  "sha256:38f280f7fbc5a1ea60a76a6d0df6f721c4b7f2c54022641cba4d83b09361cad6" [label="/bin/sh -c mkdir /tmp/deploy &&     curl -L https://www.samba.org/ftp/ccache/ccache-3.3.4.tar.xz -o /tmp/deploy/ccache.tar.xz &&     cd /tmp/deploy && tar -xf ccache.tar.xz &&     cd ccache-3.3.4 && ./configure --prefix=/usr/local && make -j8 && make install &&     ln -s ccache /usr/local/bin/clang &&     ln -s ccache /usr/local/bin/clang++ &&     ln -s ccache /usr/local/bin/cc &&     ln -s ccache /usr/local/bin/c++ &&     ln -s ccache /usr/local/bin/gcc &&     ln -s ccache /usr/local/bin/g++ &&     rm -fr /tmp/deploy" shape="box"];
  "sha256:a3268d9b58948acb21d3cca6b28f7c12a7ccf8467f0b81a659156be396f3b604" [label="/bin/sh -c mkdir /tmp/deploy &&     curl -L https://cmake.org/files/v3.13/cmake-3.13.0-Linux-x86_64.sh -o /tmp/deploy/cmake.sh &&     (echo y ; echo n) | sh /tmp/deploy/cmake.sh --prefix=/usr/local &&     rm /usr/local/bin/cmake-gui &&     rm -rf /tmp/deploy" shape="box"];
  "sha256:e89deb461493825f3523dd4340890d0fde0d8d169ec58d05406b04f18f902458" [label="/bin/sh -c mkdir -p /opt &&     cd /opt &&     curl -L http://dl.google.com/android/android-sdk_r24.4.1-linux.tgz -o android-sdk.tgz &&     tar xzf android-sdk.tgz &&     rm -rf android-sdk.tgz &&     (echo y | android-sdk-linux/tools/android -s update sdk --no-ui --filter platform-tools,tools -a ) &&     (echo y | android-sdk-linux/tools/android -s update sdk --no-ui --filter extra-android-m2repository,extra-android-support,extra-google-google_play_services,extra-google-m2repository -a) &&     (echo y | android-sdk-linux/tools/android -s update sdk --no-ui --filter build-tools-26.0.0,android-26 -a) &&     chown -R couchbase:couchbase android-sdk-linux &&     chmod 755 android-sdk-linux" shape="box"];
  "sha256:58a3dc0e749e94f1319b41e8839b6acb251025c7266cb3117cc54d11638765e6" [label="/bin/sh -c cd /opt &&     curl -L https://dl.google.com/android/repository/android-ndk-r15b-linux-x86_64.zip -o android-ndk-r15b.zip &&     unzip -qq android-ndk-r15b.zip &&     chown -R couchbase:couchbase android-ndk-r15b &&     chmod 755 android-ndk-r15b &&     rm -rf android-ndk-r15b.zip" shape="box"];
  "sha256:1aba5475d0c80cc4cf1b13cd03bca3f78c698260238bcd106a8c92516f4bec45" [label="sha256:1aba5475d0c80cc4cf1b13cd03bca3f78c698260238bcd106a8c92516f4bec45" shape="plaintext"];
  "sha256:da66937e177bb15582ac501a737ac9c3082c0e3cc0fdfdbf5f3610efc2c5ea4b" -> "sha256:d3abdb07a0d8618910f3d4b873fbee4ee1724f1c6aa07efbf10dfad7fbe5aeae" [label=""];
  "sha256:d3abdb07a0d8618910f3d4b873fbee4ee1724f1c6aa07efbf10dfad7fbe5aeae" -> "sha256:c08cdcf57233ef97a9499add57a98e443ca1c61235cf188371511886eab4a25c" [label=""];
  "sha256:c08cdcf57233ef97a9499add57a98e443ca1c61235cf188371511886eab4a25c" -> "sha256:4ccd5a7904207804d75bd3f844e89f98b6c94dcc8fc418502831d53a31833287" [label=""];
  "sha256:4ccd5a7904207804d75bd3f844e89f98b6c94dcc8fc418502831d53a31833287" -> "sha256:f7ef1fcc380b93fb4e900d0a3bf36eef4bb0815f3f6a0e3423ee05e05b2efec4" [label=""];
  "sha256:f7ef1fcc380b93fb4e900d0a3bf36eef4bb0815f3f6a0e3423ee05e05b2efec4" -> "sha256:38f280f7fbc5a1ea60a76a6d0df6f721c4b7f2c54022641cba4d83b09361cad6" [label=""];
  "sha256:38f280f7fbc5a1ea60a76a6d0df6f721c4b7f2c54022641cba4d83b09361cad6" -> "sha256:a3268d9b58948acb21d3cca6b28f7c12a7ccf8467f0b81a659156be396f3b604" [label=""];
  "sha256:a3268d9b58948acb21d3cca6b28f7c12a7ccf8467f0b81a659156be396f3b604" -> "sha256:e89deb461493825f3523dd4340890d0fde0d8d169ec58d05406b04f18f902458" [label=""];
  "sha256:e89deb461493825f3523dd4340890d0fde0d8d169ec58d05406b04f18f902458" -> "sha256:58a3dc0e749e94f1319b41e8839b6acb251025c7266cb3117cc54d11638765e6" [label=""];
  "sha256:58a3dc0e749e94f1319b41e8839b6acb251025c7266cb3117cc54d11638765e6" -> "sha256:1aba5475d0c80cc4cf1b13cd03bca3f78c698260238bcd106a8c92516f4bec45" [label=""];
}

