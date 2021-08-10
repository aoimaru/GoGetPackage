[app/sources/227860141.Dockerfile]
digraph {
  "sha256:3e589904eedc552af0f6b77aa9ac0eb309c534ecaa746af2197a543a38a57d3d" [label="local://context" shape="ellipse"];
  "sha256:d2ee5802ef4e66d369c54e82b95249fae39b2901680b3bf23f2a3f73eba58df0" [label="docker-image://docker.io/library/java:8" shape="ellipse"];
  "sha256:5fe2d4ead8fbd254ccf656718b36d2f337d6157d09071e2961d018003f4d94ef" [label="copy{src=/hystrix-1.0-SNAPSHOT.jar, dest=/app.jar}" shape="note"];
  "sha256:5f97a7cb5b1137473a13b8e5f207ad469a05ede604a80730f329ff22561335de" [label="/bin/sh -c bash -c 'touch /app.jar'" shape="box"];
  "sha256:6b0cfe7644ec53717655813053c0e8ad9fe40a1aa10b49e6da9a44d82cb3b231" [label="sha256:6b0cfe7644ec53717655813053c0e8ad9fe40a1aa10b49e6da9a44d82cb3b231" shape="plaintext"];
  "sha256:d2ee5802ef4e66d369c54e82b95249fae39b2901680b3bf23f2a3f73eba58df0" -> "sha256:5fe2d4ead8fbd254ccf656718b36d2f337d6157d09071e2961d018003f4d94ef" [label=""];
  "sha256:3e589904eedc552af0f6b77aa9ac0eb309c534ecaa746af2197a543a38a57d3d" -> "sha256:5fe2d4ead8fbd254ccf656718b36d2f337d6157d09071e2961d018003f4d94ef" [label=""];
  "sha256:5fe2d4ead8fbd254ccf656718b36d2f337d6157d09071e2961d018003f4d94ef" -> "sha256:5f97a7cb5b1137473a13b8e5f207ad469a05ede604a80730f329ff22561335de" [label=""];
  "sha256:5f97a7cb5b1137473a13b8e5f207ad469a05ede604a80730f329ff22561335de" -> "sha256:6b0cfe7644ec53717655813053c0e8ad9fe40a1aa10b49e6da9a44d82cb3b231" [label=""];
}

