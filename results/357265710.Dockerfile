[app/sources/357265710.Dockerfile]
digraph {
  "sha256:7bb87122bec8b0cb8b251cd5503ccca1cd47cd9e8d969b0be9c32eab24bc46d2" [label="docker-image://docker.io/library/ruby:2.6.3" shape="ellipse"];
  "sha256:b7efad9516382a684fb3088ad1ffeafd80cbd620eee2944f8c3e95b6e6c7e159" [label="/bin/sh -c mkdir -p $INSTALL_PATH" shape="box"];
  "sha256:5193e0effe9e19b17dc7d4cb13405ceaaafeaa8dbe82f240e2670b1823b0cd5a" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:172b39286a45d3efa50d1944f9fc344ba504b8c9a8b5288967633330f6baa1af" [label="local://context" shape="ellipse"];
  "sha256:de33c266813b7b4171e7facc4cfb1d58a9056a6c1b3f2fb253f4431c925e642a" [label="copy{src=/Gemfile, dest=/usr/src/app/},copy{src=/Gemfile.lock, dest=/usr/src/app/}" shape="note"];
  "sha256:ee125ddbeccda3c309eca67a2fa32d28d59faa5cea69f0bb533fb488e4c1a946" [label="/bin/sh -c bundle install" shape="box"];
  "sha256:d08b45593a73527fabf36992747cdff3377f73b68ebd956e9cf6026d4c2c1f12" [label="copy{src=/, dest=/usr/src/app/}" shape="note"];
  "sha256:051ebbcd947cc021aa5acc60a547247cbd8327e07893f72fc9de06cbf4d0049c" [label="sha256:051ebbcd947cc021aa5acc60a547247cbd8327e07893f72fc9de06cbf4d0049c" shape="plaintext"];
  "sha256:7bb87122bec8b0cb8b251cd5503ccca1cd47cd9e8d969b0be9c32eab24bc46d2" -> "sha256:b7efad9516382a684fb3088ad1ffeafd80cbd620eee2944f8c3e95b6e6c7e159" [label=""];
  "sha256:b7efad9516382a684fb3088ad1ffeafd80cbd620eee2944f8c3e95b6e6c7e159" -> "sha256:5193e0effe9e19b17dc7d4cb13405ceaaafeaa8dbe82f240e2670b1823b0cd5a" [label=""];
  "sha256:5193e0effe9e19b17dc7d4cb13405ceaaafeaa8dbe82f240e2670b1823b0cd5a" -> "sha256:de33c266813b7b4171e7facc4cfb1d58a9056a6c1b3f2fb253f4431c925e642a" [label=""];
  "sha256:172b39286a45d3efa50d1944f9fc344ba504b8c9a8b5288967633330f6baa1af" -> "sha256:de33c266813b7b4171e7facc4cfb1d58a9056a6c1b3f2fb253f4431c925e642a" [label=""];
  "sha256:de33c266813b7b4171e7facc4cfb1d58a9056a6c1b3f2fb253f4431c925e642a" -> "sha256:ee125ddbeccda3c309eca67a2fa32d28d59faa5cea69f0bb533fb488e4c1a946" [label=""];
  "sha256:ee125ddbeccda3c309eca67a2fa32d28d59faa5cea69f0bb533fb488e4c1a946" -> "sha256:d08b45593a73527fabf36992747cdff3377f73b68ebd956e9cf6026d4c2c1f12" [label=""];
  "sha256:172b39286a45d3efa50d1944f9fc344ba504b8c9a8b5288967633330f6baa1af" -> "sha256:d08b45593a73527fabf36992747cdff3377f73b68ebd956e9cf6026d4c2c1f12" [label=""];
  "sha256:d08b45593a73527fabf36992747cdff3377f73b68ebd956e9cf6026d4c2c1f12" -> "sha256:051ebbcd947cc021aa5acc60a547247cbd8327e07893f72fc9de06cbf4d0049c" [label=""];
}

