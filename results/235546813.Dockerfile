[app/sources/235546813.Dockerfile]
digraph {
  "sha256:8133dd20b9808974f45451a35964fa369ea3d0fec9768ae9f644b196fe6a7cf6" [label="docker-image://docker.io/microsoft/dotnet:2.0.0-runtime-nanoserver-1709" shape="ellipse"];
  "sha256:7fc9550dd691524ced57ab8541072d9efa28cd47bdaa1331599da71acf8e0d52" [label="mkdir{path=/app}" shape="note"];
  "sha256:4c5481bfb93c4682f1e7ffd524a3ea0710f3c84699137da3863f609a7dc11578" [label="local://context" shape="ellipse"];
  "sha256:00b000337964f876f35c5c620ab20a16a7bcfcecb98827c4e3604be3b02819f3" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:d5dba311a60d6cc2de829920dc6e140a8b6b98632fd19d929d7ad1782a7873e8" [label="sha256:d5dba311a60d6cc2de829920dc6e140a8b6b98632fd19d929d7ad1782a7873e8" shape="plaintext"];
  "sha256:8133dd20b9808974f45451a35964fa369ea3d0fec9768ae9f644b196fe6a7cf6" -> "sha256:7fc9550dd691524ced57ab8541072d9efa28cd47bdaa1331599da71acf8e0d52" [label=""];
  "sha256:7fc9550dd691524ced57ab8541072d9efa28cd47bdaa1331599da71acf8e0d52" -> "sha256:00b000337964f876f35c5c620ab20a16a7bcfcecb98827c4e3604be3b02819f3" [label=""];
  "sha256:4c5481bfb93c4682f1e7ffd524a3ea0710f3c84699137da3863f609a7dc11578" -> "sha256:00b000337964f876f35c5c620ab20a16a7bcfcecb98827c4e3604be3b02819f3" [label=""];
  "sha256:00b000337964f876f35c5c620ab20a16a7bcfcecb98827c4e3604be3b02819f3" -> "sha256:d5dba311a60d6cc2de829920dc6e140a8b6b98632fd19d929d7ad1782a7873e8" [label=""];
}

