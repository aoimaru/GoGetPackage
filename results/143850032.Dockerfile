[app/sources/143850032.Dockerfile]
digraph {
  "sha256:8cffeadf199a60a7b1e1b499ce43985e780c07f053a14b444c52cfbf23474fd5" [label="docker-image://docker.io/library/ubuntu:14.10" shape="ellipse"];
  "sha256:22e159910986fe86d56324532cc612f110190ce690146ff306862bd93b1b8332" [label="/bin/sh -c apt-get update && apt-get install -y curl" shape="box"];
  "sha256:80eecd8f7d31c1f7f32f98e2b332763f940caacca3fee53673b6d4c120a51a26" [label="/bin/sh -c mkdir -p /mongodb/ ;   curl -s http://downloads.mongodb.org/linux/mongodb-linux-x86_64-[% version %].tgz | tar -v -C /mongodb/ -xz" shape="box"];
  "sha256:8c7456819bb311ebc33359a743b40f0472dfc1b724deec9f551b8babf520f82c" [label="/bin/sh -c ln -s /mongodb/mongodb-linux-x86_64-[% version %]/bin/mongod /usr/bin/mongod" shape="box"];
  "sha256:2c27891837f960c2c0b2ddf1dab81840dba4aa0212f13b2b1d25977e92519d5a" [label="sha256:2c27891837f960c2c0b2ddf1dab81840dba4aa0212f13b2b1d25977e92519d5a" shape="plaintext"];
  "sha256:8cffeadf199a60a7b1e1b499ce43985e780c07f053a14b444c52cfbf23474fd5" -> "sha256:22e159910986fe86d56324532cc612f110190ce690146ff306862bd93b1b8332" [label=""];
  "sha256:22e159910986fe86d56324532cc612f110190ce690146ff306862bd93b1b8332" -> "sha256:80eecd8f7d31c1f7f32f98e2b332763f940caacca3fee53673b6d4c120a51a26" [label=""];
  "sha256:80eecd8f7d31c1f7f32f98e2b332763f940caacca3fee53673b6d4c120a51a26" -> "sha256:8c7456819bb311ebc33359a743b40f0472dfc1b724deec9f551b8babf520f82c" [label=""];
  "sha256:8c7456819bb311ebc33359a743b40f0472dfc1b724deec9f551b8babf520f82c" -> "sha256:2c27891837f960c2c0b2ddf1dab81840dba4aa0212f13b2b1d25977e92519d5a" [label=""];
}

