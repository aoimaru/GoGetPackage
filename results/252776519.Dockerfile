[app/sources/252776519.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:f7347d41953afe38f1ed7f42987ef9eeb38abe2cdeebfe858ffb6140c62e1f49" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:d5f05dfdbdd80fcff0cdd2986d96d8d6cfa9e66876cad10889ffe208441e9656" [label="/bin/sh -c apt-get install -y git-core lib32gcc1 screen wget" shape="box"];
  "sha256:78ebe5c749ef5068c9843224c59c5b0d066a918de1c507a86d7311587d4aaf53" [label="/bin/sh -c mkdir ~/cs16 ; cd ~/cs16" shape="box"];
  "sha256:9a022250c18f1d4137bbce40e5f3ed1f6f99b4835816a27c280067bed9ee1036" [label="/bin/sh -c wget http://media.steampowered.com/installer/steamcmd_linux.tar.gz" shape="box"];
  "sha256:9b0622011d2948ed4f3ad11634338d95237f0cd3350e7b39af2e7a65d76fa4dc" [label="/bin/sh -c tar -xvzf steamcmd_linux.tar.gz" shape="box"];
  "sha256:34e9c6df9dba7f755cf4d263054cd484d0b8c7505c188e2cb6c6ba631c32d037" [label="sha256:34e9c6df9dba7f755cf4d263054cd484d0b8c7505c188e2cb6c6ba631c32d037" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:f7347d41953afe38f1ed7f42987ef9eeb38abe2cdeebfe858ffb6140c62e1f49" [label=""];
  "sha256:f7347d41953afe38f1ed7f42987ef9eeb38abe2cdeebfe858ffb6140c62e1f49" -> "sha256:d5f05dfdbdd80fcff0cdd2986d96d8d6cfa9e66876cad10889ffe208441e9656" [label=""];
  "sha256:d5f05dfdbdd80fcff0cdd2986d96d8d6cfa9e66876cad10889ffe208441e9656" -> "sha256:78ebe5c749ef5068c9843224c59c5b0d066a918de1c507a86d7311587d4aaf53" [label=""];
  "sha256:78ebe5c749ef5068c9843224c59c5b0d066a918de1c507a86d7311587d4aaf53" -> "sha256:9a022250c18f1d4137bbce40e5f3ed1f6f99b4835816a27c280067bed9ee1036" [label=""];
  "sha256:9a022250c18f1d4137bbce40e5f3ed1f6f99b4835816a27c280067bed9ee1036" -> "sha256:9b0622011d2948ed4f3ad11634338d95237f0cd3350e7b39af2e7a65d76fa4dc" [label=""];
  "sha256:9b0622011d2948ed4f3ad11634338d95237f0cd3350e7b39af2e7a65d76fa4dc" -> "sha256:34e9c6df9dba7f755cf4d263054cd484d0b8c7505c188e2cb6c6ba631c32d037" [label=""];
}

