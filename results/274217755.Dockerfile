[app/sources/274217755.Dockerfile]
digraph {
  "sha256:ae8e84d020b5c3bfab5d548e3dfd93712984055eadfab398b17f180455d5278e" [label="docker-image://docker.io/descartesresearch/teastore-base:latest" shape="ellipse"];
  "sha256:8ea70cc532c8d3f63f93f7112bef560b32cb29fcc2b3376d971939d1f48da7b1" [label="local://context" shape="ellipse"];
  "sha256:bb30d4aee6b3c18dc17d5fce4fb8fd1c5a88afae11dcef31b7e1e944740d7a48" [label="copy{src=/target/*.war, dest=/usr/local/tomcat/webapps/}" shape="note"];
  "sha256:75a0f4000e06d4a99eb5e4232296d0a6f1951eddb2ba8250d328248ff2369d68" [label="sha256:75a0f4000e06d4a99eb5e4232296d0a6f1951eddb2ba8250d328248ff2369d68" shape="plaintext"];
  "sha256:ae8e84d020b5c3bfab5d548e3dfd93712984055eadfab398b17f180455d5278e" -> "sha256:bb30d4aee6b3c18dc17d5fce4fb8fd1c5a88afae11dcef31b7e1e944740d7a48" [label=""];
  "sha256:8ea70cc532c8d3f63f93f7112bef560b32cb29fcc2b3376d971939d1f48da7b1" -> "sha256:bb30d4aee6b3c18dc17d5fce4fb8fd1c5a88afae11dcef31b7e1e944740d7a48" [label=""];
  "sha256:bb30d4aee6b3c18dc17d5fce4fb8fd1c5a88afae11dcef31b7e1e944740d7a48" -> "sha256:75a0f4000e06d4a99eb5e4232296d0a6f1951eddb2ba8250d328248ff2369d68" [label=""];
}

