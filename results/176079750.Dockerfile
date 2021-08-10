[app/sources/176079750.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:9f10746a0c909ac15a4856321dbb917fbfed48b3c943854d0eb9647819b5b31c" [label="/bin/sh -c apt-get update && apt-get install -y   autoconf   autotools-dev   build-essential   bzip2   ccache   curl   dnsutils   gcc   gcc-multilib   git   golang   gyp   lcov   libc6   libc6-dbg   libc6-dev   libgtest-dev   libtool   make   perl   strace   python-dev   python-setuptools   python-yaml   telnet   unzip   wget   zip && apt-get clean" shape="box"];
  "sha256:bd11fd5041064735b758d5188fed303eeaf3ce2142d7904e8eb9e06a743841e5" [label="/bin/sh -c apt-get update && apt-get install -y time && apt-get clean" shape="box"];
  "sha256:db70bf735b72ead3624097fa81338246bb6cfbf011612913c9929b37f52a7620" [label="/bin/sh -c apt-get update && apt-get install -y python-pip && apt-get clean" shape="box"];
  "sha256:81912e520a504e4f330d82c68dd02e038a873882cc2a91abb2de0f4b5da0dd10" [label="/bin/sh -c pip install --upgrade google-api-python-client oauth2client" shape="box"];
  "sha256:4483925973bda9cd83052aa7c70a07335115c00add710ff7be9d436b837f06b7" [label="/bin/sh -c apt-get update && apt-get install -y     python-all-dev     python3-all-dev     python-pip" shape="box"];
  "sha256:85b62e4ebeb0a749de4c0c2b9bacbec6f4548af7c8480015251f536c6faac667" [label="/bin/sh -c pip install --upgrade pip==10.0.1" shape="box"];
  "sha256:b5eae1ac516233b5eb49036a1e92f8783a9e9172d5195ddbf4b23541e3057a72" [label="/bin/sh -c pip install virtualenv" shape="box"];
  "sha256:254bf99b1579e8f82d29649cb3910088fa005e8eeb8bb248c18adab8a55a07d5" [label="/bin/sh -c pip install futures==2.2.0 enum34==1.0.4 protobuf==3.5.2.post1 six==1.10.0 twisted==17.5.0" shape="box"];
  "sha256:cb9d51cc7e74343c73fdcc3036b4d16dd92c0057dc3afbf0d64b0d0b8448d1e5" [label="/bin/sh -c apt-get update && apt-get -y install libgflags-dev libgtest-dev libc++-dev clang && apt-get clean" shape="box"];
  "sha256:86ecf266d807ff78eff067c2bde9219cd85fe3d7702513b04c38109bfb9c8bf5" [label="/bin/sh -c echo \"deb http://archive.debian.org/debian jessie-backports main\" | tee /etc/apt/sources.list.d/jessie-backports.list" shape="box"];
  "sha256:53b832e8d98e8cbff08cf5ad413a346c162105c5fabfec13754b0acafe05f271" [label="/bin/sh -c echo 'Acquire::Check-Valid-Until \"false\";' > /etc/apt/apt.conf" shape="box"];
  "sha256:c176b78deaa171a8d6eb52d2444d2a27b6b2a248187025f364428a05adac0b59" [label="/bin/sh -c sed -i '/deb http:\\/\\/deb.debian.org\\/debian jessie-updates main/d' /etc/apt/sources.list" shape="box"];
  "sha256:3329771844ba0101da7f0fef2eab53c08b8e4433652fb63e4be0fa15149a699d" [label="/bin/sh -c apt-get update && apt-get install -t jessie-backports -y cmake && apt-get clean" shape="box"];
  "sha256:6b6bf658635e5c64d46ecb7737c3bcfc168905319daf5d3a7d7f58a205e5d6f7" [label="/bin/sh -c mkdir /var/local/jenkins" shape="box"];
  "sha256:d637ad17bc35a68c7d5079fa4c2905d512edcfd70bd98de6939aba45972c73a7" [label="/bin/sh -c cd /tmp     && wget http://dist.libuv.org/dist/v1.9.1/libuv-v1.9.1.tar.gz     && tar -xf libuv-v1.9.1.tar.gz     && cd libuv-v1.9.1     && sh autogen.sh && ./configure --prefix=/usr && make && make install" shape="box"];
  "sha256:764f25bdc793bdedb2ecda34fde6765f04cf0993a27128fa1b8683cac32be026" [label="/bin/sh -c apt-get update && apt-get -y install gcc-4.8 gcc-4.8-multilib g++-4.8 g++-4.8-multilib && apt-get clean" shape="box"];
  "sha256:0349cf49fec5d44f809a089fecb32ae94990dbba99f4761ecfbbc37947be5688" [label="sha256:0349cf49fec5d44f809a089fecb32ae94990dbba99f4761ecfbbc37947be5688" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:9f10746a0c909ac15a4856321dbb917fbfed48b3c943854d0eb9647819b5b31c" [label=""];
  "sha256:9f10746a0c909ac15a4856321dbb917fbfed48b3c943854d0eb9647819b5b31c" -> "sha256:bd11fd5041064735b758d5188fed303eeaf3ce2142d7904e8eb9e06a743841e5" [label=""];
  "sha256:bd11fd5041064735b758d5188fed303eeaf3ce2142d7904e8eb9e06a743841e5" -> "sha256:db70bf735b72ead3624097fa81338246bb6cfbf011612913c9929b37f52a7620" [label=""];
  "sha256:db70bf735b72ead3624097fa81338246bb6cfbf011612913c9929b37f52a7620" -> "sha256:81912e520a504e4f330d82c68dd02e038a873882cc2a91abb2de0f4b5da0dd10" [label=""];
  "sha256:81912e520a504e4f330d82c68dd02e038a873882cc2a91abb2de0f4b5da0dd10" -> "sha256:4483925973bda9cd83052aa7c70a07335115c00add710ff7be9d436b837f06b7" [label=""];
  "sha256:4483925973bda9cd83052aa7c70a07335115c00add710ff7be9d436b837f06b7" -> "sha256:85b62e4ebeb0a749de4c0c2b9bacbec6f4548af7c8480015251f536c6faac667" [label=""];
  "sha256:85b62e4ebeb0a749de4c0c2b9bacbec6f4548af7c8480015251f536c6faac667" -> "sha256:b5eae1ac516233b5eb49036a1e92f8783a9e9172d5195ddbf4b23541e3057a72" [label=""];
  "sha256:b5eae1ac516233b5eb49036a1e92f8783a9e9172d5195ddbf4b23541e3057a72" -> "sha256:254bf99b1579e8f82d29649cb3910088fa005e8eeb8bb248c18adab8a55a07d5" [label=""];
  "sha256:254bf99b1579e8f82d29649cb3910088fa005e8eeb8bb248c18adab8a55a07d5" -> "sha256:cb9d51cc7e74343c73fdcc3036b4d16dd92c0057dc3afbf0d64b0d0b8448d1e5" [label=""];
  "sha256:cb9d51cc7e74343c73fdcc3036b4d16dd92c0057dc3afbf0d64b0d0b8448d1e5" -> "sha256:86ecf266d807ff78eff067c2bde9219cd85fe3d7702513b04c38109bfb9c8bf5" [label=""];
  "sha256:86ecf266d807ff78eff067c2bde9219cd85fe3d7702513b04c38109bfb9c8bf5" -> "sha256:53b832e8d98e8cbff08cf5ad413a346c162105c5fabfec13754b0acafe05f271" [label=""];
  "sha256:53b832e8d98e8cbff08cf5ad413a346c162105c5fabfec13754b0acafe05f271" -> "sha256:c176b78deaa171a8d6eb52d2444d2a27b6b2a248187025f364428a05adac0b59" [label=""];
  "sha256:c176b78deaa171a8d6eb52d2444d2a27b6b2a248187025f364428a05adac0b59" -> "sha256:3329771844ba0101da7f0fef2eab53c08b8e4433652fb63e4be0fa15149a699d" [label=""];
  "sha256:3329771844ba0101da7f0fef2eab53c08b8e4433652fb63e4be0fa15149a699d" -> "sha256:6b6bf658635e5c64d46ecb7737c3bcfc168905319daf5d3a7d7f58a205e5d6f7" [label=""];
  "sha256:6b6bf658635e5c64d46ecb7737c3bcfc168905319daf5d3a7d7f58a205e5d6f7" -> "sha256:d637ad17bc35a68c7d5079fa4c2905d512edcfd70bd98de6939aba45972c73a7" [label=""];
  "sha256:d637ad17bc35a68c7d5079fa4c2905d512edcfd70bd98de6939aba45972c73a7" -> "sha256:764f25bdc793bdedb2ecda34fde6765f04cf0993a27128fa1b8683cac32be026" [label=""];
  "sha256:764f25bdc793bdedb2ecda34fde6765f04cf0993a27128fa1b8683cac32be026" -> "sha256:0349cf49fec5d44f809a089fecb32ae94990dbba99f4761ecfbbc37947be5688" [label=""];
}

