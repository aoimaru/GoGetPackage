[app/sources/467571760.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:9f10746a0c909ac15a4856321dbb917fbfed48b3c943854d0eb9647819b5b31c" [label="/bin/sh -c apt-get update && apt-get install -y   autoconf   autotools-dev   build-essential   bzip2   ccache   curl   dnsutils   gcc   gcc-multilib   git   golang   gyp   lcov   libc6   libc6-dbg   libc6-dev   libgtest-dev   libtool   make   perl   strace   python-dev   python-setuptools   python-yaml   telnet   unzip   wget   zip && apt-get clean" shape="box"];
  "sha256:bd11fd5041064735b758d5188fed303eeaf3ce2142d7904e8eb9e06a743841e5" [label="/bin/sh -c apt-get update && apt-get install -y time && apt-get clean" shape="box"];
  "sha256:71513584c30cd1966a8e96302f3f5acd3e4b39da60f6a206bd5fb60c4b4c2e60" [label="/bin/sh -c apt-get update && apt-get install -y     python-all-dev     python3-all-dev     python-pip" shape="box"];
  "sha256:f51beeab5d00da24ce3a30a4ce962642676b7096a4801d8035ff53cd97f5a180" [label="/bin/sh -c pip install --upgrade pip==10.0.1" shape="box"];
  "sha256:59997904b319b6f2888409c5e2bf335a70d427f0b3880ef3136bf944e241d951" [label="/bin/sh -c pip install virtualenv" shape="box"];
  "sha256:5a76418abedf7688e063621bb64becaa12de524f9d71f1bc9b4d643ef4609036" [label="/bin/sh -c pip install futures==2.2.0 enum34==1.0.4 protobuf==3.5.2.post1 six==1.10.0 twisted==17.5.0" shape="box"];
  "sha256:6fce70371225ab3e6118d259313c0242e1eb6366df25c50e99c6acb87e0d8c68" [label="/bin/sh -c apt-get update && apt-get -y install libgflags-dev libgtest-dev libc++-dev clang && apt-get clean" shape="box"];
  "sha256:e6b21fbbdd2b68e9d824ccca2139c611f61d224a487b8808fe60e4b90f20628e" [label="/bin/sh -c mkdir /var/local/jenkins" shape="box"];
  "sha256:19a4dcf1ae05f6edd4c1143090001ccb744afdd6f0925f4b0129a0978c025083" [label="sha256:19a4dcf1ae05f6edd4c1143090001ccb744afdd6f0925f4b0129a0978c025083" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:9f10746a0c909ac15a4856321dbb917fbfed48b3c943854d0eb9647819b5b31c" [label=""];
  "sha256:9f10746a0c909ac15a4856321dbb917fbfed48b3c943854d0eb9647819b5b31c" -> "sha256:bd11fd5041064735b758d5188fed303eeaf3ce2142d7904e8eb9e06a743841e5" [label=""];
  "sha256:bd11fd5041064735b758d5188fed303eeaf3ce2142d7904e8eb9e06a743841e5" -> "sha256:71513584c30cd1966a8e96302f3f5acd3e4b39da60f6a206bd5fb60c4b4c2e60" [label=""];
  "sha256:71513584c30cd1966a8e96302f3f5acd3e4b39da60f6a206bd5fb60c4b4c2e60" -> "sha256:f51beeab5d00da24ce3a30a4ce962642676b7096a4801d8035ff53cd97f5a180" [label=""];
  "sha256:f51beeab5d00da24ce3a30a4ce962642676b7096a4801d8035ff53cd97f5a180" -> "sha256:59997904b319b6f2888409c5e2bf335a70d427f0b3880ef3136bf944e241d951" [label=""];
  "sha256:59997904b319b6f2888409c5e2bf335a70d427f0b3880ef3136bf944e241d951" -> "sha256:5a76418abedf7688e063621bb64becaa12de524f9d71f1bc9b4d643ef4609036" [label=""];
  "sha256:5a76418abedf7688e063621bb64becaa12de524f9d71f1bc9b4d643ef4609036" -> "sha256:6fce70371225ab3e6118d259313c0242e1eb6366df25c50e99c6acb87e0d8c68" [label=""];
  "sha256:6fce70371225ab3e6118d259313c0242e1eb6366df25c50e99c6acb87e0d8c68" -> "sha256:e6b21fbbdd2b68e9d824ccca2139c611f61d224a487b8808fe60e4b90f20628e" [label=""];
  "sha256:e6b21fbbdd2b68e9d824ccca2139c611f61d224a487b8808fe60e4b90f20628e" -> "sha256:19a4dcf1ae05f6edd4c1143090001ccb744afdd6f0925f4b0129a0978c025083" [label=""];
}

