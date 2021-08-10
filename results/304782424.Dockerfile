[app/sources/304782424.Dockerfile]
digraph {
  "sha256:f8c7400d747325d80547832e318fb7d41fff7878d625b9e22d3fcc556d8f2be3" [label="docker-image://docker.io/library/clojure:latest" shape="ellipse"];
  "sha256:fe2fe17bd1613f8578fe193649d2da5a6e5016fa68873a79afef9e8dfd29ea9f" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:7849be99593bddc53fe961c97457fd0e6cad85e69daa176f00f646d82de71fb4" [label="/bin/sh -c mkdir -p /usr/src/app" shape="box"];
  "sha256:9427bc64aea24d8cd8a4794a20ad1166ab1b544976ef5198a2e86f14f147f79d" [label="local://context" shape="ellipse"];
  "sha256:b9ea634e3d81e26be842b5aa6020da4da3e03a1aae407810c6093ef427ad2f7c" [label="copy{src=/project.clj, dest=/usr/src/app/}" shape="note"];
  "sha256:efae356816c96b1e5eed3ceb5b1e4ed5ac7f7efd602b2aa48c80359d31410c6d" [label="/bin/sh -c lein deps" shape="box"];
  "sha256:22d7c59d96a8a10dbb36ce8da4f97688365300d867fc16715a737c67c2ac1276" [label="copy{src=/, dest=/usr/src/app}" shape="note"];
  "sha256:d9ecd129c5923efcdb94eef9d0f1265efeed0b28a4c74dad365c9c696061b63b" [label="sha256:d9ecd129c5923efcdb94eef9d0f1265efeed0b28a4c74dad365c9c696061b63b" shape="plaintext"];
  "sha256:f8c7400d747325d80547832e318fb7d41fff7878d625b9e22d3fcc556d8f2be3" -> "sha256:fe2fe17bd1613f8578fe193649d2da5a6e5016fa68873a79afef9e8dfd29ea9f" [label=""];
  "sha256:fe2fe17bd1613f8578fe193649d2da5a6e5016fa68873a79afef9e8dfd29ea9f" -> "sha256:7849be99593bddc53fe961c97457fd0e6cad85e69daa176f00f646d82de71fb4" [label=""];
  "sha256:7849be99593bddc53fe961c97457fd0e6cad85e69daa176f00f646d82de71fb4" -> "sha256:b9ea634e3d81e26be842b5aa6020da4da3e03a1aae407810c6093ef427ad2f7c" [label=""];
  "sha256:9427bc64aea24d8cd8a4794a20ad1166ab1b544976ef5198a2e86f14f147f79d" -> "sha256:b9ea634e3d81e26be842b5aa6020da4da3e03a1aae407810c6093ef427ad2f7c" [label=""];
  "sha256:b9ea634e3d81e26be842b5aa6020da4da3e03a1aae407810c6093ef427ad2f7c" -> "sha256:efae356816c96b1e5eed3ceb5b1e4ed5ac7f7efd602b2aa48c80359d31410c6d" [label=""];
  "sha256:efae356816c96b1e5eed3ceb5b1e4ed5ac7f7efd602b2aa48c80359d31410c6d" -> "sha256:22d7c59d96a8a10dbb36ce8da4f97688365300d867fc16715a737c67c2ac1276" [label=""];
  "sha256:9427bc64aea24d8cd8a4794a20ad1166ab1b544976ef5198a2e86f14f147f79d" -> "sha256:22d7c59d96a8a10dbb36ce8da4f97688365300d867fc16715a737c67c2ac1276" [label=""];
  "sha256:22d7c59d96a8a10dbb36ce8da4f97688365300d867fc16715a737c67c2ac1276" -> "sha256:d9ecd129c5923efcdb94eef9d0f1265efeed0b28a4c74dad365c9c696061b63b" [label=""];
}

