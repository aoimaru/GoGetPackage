[app/sources/409008405.Dockerfile]
digraph {
  "sha256:46b25337b6497e2a04bb43db7e2ddfd626590fa67e24801204556a1c358dfb18" [label="docker-image://docker.io/library/base:latest" shape="ellipse"];
  "sha256:db9477da7350ebcc8c5c923a955e4b89194cd22e44c4b45ed31dcbdfa63e0de8" [label="/bin/sh -c apt-get install -y software-properties-common" shape="box"];
  "sha256:f7233d28b8c7844cb825b430dceec0006fcef7501e7a598647bc779f326c6a20" [label="/bin/sh -c add-apt-repository -y ppa:rethinkdb/ppa" shape="box"];
  "sha256:3f349465e256f43db7ab77befd9fdc3c83529b020945b9232b55f4747b4a32a8" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:757a4727ca64b70152272356297b5ca7186b6c96830f59864dd89eaf1397d6b6" [label="/bin/sh -c apt-get install -y rethinkdb" shape="box"];
  "sha256:b5f824c9a87ffbeb36945e8b0218eac61c5c14365753a5488fe8fdf2d9d0d30c" [label="sha256:b5f824c9a87ffbeb36945e8b0218eac61c5c14365753a5488fe8fdf2d9d0d30c" shape="plaintext"];
  "sha256:46b25337b6497e2a04bb43db7e2ddfd626590fa67e24801204556a1c358dfb18" -> "sha256:db9477da7350ebcc8c5c923a955e4b89194cd22e44c4b45ed31dcbdfa63e0de8" [label=""];
  "sha256:db9477da7350ebcc8c5c923a955e4b89194cd22e44c4b45ed31dcbdfa63e0de8" -> "sha256:f7233d28b8c7844cb825b430dceec0006fcef7501e7a598647bc779f326c6a20" [label=""];
  "sha256:f7233d28b8c7844cb825b430dceec0006fcef7501e7a598647bc779f326c6a20" -> "sha256:3f349465e256f43db7ab77befd9fdc3c83529b020945b9232b55f4747b4a32a8" [label=""];
  "sha256:3f349465e256f43db7ab77befd9fdc3c83529b020945b9232b55f4747b4a32a8" -> "sha256:757a4727ca64b70152272356297b5ca7186b6c96830f59864dd89eaf1397d6b6" [label=""];
  "sha256:757a4727ca64b70152272356297b5ca7186b6c96830f59864dd89eaf1397d6b6" -> "sha256:b5f824c9a87ffbeb36945e8b0218eac61c5c14365753a5488fe8fdf2d9d0d30c" [label=""];
}

