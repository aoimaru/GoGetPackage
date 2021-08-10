[app/sources/176079767.Dockerfile]
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
  "sha256:85a8604ddad965c41e81e3b10d587a13e9974998496e80ca06cfcd89b9e73513" [label="/bin/sh -c apt-get update && apt-get install -y     git php5 php5-dev phpunit unzip" shape="box"];
  "sha256:82e1658ec18386b326fe6c034afbb0fe0f667984e8612b1d255ac5beb5e030dd" [label="/bin/sh -c mkdir /var/local/jenkins" shape="box"];
  "sha256:c5c91e924e2aae550d250381a8b8210b14ab1f9eb9caf2a197dbd43da5b0a3d1" [label="sha256:c5c91e924e2aae550d250381a8b8210b14ab1f9eb9caf2a197dbd43da5b0a3d1" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:9f10746a0c909ac15a4856321dbb917fbfed48b3c943854d0eb9647819b5b31c" [label=""];
  "sha256:9f10746a0c909ac15a4856321dbb917fbfed48b3c943854d0eb9647819b5b31c" -> "sha256:bd11fd5041064735b758d5188fed303eeaf3ce2142d7904e8eb9e06a743841e5" [label=""];
  "sha256:bd11fd5041064735b758d5188fed303eeaf3ce2142d7904e8eb9e06a743841e5" -> "sha256:db70bf735b72ead3624097fa81338246bb6cfbf011612913c9929b37f52a7620" [label=""];
  "sha256:db70bf735b72ead3624097fa81338246bb6cfbf011612913c9929b37f52a7620" -> "sha256:81912e520a504e4f330d82c68dd02e038a873882cc2a91abb2de0f4b5da0dd10" [label=""];
  "sha256:81912e520a504e4f330d82c68dd02e038a873882cc2a91abb2de0f4b5da0dd10" -> "sha256:4483925973bda9cd83052aa7c70a07335115c00add710ff7be9d436b837f06b7" [label=""];
  "sha256:4483925973bda9cd83052aa7c70a07335115c00add710ff7be9d436b837f06b7" -> "sha256:85b62e4ebeb0a749de4c0c2b9bacbec6f4548af7c8480015251f536c6faac667" [label=""];
  "sha256:85b62e4ebeb0a749de4c0c2b9bacbec6f4548af7c8480015251f536c6faac667" -> "sha256:b5eae1ac516233b5eb49036a1e92f8783a9e9172d5195ddbf4b23541e3057a72" [label=""];
  "sha256:b5eae1ac516233b5eb49036a1e92f8783a9e9172d5195ddbf4b23541e3057a72" -> "sha256:254bf99b1579e8f82d29649cb3910088fa005e8eeb8bb248c18adab8a55a07d5" [label=""];
  "sha256:254bf99b1579e8f82d29649cb3910088fa005e8eeb8bb248c18adab8a55a07d5" -> "sha256:85a8604ddad965c41e81e3b10d587a13e9974998496e80ca06cfcd89b9e73513" [label=""];
  "sha256:85a8604ddad965c41e81e3b10d587a13e9974998496e80ca06cfcd89b9e73513" -> "sha256:82e1658ec18386b326fe6c034afbb0fe0f667984e8612b1d255ac5beb5e030dd" [label=""];
  "sha256:82e1658ec18386b326fe6c034afbb0fe0f667984e8612b1d255ac5beb5e030dd" -> "sha256:c5c91e924e2aae550d250381a8b8210b14ab1f9eb9caf2a197dbd43da5b0a3d1" [label=""];
}

