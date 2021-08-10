[app/sources/284083969.Dockerfile]
digraph {
  "sha256:04738136a19bd4f157b7af383dbbb0e56f5a732db3250ff0189c7d31edbc2a45" [label="docker-image://docker.io/opbeans/opbeans-ruby:latest" shape="ellipse"];
  "sha256:28531b1584994104c25c4bff4f661b14bb28b8775fecdb70b6d00c5ee8d3f8ed" [label="local://context" shape="ellipse"];
  "sha256:017fd46591d5123e6b57a91a82b8c2c0286c4e46729902b6433245f500f08316" [label="copy{src=/entrypoint.sh, dest=/app/entrypoint.sh}" shape="note"];
  "sha256:aee5c7dbd4b00653b5c4e1bd9ab723b0d4cec4f0a0c1895834a89d885f3c28b5" [label="sha256:aee5c7dbd4b00653b5c4e1bd9ab723b0d4cec4f0a0c1895834a89d885f3c28b5" shape="plaintext"];
  "sha256:04738136a19bd4f157b7af383dbbb0e56f5a732db3250ff0189c7d31edbc2a45" -> "sha256:017fd46591d5123e6b57a91a82b8c2c0286c4e46729902b6433245f500f08316" [label=""];
  "sha256:28531b1584994104c25c4bff4f661b14bb28b8775fecdb70b6d00c5ee8d3f8ed" -> "sha256:017fd46591d5123e6b57a91a82b8c2c0286c4e46729902b6433245f500f08316" [label=""];
  "sha256:017fd46591d5123e6b57a91a82b8c2c0286c4e46729902b6433245f500f08316" -> "sha256:aee5c7dbd4b00653b5c4e1bd9ab723b0d4cec4f0a0c1895834a89d885f3c28b5" [label=""];
}

