[app/sources/138672080.Dockerfile]
digraph {
  "sha256:d20029e6da5ee62f143d53bd3ac8bc169940d82a921fe26eaaf03f2977c65579" [label="docker-image://docker.io/library/ubuntu:bionic" shape="ellipse"];
  "sha256:a55ed6826bc42920d696052c3514935c254cfdcea9ac8d05c943bbc7a0673647" [label="/bin/sh -c apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y libpq-dev libxml2-dev libxslt1-dev nginx openssh-client openssh-server openssl rsyslog rsyslog-gnutls liblcms2-dev libwebp-dev python-tk libfreetype6-dev vim-nox imagemagick libffi-dev libgmp-dev build-essential libssl-dev software-properties-common pkg-config libtool python3-dev &&     apt-get clean" shape="box"];
  "sha256:9299e2d3024eda384aaf4384da4b70abdacd1a912a91ebec94ebd3dd78e305df" [label="/bin/sh -c apt-get update && apt-get install -y git-core jq screen curl && apt-get clean" shape="box"];
  "sha256:9881cc1cb7905381a68d943a59ed6031ee6aa17612503dbf2b0211fd3a147a77" [label="/bin/sh -c apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y libsnappy-dev zlib1g-dev libbz2-dev libgflags-dev liblz4-dev libzstd-dev librocksdb-dev" shape="box"];
  "sha256:b341b7cfe348888e5b3b317f9521e3dbc7e1a00e524630b2ab5adeab20b2cce8" [label="mkdir{path=/opt}" shape="note"];
  "sha256:7fb466deaee7ae9a9edf7d5e483f0fa01d8343a198f50e4f74f59c57afa42049" [label="/bin/sh -c wget https://bitbucket.org/pypy/pypy/downloads/pypy3-v6.0.0-linux64.tar.bz2" shape="box"];
  "sha256:59e4132947e191a58c3a24c6404bfbbbd7af8cd2b4d1b530f1ef43cb66fdcff7" [label="/bin/sh -c tar fxv pypy3-v6.0.0-linux64.tar.bz2" shape="box"];
  "sha256:166218f35a19701ef9a56c1a42e0364ae73169b62f49d90ed94607dbf5a0bee1" [label="/bin/sh -c ln -s /opt/pypy3-v6.0.0-linux64/bin/pypy3 /usr/bin/pypy3" shape="box"];
  "sha256:bfde21fc88044fb580ad5f256cdc2bb1c5cf4927d00e849e378d447dbe59f6ae" [label="/bin/sh -c pypy3 -m ensurepip" shape="box"];
  "sha256:a775d483ab8921a76369565eab385a2f9d5935737fe6f4760b2b987ee6345d81" [label="/bin/sh -c curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py" shape="box"];
  "sha256:c65f65357167fb0a463450c283143135e3577dd821c5d91ae20400d28c6b0d38" [label="/bin/sh -c python3 get-pip.py" shape="box"];
  "sha256:2908d73a85b75d45637d1645ae2613f9940a7b325746f4003918fb0d4224aa97" [label="/bin/sh -c apt-get update && apt-get install -y locales" shape="box"];
  "sha256:549c3597e295d6d54d806eb2e28ea4817ffb12a1373cad3cf0bab63ec2d1959e" [label="/bin/sh -c locale-gen en_US.UTF-8 && dpkg-reconfigure --frontend noninteractive locales" shape="box"];
  "sha256:5db61f5a92e22339f2fb5295b8e484eee3cf4e1069fcee935aa55464a822f553" [label="/bin/sh -c mkdir /code" shape="box"];
  "sha256:8485858d14bda186a0e8897511a0f3f2342a117ee6c0f5111a839f5c612c9d74" [label="mkdir{path=/code}" shape="note"];
  "sha256:549aa5d68a9401e0de231304e6a548ffa5e7f838b06924ffc5080fa9d1950c3b" [label="/bin/sh -c git clone https://github.com/QuarkChain/pyquarkchain.git" shape="box"];
  "sha256:97ff44603baeae8534729665ee5309434e1188b85c972b49348b2938d43bf2ad" [label="/bin/sh -c pypy3 -m pip install -r pyquarkchain/requirements.txt" shape="box"];
  "sha256:011ac2d74b4152a704405471117162936f1deabf780ec2243ed4a0faf4bf5958" [label="/bin/sh -c python3 -m pip install -r pyquarkchain/requirements.txt" shape="box"];
  "sha256:27cb55fbb8fe54dd4e74765c34e78593d3fe70dc357765832ff7963b6eb7c4de" [label="mkdir{path=/code/pyquarkchain/qkchash}" shape="note"];
  "sha256:a5f7ab84113d07f3a9cedc5f8f94f5df69286d7da3f52e248bffdef891bc88a9" [label="/bin/sh -c make" shape="box"];
  "sha256:5ea700ceabc124f08f946b684d246cacb832e348ec5fb20a904263e91dbb51e5" [label="mkdir{path=/code/pyquarkchain}" shape="note"];
  "sha256:a0e1e44d1b0e4e5e9644cf3ba1d4d2833dad4bf19eb5c151aca57476a7b670ac" [label="sha256:a0e1e44d1b0e4e5e9644cf3ba1d4d2833dad4bf19eb5c151aca57476a7b670ac" shape="plaintext"];
  "sha256:d20029e6da5ee62f143d53bd3ac8bc169940d82a921fe26eaaf03f2977c65579" -> "sha256:a55ed6826bc42920d696052c3514935c254cfdcea9ac8d05c943bbc7a0673647" [label=""];
  "sha256:a55ed6826bc42920d696052c3514935c254cfdcea9ac8d05c943bbc7a0673647" -> "sha256:9299e2d3024eda384aaf4384da4b70abdacd1a912a91ebec94ebd3dd78e305df" [label=""];
  "sha256:9299e2d3024eda384aaf4384da4b70abdacd1a912a91ebec94ebd3dd78e305df" -> "sha256:9881cc1cb7905381a68d943a59ed6031ee6aa17612503dbf2b0211fd3a147a77" [label=""];
  "sha256:9881cc1cb7905381a68d943a59ed6031ee6aa17612503dbf2b0211fd3a147a77" -> "sha256:b341b7cfe348888e5b3b317f9521e3dbc7e1a00e524630b2ab5adeab20b2cce8" [label=""];
  "sha256:b341b7cfe348888e5b3b317f9521e3dbc7e1a00e524630b2ab5adeab20b2cce8" -> "sha256:7fb466deaee7ae9a9edf7d5e483f0fa01d8343a198f50e4f74f59c57afa42049" [label=""];
  "sha256:7fb466deaee7ae9a9edf7d5e483f0fa01d8343a198f50e4f74f59c57afa42049" -> "sha256:59e4132947e191a58c3a24c6404bfbbbd7af8cd2b4d1b530f1ef43cb66fdcff7" [label=""];
  "sha256:59e4132947e191a58c3a24c6404bfbbbd7af8cd2b4d1b530f1ef43cb66fdcff7" -> "sha256:166218f35a19701ef9a56c1a42e0364ae73169b62f49d90ed94607dbf5a0bee1" [label=""];
  "sha256:166218f35a19701ef9a56c1a42e0364ae73169b62f49d90ed94607dbf5a0bee1" -> "sha256:bfde21fc88044fb580ad5f256cdc2bb1c5cf4927d00e849e378d447dbe59f6ae" [label=""];
  "sha256:bfde21fc88044fb580ad5f256cdc2bb1c5cf4927d00e849e378d447dbe59f6ae" -> "sha256:a775d483ab8921a76369565eab385a2f9d5935737fe6f4760b2b987ee6345d81" [label=""];
  "sha256:a775d483ab8921a76369565eab385a2f9d5935737fe6f4760b2b987ee6345d81" -> "sha256:c65f65357167fb0a463450c283143135e3577dd821c5d91ae20400d28c6b0d38" [label=""];
  "sha256:c65f65357167fb0a463450c283143135e3577dd821c5d91ae20400d28c6b0d38" -> "sha256:2908d73a85b75d45637d1645ae2613f9940a7b325746f4003918fb0d4224aa97" [label=""];
  "sha256:2908d73a85b75d45637d1645ae2613f9940a7b325746f4003918fb0d4224aa97" -> "sha256:549c3597e295d6d54d806eb2e28ea4817ffb12a1373cad3cf0bab63ec2d1959e" [label=""];
  "sha256:549c3597e295d6d54d806eb2e28ea4817ffb12a1373cad3cf0bab63ec2d1959e" -> "sha256:5db61f5a92e22339f2fb5295b8e484eee3cf4e1069fcee935aa55464a822f553" [label=""];
  "sha256:5db61f5a92e22339f2fb5295b8e484eee3cf4e1069fcee935aa55464a822f553" -> "sha256:8485858d14bda186a0e8897511a0f3f2342a117ee6c0f5111a839f5c612c9d74" [label=""];
  "sha256:8485858d14bda186a0e8897511a0f3f2342a117ee6c0f5111a839f5c612c9d74" -> "sha256:549aa5d68a9401e0de231304e6a548ffa5e7f838b06924ffc5080fa9d1950c3b" [label=""];
  "sha256:549aa5d68a9401e0de231304e6a548ffa5e7f838b06924ffc5080fa9d1950c3b" -> "sha256:97ff44603baeae8534729665ee5309434e1188b85c972b49348b2938d43bf2ad" [label=""];
  "sha256:97ff44603baeae8534729665ee5309434e1188b85c972b49348b2938d43bf2ad" -> "sha256:011ac2d74b4152a704405471117162936f1deabf780ec2243ed4a0faf4bf5958" [label=""];
  "sha256:011ac2d74b4152a704405471117162936f1deabf780ec2243ed4a0faf4bf5958" -> "sha256:27cb55fbb8fe54dd4e74765c34e78593d3fe70dc357765832ff7963b6eb7c4de" [label=""];
  "sha256:27cb55fbb8fe54dd4e74765c34e78593d3fe70dc357765832ff7963b6eb7c4de" -> "sha256:a5f7ab84113d07f3a9cedc5f8f94f5df69286d7da3f52e248bffdef891bc88a9" [label=""];
  "sha256:a5f7ab84113d07f3a9cedc5f8f94f5df69286d7da3f52e248bffdef891bc88a9" -> "sha256:5ea700ceabc124f08f946b684d246cacb832e348ec5fb20a904263e91dbb51e5" [label=""];
  "sha256:5ea700ceabc124f08f946b684d246cacb832e348ec5fb20a904263e91dbb51e5" -> "sha256:a0e1e44d1b0e4e5e9644cf3ba1d4d2833dad4bf19eb5c151aca57476a7b670ac" [label=""];
}

