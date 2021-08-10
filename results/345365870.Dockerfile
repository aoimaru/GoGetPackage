[app/sources/345365870.Dockerfile]
digraph {
  "sha256:0e49bf0f85a6251c4c384299e909d45f4739a423aae30835495c0ee616a96e5f" [label="docker-image://docker.io/balenalib/fincm3-ubuntu:bionic-build" shape="ellipse"];
  "sha256:fb06c7ab599df678aabb0abb16c8b8f348e2541c3bc5c60ff01c6b8a00a7d644" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f61434190664769e4269d6175c62c891f652dac066c410566ff76da1c18c3c15  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:7a3eb477130ef8b4efab817d0366227df2a09cfe6b8cc45c6314e622fd28c25b" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:a8f0e3f9878ec06134de81a1c55ed5ae7e79345ed2df3c1105e6e973cfcf1684" [label="mkdir{path=/go}" shape="note"];
  "sha256:fc1bb73803107038a2a09642b748ce0fe33744c4fbb4edeb1ac1eb6d2c63edfc" [label="sha256:fc1bb73803107038a2a09642b748ce0fe33744c4fbb4edeb1ac1eb6d2c63edfc" shape="plaintext"];
  "sha256:0e49bf0f85a6251c4c384299e909d45f4739a423aae30835495c0ee616a96e5f" -> "sha256:fb06c7ab599df678aabb0abb16c8b8f348e2541c3bc5c60ff01c6b8a00a7d644" [label=""];
  "sha256:fb06c7ab599df678aabb0abb16c8b8f348e2541c3bc5c60ff01c6b8a00a7d644" -> "sha256:7a3eb477130ef8b4efab817d0366227df2a09cfe6b8cc45c6314e622fd28c25b" [label=""];
  "sha256:7a3eb477130ef8b4efab817d0366227df2a09cfe6b8cc45c6314e622fd28c25b" -> "sha256:a8f0e3f9878ec06134de81a1c55ed5ae7e79345ed2df3c1105e6e973cfcf1684" [label=""];
  "sha256:a8f0e3f9878ec06134de81a1c55ed5ae7e79345ed2df3c1105e6e973cfcf1684" -> "sha256:fc1bb73803107038a2a09642b748ce0fe33744c4fbb4edeb1ac1eb6d2c63edfc" [label=""];
}

