[app/sources/295952284.Dockerfile]
digraph {
  "sha256:24823b44b901bc6c544e0a2126d96b43b107b33878d67393998d419534cc9219" [label="docker-image://docker.io/library/swift:latest" shape="ellipse"];
  "sha256:52631170e06bfdd4272662a74d9355335b82a8f8308d7a5d0ebd61a5e601dac4" [label="mkdir{path=/swift-vapor}" shape="note"];
  "sha256:885b90baf95eb859329e9f1c79923b909f322748755a578921d47eaf56e87bd0" [label="local://context" shape="ellipse"];
  "sha256:c7da902a973547ed5d3b41a0fc7173735a96d56723fdd9dfdf88a3f389ba88a6" [label="copy{src=/, dest=/swift-vapor}" shape="note"];
  "sha256:feacab3c0bffde42191fa969b8328af83d99259f17a3c6bb376d4819f0ac508d" [label="/bin/sh -c swift build" shape="box"];
  "sha256:4f1432721a9b78fefc3d0bba9e92d5195d1a21dbfede03b7a6b9f07f193762dc" [label="sha256:4f1432721a9b78fefc3d0bba9e92d5195d1a21dbfede03b7a6b9f07f193762dc" shape="plaintext"];
  "sha256:24823b44b901bc6c544e0a2126d96b43b107b33878d67393998d419534cc9219" -> "sha256:52631170e06bfdd4272662a74d9355335b82a8f8308d7a5d0ebd61a5e601dac4" [label=""];
  "sha256:52631170e06bfdd4272662a74d9355335b82a8f8308d7a5d0ebd61a5e601dac4" -> "sha256:c7da902a973547ed5d3b41a0fc7173735a96d56723fdd9dfdf88a3f389ba88a6" [label=""];
  "sha256:885b90baf95eb859329e9f1c79923b909f322748755a578921d47eaf56e87bd0" -> "sha256:c7da902a973547ed5d3b41a0fc7173735a96d56723fdd9dfdf88a3f389ba88a6" [label=""];
  "sha256:c7da902a973547ed5d3b41a0fc7173735a96d56723fdd9dfdf88a3f389ba88a6" -> "sha256:feacab3c0bffde42191fa969b8328af83d99259f17a3c6bb376d4819f0ac508d" [label=""];
  "sha256:feacab3c0bffde42191fa969b8328af83d99259f17a3c6bb376d4819f0ac508d" -> "sha256:4f1432721a9b78fefc3d0bba9e92d5195d1a21dbfede03b7a6b9f07f193762dc" [label=""];
}

