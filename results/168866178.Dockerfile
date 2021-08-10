[app/sources/168866178.Dockerfile]
digraph {
  "sha256:400f6957d5f0d79f87a61e5d11e5822af164a20ca9d9242f40d63c51356fe52c" [label="docker-image://docker.io/steeve/cross-compiler:base" shape="ellipse"];
  "sha256:3c024aa48c5adc9e1a40621ccad624856babc1a0ece98801e976b96592eda8bb" [label="/bin/sh -c echo \"deb http://llvm.org/apt/wheezy/ llvm-toolchain-wheezy-3.4-binaries main\" >> /etc/apt/sources.list &&     curl http://llvm.org/apt/llvm-snapshot.gpg.key | apt-key add - &&     apt-get update" shape="box"];
  "sha256:00719815d16938f758abe96e218da7795843f05db77a14772baf6895b70e39dc" [label="/bin/sh -c apt-get update &&     apt-get install -y --force-yes clang-3.4 llvm-3.4-dev automake autogen                                    libtool libxml2-dev uuid-dev libssl-dev bash                                    patch make tar xz-utils bzip2 gzip sed cpio" shape="box"];
  "sha256:f9036eec956dc261f01a0544e449139f567fa04a0af960c3ee84fb4e046f073f" [label="/bin/sh -c curl -L https://github.com/tpoechtrager/osxcross/archive/master.tar.gz | tar xvz &&     cd /osxcross-master/ &&     curl -L -o tarballs/MacOSX${MAC_SDK_VERSION}.sdk.tar.xz https://www.dropbox.com/s/yfbesd249w10lpc/MacOSX${MAC_SDK_VERSION}.sdk.tar.xz &&     echo | SDK_VERSION=${MAC_SDK_VERSION} OSX_VERSION_MIN=10.6 ./build.sh &&     mv /osxcross-master/target ${CROSS_ROOT} &&     mkdir -p ${CROSS_ROOT}/lib &&     rm -rf /osxcross-master" shape="box"];
  "sha256:257c88ebd87b532726e6368e9bcf0f56fb2a82147d61445eb6b82eaa3f8e6fcd" [label="sha256:257c88ebd87b532726e6368e9bcf0f56fb2a82147d61445eb6b82eaa3f8e6fcd" shape="plaintext"];
  "sha256:400f6957d5f0d79f87a61e5d11e5822af164a20ca9d9242f40d63c51356fe52c" -> "sha256:3c024aa48c5adc9e1a40621ccad624856babc1a0ece98801e976b96592eda8bb" [label=""];
  "sha256:3c024aa48c5adc9e1a40621ccad624856babc1a0ece98801e976b96592eda8bb" -> "sha256:00719815d16938f758abe96e218da7795843f05db77a14772baf6895b70e39dc" [label=""];
  "sha256:00719815d16938f758abe96e218da7795843f05db77a14772baf6895b70e39dc" -> "sha256:f9036eec956dc261f01a0544e449139f567fa04a0af960c3ee84fb4e046f073f" [label=""];
  "sha256:f9036eec956dc261f01a0544e449139f567fa04a0af960c3ee84fb4e046f073f" -> "sha256:257c88ebd87b532726e6368e9bcf0f56fb2a82147d61445eb6b82eaa3f8e6fcd" [label=""];
}

