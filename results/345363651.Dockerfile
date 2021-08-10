[app/sources/345363651.Dockerfile]
digraph {
  "sha256:9aaf17bf030a4397d5ac4d0b1b69414866bc7c9afd735634a3049e4976c1374d" [label="docker-image://docker.io/balenalib/armv7hf-ubuntu:trusty-run" shape="ellipse"];
  "sha256:217ab4af33169def02a4e1bc3e3ea921d0fc39a18d504201d26166bd938436dc" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:ec8ac5c80e8962c3d8021e32a4e20ac7aaf326543e313cce48fe2d398bc6a7d0" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f61434190664769e4269d6175c62c891f652dac066c410566ff76da1c18c3c15  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:daaa8c0f6f60541397aaeba96634e91e40cc619dca92eb9555ded0f17246e5e0" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:75412daae2c162a9db0896577840231454804573d2ee7ef1f7e4d5f67086da6e" [label="mkdir{path=/go}" shape="note"];
  "sha256:a6145ca4b03d11b2468d478dd03da167eaa988cf5e093f38b53c1ae45f17a26d" [label="sha256:a6145ca4b03d11b2468d478dd03da167eaa988cf5e093f38b53c1ae45f17a26d" shape="plaintext"];
  "sha256:9aaf17bf030a4397d5ac4d0b1b69414866bc7c9afd735634a3049e4976c1374d" -> "sha256:217ab4af33169def02a4e1bc3e3ea921d0fc39a18d504201d26166bd938436dc" [label=""];
  "sha256:217ab4af33169def02a4e1bc3e3ea921d0fc39a18d504201d26166bd938436dc" -> "sha256:ec8ac5c80e8962c3d8021e32a4e20ac7aaf326543e313cce48fe2d398bc6a7d0" [label=""];
  "sha256:ec8ac5c80e8962c3d8021e32a4e20ac7aaf326543e313cce48fe2d398bc6a7d0" -> "sha256:daaa8c0f6f60541397aaeba96634e91e40cc619dca92eb9555ded0f17246e5e0" [label=""];
  "sha256:daaa8c0f6f60541397aaeba96634e91e40cc619dca92eb9555ded0f17246e5e0" -> "sha256:75412daae2c162a9db0896577840231454804573d2ee7ef1f7e4d5f67086da6e" [label=""];
  "sha256:75412daae2c162a9db0896577840231454804573d2ee7ef1f7e4d5f67086da6e" -> "sha256:a6145ca4b03d11b2468d478dd03da167eaa988cf5e093f38b53c1ae45f17a26d" [label=""];
}

