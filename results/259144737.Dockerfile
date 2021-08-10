[app/sources/259144737.Dockerfile]
digraph {
  "sha256:b145f0ad9ae9a60f6de4b81d9ba792548eefa51430e720eb67d23392494d4db4" [label="docker-image://docker.io/library/redis:latest" shape="ellipse"];
  "sha256:332a2a1333d2b6ad16a5e884e9af45cdc8e79b91207f05a52a3f4d77719614da" [label="local://context" shape="ellipse"];
  "sha256:e94847a310c5d3e42301ffce8b57ad9ffeb3677f35f9c0e897665270708c66b5" [label="copy{src=/run.sh, dest=/run.sh}" shape="note"];
  "sha256:10a70da8522cc5f2391a24e68ee4cd23db9a6957ab5bc9096d402e2ce5a4de3f" [label="sha256:10a70da8522cc5f2391a24e68ee4cd23db9a6957ab5bc9096d402e2ce5a4de3f" shape="plaintext"];
  "sha256:b145f0ad9ae9a60f6de4b81d9ba792548eefa51430e720eb67d23392494d4db4" -> "sha256:e94847a310c5d3e42301ffce8b57ad9ffeb3677f35f9c0e897665270708c66b5" [label=""];
  "sha256:332a2a1333d2b6ad16a5e884e9af45cdc8e79b91207f05a52a3f4d77719614da" -> "sha256:e94847a310c5d3e42301ffce8b57ad9ffeb3677f35f9c0e897665270708c66b5" [label=""];
  "sha256:e94847a310c5d3e42301ffce8b57ad9ffeb3677f35f9c0e897665270708c66b5" -> "sha256:10a70da8522cc5f2391a24e68ee4cd23db9a6957ab5bc9096d402e2ce5a4de3f" [label=""];
}

