[app/sources/252790575.Dockerfile]
digraph {
  "sha256:280598f751f29806bf356e36bcbfca0ba2bcedbbad42197ddb26e7190772410f" [label="docker-image://docker.io/library/node:5.12" shape="ellipse"];
  "sha256:1fa6042ec29a332bcf69f8f4bc78d2901a4bbd83c7341990af2ff7afcea3f0f1" [label="/bin/sh -c npm install gulp -g" shape="box"];
  "sha256:0d30678897c19f3f4d4edb5d9e8ee35795dbccd8b2c9bbce8a5b62c7e4cbe7dc" [label="/bin/sh -c mkdir /app" shape="box"];
  "sha256:d75146a36c93327106a84a4e7c130dd3a60a891f6b52ecca416b97d955cff039" [label="/bin/sh -c mkdir /.npm" shape="box"];
  "sha256:dc3be648256e62f2d834ec2e077af44cc60f9bbe669068c6e5d203ab4d8d1292" [label="/bin/sh -c chmod 777 /.npm" shape="box"];
  "sha256:951620e095ca8b04d6b03e79c8a7c1f0d4904c8e0d92a07033026265ae27e9bd" [label="mkdir{path=/app}" shape="note"];
  "sha256:85fbefdd8f05d3eeaee8105eee37283f49c14d89fc65b881b05300001ac56ddb" [label="sha256:85fbefdd8f05d3eeaee8105eee37283f49c14d89fc65b881b05300001ac56ddb" shape="plaintext"];
  "sha256:280598f751f29806bf356e36bcbfca0ba2bcedbbad42197ddb26e7190772410f" -> "sha256:1fa6042ec29a332bcf69f8f4bc78d2901a4bbd83c7341990af2ff7afcea3f0f1" [label=""];
  "sha256:1fa6042ec29a332bcf69f8f4bc78d2901a4bbd83c7341990af2ff7afcea3f0f1" -> "sha256:0d30678897c19f3f4d4edb5d9e8ee35795dbccd8b2c9bbce8a5b62c7e4cbe7dc" [label=""];
  "sha256:0d30678897c19f3f4d4edb5d9e8ee35795dbccd8b2c9bbce8a5b62c7e4cbe7dc" -> "sha256:d75146a36c93327106a84a4e7c130dd3a60a891f6b52ecca416b97d955cff039" [label=""];
  "sha256:d75146a36c93327106a84a4e7c130dd3a60a891f6b52ecca416b97d955cff039" -> "sha256:dc3be648256e62f2d834ec2e077af44cc60f9bbe669068c6e5d203ab4d8d1292" [label=""];
  "sha256:dc3be648256e62f2d834ec2e077af44cc60f9bbe669068c6e5d203ab4d8d1292" -> "sha256:951620e095ca8b04d6b03e79c8a7c1f0d4904c8e0d92a07033026265ae27e9bd" [label=""];
  "sha256:951620e095ca8b04d6b03e79c8a7c1f0d4904c8e0d92a07033026265ae27e9bd" -> "sha256:85fbefdd8f05d3eeaee8105eee37283f49c14d89fc65b881b05300001ac56ddb" [label=""];
}

