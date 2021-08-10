[app/sources/309402932.Dockerfile]
digraph {
  "sha256:941619d552a693cad40e3d710bdeced16aa6a83687701c57a205ad9520bba55b" [label="docker-image://docker.io/library/locust:latest" shape="ellipse"];
  "sha256:6daa16924519a026da513188d40a70b5f2e462bf2a17ac914c491413c2b9a261" [label="local://context" shape="ellipse"];
  "sha256:161b5a7ca39d307ed62e39336b60b0901ad1aca0c03484903b641ec86da7a08e" [label="copy{src=/hztest, dest=/app/hztest}" shape="note"];
  "sha256:f3ed8f9e132c6f882bdfcfc1846ba78ee6dbc35bfdd4b0fae883c13d81c72ddf" [label="mkdir{path=/app/hztest}" shape="note"];
  "sha256:82ebd81c5c4ab9704609128e6b9067481d2019bcd962d1ae6a178300f738ccf8" [label="/bin/sh -c echo \"Asia/Shanghai\" > /etc/timezone" shape="box"];
  "sha256:479489e0ff3d9b0fc8470c5972840ffcfa9ae7fb37528d91dddb68fe686c3014" [label="/bin/sh -c dpkg-reconfigure -f noninteractive tzdata" shape="box"];
  "sha256:54e468afa242c934b8ddc6ba0d1a5bec6f77f34f0bd95221cc72a892a40be7df" [label="sha256:54e468afa242c934b8ddc6ba0d1a5bec6f77f34f0bd95221cc72a892a40be7df" shape="plaintext"];
  "sha256:941619d552a693cad40e3d710bdeced16aa6a83687701c57a205ad9520bba55b" -> "sha256:161b5a7ca39d307ed62e39336b60b0901ad1aca0c03484903b641ec86da7a08e" [label=""];
  "sha256:6daa16924519a026da513188d40a70b5f2e462bf2a17ac914c491413c2b9a261" -> "sha256:161b5a7ca39d307ed62e39336b60b0901ad1aca0c03484903b641ec86da7a08e" [label=""];
  "sha256:161b5a7ca39d307ed62e39336b60b0901ad1aca0c03484903b641ec86da7a08e" -> "sha256:f3ed8f9e132c6f882bdfcfc1846ba78ee6dbc35bfdd4b0fae883c13d81c72ddf" [label=""];
  "sha256:f3ed8f9e132c6f882bdfcfc1846ba78ee6dbc35bfdd4b0fae883c13d81c72ddf" -> "sha256:82ebd81c5c4ab9704609128e6b9067481d2019bcd962d1ae6a178300f738ccf8" [label=""];
  "sha256:82ebd81c5c4ab9704609128e6b9067481d2019bcd962d1ae6a178300f738ccf8" -> "sha256:479489e0ff3d9b0fc8470c5972840ffcfa9ae7fb37528d91dddb68fe686c3014" [label=""];
  "sha256:479489e0ff3d9b0fc8470c5972840ffcfa9ae7fb37528d91dddb68fe686c3014" -> "sha256:54e468afa242c934b8ddc6ba0d1a5bec6f77f34f0bd95221cc72a892a40be7df" [label=""];
}

