[app/sources/274849957.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:c1e5b74d93442138c4fb966adac7ab8b3629a2ddcbbbfd3bef2c6b4a465a748c" [label="/bin/sh -c apt-get update && apt-get install -y   autoconf   autotools-dev   build-essential   bzip2   ccache   curl   gcc   gcc-multilib   git   golang   gyp   lcov   libc6   libc6-dbg   libc6-dev   libgtest-dev   libtool   make   perl   strace   python-dev   python-setuptools   python-yaml   telnet   unzip   wget   zip && apt-get clean" shape="box"];
  "sha256:11ff097b07052395819bdf96a12af6e407a9a774e2d87049f7f57b9f0567bc42" [label="/bin/sh -c apt-get update && apt-get install -y time && apt-get clean" shape="box"];
  "sha256:217d06e7e6671eec91ce98aa0e0b8d07f7f39cdd1791242efa02f048a6bec1cc" [label="/bin/sh -c apt-get update && apt-get install -y     python-all-dev     python3-all-dev     python-pip" shape="box"];
  "sha256:9625f78e2e5aedf2ea97d2805d4d491511b5778e4eceb640e621a767063a638f" [label="/bin/sh -c pip install pip --upgrade" shape="box"];
  "sha256:b3fe5b96233293522ebd4018d5e6a3ad27d98f0bd0eb98c4a52bb0300138e1f8" [label="/bin/sh -c pip install virtualenv" shape="box"];
  "sha256:9bdb2638e2ca724ff85452b9213970ad18d443b65b3a07cd01a78851d7ac6beb" [label="/bin/sh -c pip install futures==2.2.0 enum34==1.0.4 protobuf==3.2.0 six==1.10.0" shape="box"];
  "sha256:3092099d9eb8cc881e6adf67d5f656221d0912591c1d938c977fdcbbe01ad31b" [label="/bin/sh -c gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3" shape="box"];
  "sha256:0dd27a7f986b6b8fbdc901f7db0ce3707164db695df2d9159441da678f61076b" [label="/bin/sh -c \\curl -sSL https://get.rvm.io | bash -s stable" shape="box"];
  "sha256:4647be986154ebe35c9f431929d00a8d09dad24fd042d23bc78c30f561693704" [label="/bin/sh -c /bin/bash -l -c \"rvm install ruby-2.1\"" shape="box"];
  "sha256:db17cfda50e3f07d63ef505a7629362e8c9bc23ffddfd347e467e8855ab1a20e" [label="/bin/sh -c /bin/bash -l -c \"rvm use --default ruby-2.1\"" shape="box"];
  "sha256:a38d06b371e2fc93944cb99cfdde77a6ef255aaa1a18b528bd9e20be1fed42a7" [label="/bin/sh -c /bin/bash -l -c \"echo 'gem: --no-ri --no-rdoc' > ~/.gemrc\"" shape="box"];
  "sha256:779529ec06e5f71824f3b34f77fb028bd92b534d403bba2900e31dbdc8c59fa0" [label="/bin/sh -c /bin/bash -l -c \"echo 'export PATH=/usr/local/rvm/bin:$PATH' >> ~/.bashrc\"" shape="box"];
  "sha256:621f394b469b356cff68511cbb497fc5821cf72829655cc384cc0b9f9422489a" [label="/bin/sh -c /bin/bash -l -c \"echo 'rvm --default use ruby-2.1' >> ~/.bashrc\"" shape="box"];
  "sha256:b5cf0e643e3cce04ac41cbeabefb54170eea40745840e9be1acc391dd1ff301f" [label="/bin/sh -c /bin/bash -l -c \"gem install bundler --no-ri --no-rdoc\"" shape="box"];
  "sha256:3a45f49d25d963aa092c6f69a4e8d28d69d5db5ab6f559cef90bb8748cbdb60c" [label="/bin/sh -c ln -s /usr/bin/ccache /usr/local/bin/gcc" shape="box"];
  "sha256:7ba7d3d5c34175798cf344af8057693bec5f7a8a0d917f0f3db71c71ef718a70" [label="/bin/sh -c ln -s /usr/bin/ccache /usr/local/bin/g++" shape="box"];
  "sha256:bdc1eaba1ecc99b90e1b460ee147dc34259bf4d46cebd93055e04db10964e77b" [label="/bin/sh -c ln -s /usr/bin/ccache /usr/local/bin/cc" shape="box"];
  "sha256:08acfbdfc937ad2c9ba928d3bb260b9323a9315bea9a1f3b3cdcc8cb190651b9" [label="/bin/sh -c ln -s /usr/bin/ccache /usr/local/bin/c++" shape="box"];
  "sha256:b3336883354ea6b74af5927df9738f61cd2111890e27b421b2caffe49b375b2f" [label="/bin/sh -c ln -s /usr/bin/ccache /usr/local/bin/clang" shape="box"];
  "sha256:70965fa5f9ea377ae26d3e18549b50b5d10a83646389db877dffc3928b528bf7" [label="/bin/sh -c ln -s /usr/bin/ccache /usr/local/bin/clang++" shape="box"];
  "sha256:9ecd9fa92f9408469df3e2e35c36949ff046dfb68f0ee69c1473019068448726" [label="/bin/sh -c mkdir /var/local/jenkins" shape="box"];
  "sha256:a069a9d2788249bd579e9aad288faec7e92ab541c9274f345762beb186cb22f8" [label="sha256:a069a9d2788249bd579e9aad288faec7e92ab541c9274f345762beb186cb22f8" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:c1e5b74d93442138c4fb966adac7ab8b3629a2ddcbbbfd3bef2c6b4a465a748c" [label=""];
  "sha256:c1e5b74d93442138c4fb966adac7ab8b3629a2ddcbbbfd3bef2c6b4a465a748c" -> "sha256:11ff097b07052395819bdf96a12af6e407a9a774e2d87049f7f57b9f0567bc42" [label=""];
  "sha256:11ff097b07052395819bdf96a12af6e407a9a774e2d87049f7f57b9f0567bc42" -> "sha256:217d06e7e6671eec91ce98aa0e0b8d07f7f39cdd1791242efa02f048a6bec1cc" [label=""];
  "sha256:217d06e7e6671eec91ce98aa0e0b8d07f7f39cdd1791242efa02f048a6bec1cc" -> "sha256:9625f78e2e5aedf2ea97d2805d4d491511b5778e4eceb640e621a767063a638f" [label=""];
  "sha256:9625f78e2e5aedf2ea97d2805d4d491511b5778e4eceb640e621a767063a638f" -> "sha256:b3fe5b96233293522ebd4018d5e6a3ad27d98f0bd0eb98c4a52bb0300138e1f8" [label=""];
  "sha256:b3fe5b96233293522ebd4018d5e6a3ad27d98f0bd0eb98c4a52bb0300138e1f8" -> "sha256:9bdb2638e2ca724ff85452b9213970ad18d443b65b3a07cd01a78851d7ac6beb" [label=""];
  "sha256:9bdb2638e2ca724ff85452b9213970ad18d443b65b3a07cd01a78851d7ac6beb" -> "sha256:3092099d9eb8cc881e6adf67d5f656221d0912591c1d938c977fdcbbe01ad31b" [label=""];
  "sha256:3092099d9eb8cc881e6adf67d5f656221d0912591c1d938c977fdcbbe01ad31b" -> "sha256:0dd27a7f986b6b8fbdc901f7db0ce3707164db695df2d9159441da678f61076b" [label=""];
  "sha256:0dd27a7f986b6b8fbdc901f7db0ce3707164db695df2d9159441da678f61076b" -> "sha256:4647be986154ebe35c9f431929d00a8d09dad24fd042d23bc78c30f561693704" [label=""];
  "sha256:4647be986154ebe35c9f431929d00a8d09dad24fd042d23bc78c30f561693704" -> "sha256:db17cfda50e3f07d63ef505a7629362e8c9bc23ffddfd347e467e8855ab1a20e" [label=""];
  "sha256:db17cfda50e3f07d63ef505a7629362e8c9bc23ffddfd347e467e8855ab1a20e" -> "sha256:a38d06b371e2fc93944cb99cfdde77a6ef255aaa1a18b528bd9e20be1fed42a7" [label=""];
  "sha256:a38d06b371e2fc93944cb99cfdde77a6ef255aaa1a18b528bd9e20be1fed42a7" -> "sha256:779529ec06e5f71824f3b34f77fb028bd92b534d403bba2900e31dbdc8c59fa0" [label=""];
  "sha256:779529ec06e5f71824f3b34f77fb028bd92b534d403bba2900e31dbdc8c59fa0" -> "sha256:621f394b469b356cff68511cbb497fc5821cf72829655cc384cc0b9f9422489a" [label=""];
  "sha256:621f394b469b356cff68511cbb497fc5821cf72829655cc384cc0b9f9422489a" -> "sha256:b5cf0e643e3cce04ac41cbeabefb54170eea40745840e9be1acc391dd1ff301f" [label=""];
  "sha256:b5cf0e643e3cce04ac41cbeabefb54170eea40745840e9be1acc391dd1ff301f" -> "sha256:3a45f49d25d963aa092c6f69a4e8d28d69d5db5ab6f559cef90bb8748cbdb60c" [label=""];
  "sha256:3a45f49d25d963aa092c6f69a4e8d28d69d5db5ab6f559cef90bb8748cbdb60c" -> "sha256:7ba7d3d5c34175798cf344af8057693bec5f7a8a0d917f0f3db71c71ef718a70" [label=""];
  "sha256:7ba7d3d5c34175798cf344af8057693bec5f7a8a0d917f0f3db71c71ef718a70" -> "sha256:bdc1eaba1ecc99b90e1b460ee147dc34259bf4d46cebd93055e04db10964e77b" [label=""];
  "sha256:bdc1eaba1ecc99b90e1b460ee147dc34259bf4d46cebd93055e04db10964e77b" -> "sha256:08acfbdfc937ad2c9ba928d3bb260b9323a9315bea9a1f3b3cdcc8cb190651b9" [label=""];
  "sha256:08acfbdfc937ad2c9ba928d3bb260b9323a9315bea9a1f3b3cdcc8cb190651b9" -> "sha256:b3336883354ea6b74af5927df9738f61cd2111890e27b421b2caffe49b375b2f" [label=""];
  "sha256:b3336883354ea6b74af5927df9738f61cd2111890e27b421b2caffe49b375b2f" -> "sha256:70965fa5f9ea377ae26d3e18549b50b5d10a83646389db877dffc3928b528bf7" [label=""];
  "sha256:70965fa5f9ea377ae26d3e18549b50b5d10a83646389db877dffc3928b528bf7" -> "sha256:9ecd9fa92f9408469df3e2e35c36949ff046dfb68f0ee69c1473019068448726" [label=""];
  "sha256:9ecd9fa92f9408469df3e2e35c36949ff046dfb68f0ee69c1473019068448726" -> "sha256:a069a9d2788249bd579e9aad288faec7e92ab541c9274f345762beb186cb22f8" [label=""];
}

