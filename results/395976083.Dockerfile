[app/sources/395976083.Dockerfile]
digraph {
  "sha256:a6e599f7ff249667003523783f1c96cc7be7735699806462f5da1fe897012158" [label="docker-image://docker.io/library/java:8-jre" shape="ellipse"];
  "sha256:25db951d8ba2fd5352692e222b7a419027c3e55fa5beb5fde7deecc8649bfe1d" [label="local://context" shape="ellipse"];
  "sha256:ba70be07da7840e6d899851559b924bc2b9e58be40d44cfc19736942bd6452ff" [label="copy{src=/jar/vole-config.jar, dest=/app/}" shape="note"];
  "sha256:0b59f809ae163b16da748fec0cfd43a0a374281b7fc321b22f40180e0f39c12c" [label="sha256:0b59f809ae163b16da748fec0cfd43a0a374281b7fc321b22f40180e0f39c12c" shape="plaintext"];
  "sha256:a6e599f7ff249667003523783f1c96cc7be7735699806462f5da1fe897012158" -> "sha256:ba70be07da7840e6d899851559b924bc2b9e58be40d44cfc19736942bd6452ff" [label=""];
  "sha256:25db951d8ba2fd5352692e222b7a419027c3e55fa5beb5fde7deecc8649bfe1d" -> "sha256:ba70be07da7840e6d899851559b924bc2b9e58be40d44cfc19736942bd6452ff" [label=""];
  "sha256:ba70be07da7840e6d899851559b924bc2b9e58be40d44cfc19736942bd6452ff" -> "sha256:0b59f809ae163b16da748fec0cfd43a0a374281b7fc321b22f40180e0f39c12c" [label=""];
}

