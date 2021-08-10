[app/sources/274849935.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:c1e5b74d93442138c4fb966adac7ab8b3629a2ddcbbbfd3bef2c6b4a465a748c" [label="/bin/sh -c apt-get update && apt-get install -y   autoconf   autotools-dev   build-essential   bzip2   ccache   curl   gcc   gcc-multilib   git   golang   gyp   lcov   libc6   libc6-dbg   libc6-dev   libgtest-dev   libtool   make   perl   strace   python-dev   python-setuptools   python-yaml   telnet   unzip   wget   zip && apt-get clean" shape="box"];
  "sha256:11ff097b07052395819bdf96a12af6e407a9a774e2d87049f7f57b9f0567bc42" [label="/bin/sh -c apt-get update && apt-get install -y time && apt-get clean" shape="box"];
  "sha256:217d06e7e6671eec91ce98aa0e0b8d07f7f39cdd1791242efa02f048a6bec1cc" [label="/bin/sh -c apt-get update && apt-get install -y     python-all-dev     python3-all-dev     python-pip" shape="box"];
  "sha256:9625f78e2e5aedf2ea97d2805d4d491511b5778e4eceb640e621a767063a638f" [label="/bin/sh -c pip install pip --upgrade" shape="box"];
  "sha256:b3fe5b96233293522ebd4018d5e6a3ad27d98f0bd0eb98c4a52bb0300138e1f8" [label="/bin/sh -c pip install virtualenv" shape="box"];
  "sha256:9bdb2638e2ca724ff85452b9213970ad18d443b65b3a07cd01a78851d7ac6beb" [label="/bin/sh -c pip install futures==2.2.0 enum34==1.0.4 protobuf==3.2.0 six==1.10.0" shape="box"];
  "sha256:64ae5f965c25766d8d515b35d795c95cc2fc30a4f1713dcd1c8bc77a8b1d4a4b" [label="/bin/sh -c apt-get update && apt-get -y install libgflags-dev libgtest-dev libc++-dev clang && apt-get clean" shape="box"];
  "sha256:c571fcc0ae24fa099cf102b65fc087d3bd8fcc0d862981a0b0f0f599778843ff" [label="/bin/sh -c ln -s /usr/bin/ccache /usr/local/bin/gcc" shape="box"];
  "sha256:edb2f0d0b5e2d62e9ae1b8cec5af0b2aea21d5b5d22bcec0fe69ae9e264df9ef" [label="/bin/sh -c ln -s /usr/bin/ccache /usr/local/bin/g++" shape="box"];
  "sha256:c2da86c02e48038252bdcf8c142a630fb74f1f58ce4be58d4281b574360c7bc3" [label="/bin/sh -c ln -s /usr/bin/ccache /usr/local/bin/cc" shape="box"];
  "sha256:08ef9bb37587afee22281d75d79f81fece25a744bb453e302ce181f4254bdd15" [label="/bin/sh -c ln -s /usr/bin/ccache /usr/local/bin/c++" shape="box"];
  "sha256:74b53096f0c6ff17eac317be126b079ccf6793b472ad1022780e2b5b1001f5e5" [label="/bin/sh -c ln -s /usr/bin/ccache /usr/local/bin/clang" shape="box"];
  "sha256:97699d6a1ea1b7b8061d5d27af2b5ed1bdd674de570ba289f27b283492e68007" [label="/bin/sh -c ln -s /usr/bin/ccache /usr/local/bin/clang++" shape="box"];
  "sha256:a9f45f95c7d2550305027c6b770c92e9c11f0c4edfb10879c6412e6cb0469923" [label="/bin/sh -c mkdir /var/local/jenkins" shape="box"];
  "sha256:1cf63046fade0e4e6b40a2f1d88076e1d900d187b8629ee72fcb8f92862dd136" [label="sha256:1cf63046fade0e4e6b40a2f1d88076e1d900d187b8629ee72fcb8f92862dd136" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:c1e5b74d93442138c4fb966adac7ab8b3629a2ddcbbbfd3bef2c6b4a465a748c" [label=""];
  "sha256:c1e5b74d93442138c4fb966adac7ab8b3629a2ddcbbbfd3bef2c6b4a465a748c" -> "sha256:11ff097b07052395819bdf96a12af6e407a9a774e2d87049f7f57b9f0567bc42" [label=""];
  "sha256:11ff097b07052395819bdf96a12af6e407a9a774e2d87049f7f57b9f0567bc42" -> "sha256:217d06e7e6671eec91ce98aa0e0b8d07f7f39cdd1791242efa02f048a6bec1cc" [label=""];
  "sha256:217d06e7e6671eec91ce98aa0e0b8d07f7f39cdd1791242efa02f048a6bec1cc" -> "sha256:9625f78e2e5aedf2ea97d2805d4d491511b5778e4eceb640e621a767063a638f" [label=""];
  "sha256:9625f78e2e5aedf2ea97d2805d4d491511b5778e4eceb640e621a767063a638f" -> "sha256:b3fe5b96233293522ebd4018d5e6a3ad27d98f0bd0eb98c4a52bb0300138e1f8" [label=""];
  "sha256:b3fe5b96233293522ebd4018d5e6a3ad27d98f0bd0eb98c4a52bb0300138e1f8" -> "sha256:9bdb2638e2ca724ff85452b9213970ad18d443b65b3a07cd01a78851d7ac6beb" [label=""];
  "sha256:9bdb2638e2ca724ff85452b9213970ad18d443b65b3a07cd01a78851d7ac6beb" -> "sha256:64ae5f965c25766d8d515b35d795c95cc2fc30a4f1713dcd1c8bc77a8b1d4a4b" [label=""];
  "sha256:64ae5f965c25766d8d515b35d795c95cc2fc30a4f1713dcd1c8bc77a8b1d4a4b" -> "sha256:c571fcc0ae24fa099cf102b65fc087d3bd8fcc0d862981a0b0f0f599778843ff" [label=""];
  "sha256:c571fcc0ae24fa099cf102b65fc087d3bd8fcc0d862981a0b0f0f599778843ff" -> "sha256:edb2f0d0b5e2d62e9ae1b8cec5af0b2aea21d5b5d22bcec0fe69ae9e264df9ef" [label=""];
  "sha256:edb2f0d0b5e2d62e9ae1b8cec5af0b2aea21d5b5d22bcec0fe69ae9e264df9ef" -> "sha256:c2da86c02e48038252bdcf8c142a630fb74f1f58ce4be58d4281b574360c7bc3" [label=""];
  "sha256:c2da86c02e48038252bdcf8c142a630fb74f1f58ce4be58d4281b574360c7bc3" -> "sha256:08ef9bb37587afee22281d75d79f81fece25a744bb453e302ce181f4254bdd15" [label=""];
  "sha256:08ef9bb37587afee22281d75d79f81fece25a744bb453e302ce181f4254bdd15" -> "sha256:74b53096f0c6ff17eac317be126b079ccf6793b472ad1022780e2b5b1001f5e5" [label=""];
  "sha256:74b53096f0c6ff17eac317be126b079ccf6793b472ad1022780e2b5b1001f5e5" -> "sha256:97699d6a1ea1b7b8061d5d27af2b5ed1bdd674de570ba289f27b283492e68007" [label=""];
  "sha256:97699d6a1ea1b7b8061d5d27af2b5ed1bdd674de570ba289f27b283492e68007" -> "sha256:a9f45f95c7d2550305027c6b770c92e9c11f0c4edfb10879c6412e6cb0469923" [label=""];
  "sha256:a9f45f95c7d2550305027c6b770c92e9c11f0c4edfb10879c6412e6cb0469923" -> "sha256:1cf63046fade0e4e6b40a2f1d88076e1d900d187b8629ee72fcb8f92862dd136" [label=""];
}

