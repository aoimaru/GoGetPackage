[app/sources/151389933.Dockerfile]
digraph {
  "sha256:f64d4a83486b304343e8de0d7e7b1839790c56b7cd76739707e98bbc871f9b3f" [label="docker-image://docker.io/library/ubuntu:12.04" shape="ellipse"];
  "sha256:707a222e0391f25a0123ad2277feec15d4c04f1d446bec9edf379b0746fb5011" [label="/bin/sh -c apt-get -y --force-yes install wget make gcc tcl sudo" shape="box"];
  "sha256:fa990054fbf6c142f8378ec0a351aa931d0882fef373183a676d365d59ebdc68" [label="/bin/sh -c wget –quiet http://download.redis.io/releases/redis-$REDIS_VERSION.tar.gz -O - | tar -xz" shape="box"];
  "sha256:981500fecac020119948bc811a086e5d92af9de86724aa4e3a33e56fc41a1b98" [label="/bin/sh -c cd /redis-$REDIS_VERSION && make && make test" shape="box"];
  "sha256:b0a1a5ac5e5cf09f4d1112c439b80c1527d2669211a31b947bdaaaf5a5d29315" [label="/bin/sh -c cp /redis-$REDIS_VERSION/src/redis-server /redis-$REDIS_VERSION/src/redis-cli /redis-$REDIS_VERSION/src/redis-benchmark /usr/local/bin" shape="box"];
  "sha256:5ee25c52640215eb1b9bd998d051b29c90f72757704b8c50856a949b901f2087" [label="local://context" shape="ellipse"];
  "sha256:1de3305f1a7ca88861f3d852c620c5a9d80e48a4c62d65521ebae8023e7edf54" [label="copy{src=/config/redis.conf, dest=/etc/redis/redis.conf}" shape="note"];
  "sha256:ab8de24819923fab0461a83924314afbe9bc72a7d9f7a56aba8f081e3d2b464a" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:9b04ad0d6e3628819d5c8c7edce38f2ea449b2da7a1e5de6321f878cd4dc21e4" [label="/bin/sh -c apt-get autoremove -y" shape="box"];
  "sha256:f210ce9259350bde2ad5f2c0d8158d2cb1cc26c265f5d4e72064bbc66c04d67b" [label="copy{src=/run, dest=/usr/local/bin/run}" shape="note"];
  "sha256:51ac2795fca0f79cd62d602d39610b737548b550ca2d00a4ae5f65c19f77f4ba" [label="/bin/sh -c chmod +x /usr/local/bin/run" shape="box"];
  "sha256:3ee3b9f744470f452b346250aa5210206b71e8997b482885cda807f2fb012e11" [label="sha256:3ee3b9f744470f452b346250aa5210206b71e8997b482885cda807f2fb012e11" shape="plaintext"];
  "sha256:f64d4a83486b304343e8de0d7e7b1839790c56b7cd76739707e98bbc871f9b3f" -> "sha256:707a222e0391f25a0123ad2277feec15d4c04f1d446bec9edf379b0746fb5011" [label=""];
  "sha256:707a222e0391f25a0123ad2277feec15d4c04f1d446bec9edf379b0746fb5011" -> "sha256:fa990054fbf6c142f8378ec0a351aa931d0882fef373183a676d365d59ebdc68" [label=""];
  "sha256:fa990054fbf6c142f8378ec0a351aa931d0882fef373183a676d365d59ebdc68" -> "sha256:981500fecac020119948bc811a086e5d92af9de86724aa4e3a33e56fc41a1b98" [label=""];
  "sha256:981500fecac020119948bc811a086e5d92af9de86724aa4e3a33e56fc41a1b98" -> "sha256:b0a1a5ac5e5cf09f4d1112c439b80c1527d2669211a31b947bdaaaf5a5d29315" [label=""];
  "sha256:b0a1a5ac5e5cf09f4d1112c439b80c1527d2669211a31b947bdaaaf5a5d29315" -> "sha256:1de3305f1a7ca88861f3d852c620c5a9d80e48a4c62d65521ebae8023e7edf54" [label=""];
  "sha256:5ee25c52640215eb1b9bd998d051b29c90f72757704b8c50856a949b901f2087" -> "sha256:1de3305f1a7ca88861f3d852c620c5a9d80e48a4c62d65521ebae8023e7edf54" [label=""];
  "sha256:1de3305f1a7ca88861f3d852c620c5a9d80e48a4c62d65521ebae8023e7edf54" -> "sha256:ab8de24819923fab0461a83924314afbe9bc72a7d9f7a56aba8f081e3d2b464a" [label=""];
  "sha256:ab8de24819923fab0461a83924314afbe9bc72a7d9f7a56aba8f081e3d2b464a" -> "sha256:9b04ad0d6e3628819d5c8c7edce38f2ea449b2da7a1e5de6321f878cd4dc21e4" [label=""];
  "sha256:9b04ad0d6e3628819d5c8c7edce38f2ea449b2da7a1e5de6321f878cd4dc21e4" -> "sha256:f210ce9259350bde2ad5f2c0d8158d2cb1cc26c265f5d4e72064bbc66c04d67b" [label=""];
  "sha256:5ee25c52640215eb1b9bd998d051b29c90f72757704b8c50856a949b901f2087" -> "sha256:f210ce9259350bde2ad5f2c0d8158d2cb1cc26c265f5d4e72064bbc66c04d67b" [label=""];
  "sha256:f210ce9259350bde2ad5f2c0d8158d2cb1cc26c265f5d4e72064bbc66c04d67b" -> "sha256:51ac2795fca0f79cd62d602d39610b737548b550ca2d00a4ae5f65c19f77f4ba" [label=""];
  "sha256:51ac2795fca0f79cd62d602d39610b737548b550ca2d00a4ae5f65c19f77f4ba" -> "sha256:3ee3b9f744470f452b346250aa5210206b71e8997b482885cda807f2fb012e11" [label=""];
}

