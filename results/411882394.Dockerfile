[app/sources/411882394.Dockerfile]
digraph {
  "sha256:c6ffb1e9650092f65655794315435202b3308249de39c0b574dbe847798957f2" [label="local://context" shape="ellipse"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:00f10a82673519e82b58c4374823168360e5b93fc49961e07ff969634d884b37" [label="/bin/sh -c rpm -i https://download.postgresql.org/pub/repos/yum/9.6/redhat/rhel-7-x86_64/pgdg-centos96-9.6-3.noarch.rpm &&     yum -y install     \twhich     \tpostgresql96-server \tpostgresql96-contrib" shape="box"];
  "sha256:9e697ca914214e2b664d1cbfeab5ca01a9bf4dd64b3e5c3c334fc72192328593" [label="copy{src=/docker-entrypoint.sh, dest=/docker-entrypoint.sh}" shape="note"];
  "sha256:91c66da4a677a66529e72c166c565757b70396bceb33a92efbbc0bcb16640024" [label="sha256:91c66da4a677a66529e72c166c565757b70396bceb33a92efbbc0bcb16640024" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:00f10a82673519e82b58c4374823168360e5b93fc49961e07ff969634d884b37" [label=""];
  "sha256:00f10a82673519e82b58c4374823168360e5b93fc49961e07ff969634d884b37" -> "sha256:9e697ca914214e2b664d1cbfeab5ca01a9bf4dd64b3e5c3c334fc72192328593" [label=""];
  "sha256:c6ffb1e9650092f65655794315435202b3308249de39c0b574dbe847798957f2" -> "sha256:9e697ca914214e2b664d1cbfeab5ca01a9bf4dd64b3e5c3c334fc72192328593" [label=""];
  "sha256:9e697ca914214e2b664d1cbfeab5ca01a9bf4dd64b3e5c3c334fc72192328593" -> "sha256:91c66da4a677a66529e72c166c565757b70396bceb33a92efbbc0bcb16640024" [label=""];
}

