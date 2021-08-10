[app/sources/252786775.Dockerfile]
digraph {
  "sha256:07c7ab6b0feaae8d7b19505eaa124f1cbc7cf52ddb48bfa1bae346d678575594" [label="docker-image://docker.io/library/node:slim" shape="ellipse"];
  "sha256:f3179343f7b5aea8070c9506663cd1916c4c8a9a39bc8cbb0124ab1f28663d49" [label="local://context" shape="ellipse"];
  "sha256:037b7561822dc4d2e48b8a8c9f9b3c3ab7c39953bd845af6de1452bec7b62d3a" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:eaadd0aad36e08da66fa6c69bb0221329f1997b26c83a6d93048dc401b09f879" [label="/bin/sh -c cd /app && npm install --production" shape="box"];
  "sha256:5f797f1db1a461e30bb7b35e9fad03d521a1ab9993d5a1149602b63c821384ba" [label="mkdir{path=/app}" shape="note"];
  "sha256:f2705c44dac4234dd34e958b93d8893ade4677dd48b2b8e5248b83c30a53d315" [label="sha256:f2705c44dac4234dd34e958b93d8893ade4677dd48b2b8e5248b83c30a53d315" shape="plaintext"];
  "sha256:07c7ab6b0feaae8d7b19505eaa124f1cbc7cf52ddb48bfa1bae346d678575594" -> "sha256:037b7561822dc4d2e48b8a8c9f9b3c3ab7c39953bd845af6de1452bec7b62d3a" [label=""];
  "sha256:f3179343f7b5aea8070c9506663cd1916c4c8a9a39bc8cbb0124ab1f28663d49" -> "sha256:037b7561822dc4d2e48b8a8c9f9b3c3ab7c39953bd845af6de1452bec7b62d3a" [label=""];
  "sha256:037b7561822dc4d2e48b8a8c9f9b3c3ab7c39953bd845af6de1452bec7b62d3a" -> "sha256:eaadd0aad36e08da66fa6c69bb0221329f1997b26c83a6d93048dc401b09f879" [label=""];
  "sha256:eaadd0aad36e08da66fa6c69bb0221329f1997b26c83a6d93048dc401b09f879" -> "sha256:5f797f1db1a461e30bb7b35e9fad03d521a1ab9993d5a1149602b63c821384ba" [label=""];
  "sha256:5f797f1db1a461e30bb7b35e9fad03d521a1ab9993d5a1149602b63c821384ba" -> "sha256:f2705c44dac4234dd34e958b93d8893ade4677dd48b2b8e5248b83c30a53d315" [label=""];
}

