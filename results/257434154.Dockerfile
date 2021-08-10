[app/sources/257434154.Dockerfile]
digraph {
  "sha256:7d4ccea9099c68cc5754493df7fbc534bfbfa92174000a33629e76d163c4a3b5" [label="docker-image://mcr.microsoft.com/mssql/server:2017-latest-ubuntu@sha256:24e58f079a083e975b0066f30bec7301d5a2cb0aad0cc50156218ae1c3d757c6" shape="ellipse"];
  "sha256:cf64fd724feaf7b9635568dfa857fa98ae139b29203ed49eb8483de8065f0116" [label="local://context" shape="ellipse"];
  "sha256:ebe3b49ef4935b69e50d9fbdd56e42cc706dba548b6102707e44f6d273387ff3" [label="copy{src=/entrypoint.sh, dest=/}" shape="note"];
  "sha256:34a9200f76c74dd5f9042712b06b6edbbb7f8b78356e29f1ed7c8c1d25e1af66" [label="copy{src=/init.sh, dest=/}" shape="note"];
  "sha256:7d1af1356ca9ea817db21500e1ab68691d6d2a2e67330a744f9aeec935e9bbbf" [label="/bin/bash -c chmod +x /entrypoint.sh && chmod +x /init.sh" shape="box"];
  "sha256:4dcd3d8a5ea039225d036e0f0ea8dd2705846a4e9f28f16b1f3e01729450e8c1" [label="sha256:4dcd3d8a5ea039225d036e0f0ea8dd2705846a4e9f28f16b1f3e01729450e8c1" shape="plaintext"];
  "sha256:7d4ccea9099c68cc5754493df7fbc534bfbfa92174000a33629e76d163c4a3b5" -> "sha256:ebe3b49ef4935b69e50d9fbdd56e42cc706dba548b6102707e44f6d273387ff3" [label=""];
  "sha256:cf64fd724feaf7b9635568dfa857fa98ae139b29203ed49eb8483de8065f0116" -> "sha256:ebe3b49ef4935b69e50d9fbdd56e42cc706dba548b6102707e44f6d273387ff3" [label=""];
  "sha256:ebe3b49ef4935b69e50d9fbdd56e42cc706dba548b6102707e44f6d273387ff3" -> "sha256:34a9200f76c74dd5f9042712b06b6edbbb7f8b78356e29f1ed7c8c1d25e1af66" [label=""];
  "sha256:cf64fd724feaf7b9635568dfa857fa98ae139b29203ed49eb8483de8065f0116" -> "sha256:34a9200f76c74dd5f9042712b06b6edbbb7f8b78356e29f1ed7c8c1d25e1af66" [label=""];
  "sha256:34a9200f76c74dd5f9042712b06b6edbbb7f8b78356e29f1ed7c8c1d25e1af66" -> "sha256:7d1af1356ca9ea817db21500e1ab68691d6d2a2e67330a744f9aeec935e9bbbf" [label=""];
  "sha256:7d1af1356ca9ea817db21500e1ab68691d6d2a2e67330a744f9aeec935e9bbbf" -> "sha256:4dcd3d8a5ea039225d036e0f0ea8dd2705846a4e9f28f16b1f3e01729450e8c1" [label=""];
}

