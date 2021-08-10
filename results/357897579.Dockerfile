[app/sources/357897579.Dockerfile]
digraph {
  "sha256:50c9ac0ccb36ec4cc63c10499471545ef0b98fb24f8db871dbc019d7d993e9fe" [label="docker-image://docker.io/library/maven:3.3.3-jdk-8" shape="ellipse"];
  "sha256:cc6bf76120e484cb0d1470379e444f14ef795a6a89b3867da7bf4508f89e141d" [label="/bin/sh -c apt-get update -y   && apt-get install --no-install-recommends -y -q     build-essential     ca-certificates     curl     git     mediainfo     libmediainfo-dev     python     python-dev     gnupg     xmlstarlet     jshon     python-pip     libffi-dev     libssl-dev" shape="box"];
  "sha256:dbbb4465f387baa87540d30dd17ea4aeb00d3e70c9dd7b3e841379bbe23c8529" [label="/bin/sh -c curl -sL https://deb.nodesource.com/setup_$NODE_VERSION | bash -   && apt-get install -y nodejs" shape="box"];
  "sha256:302a8fae9eb8a4679b7b970bc3ba75bd8b3d3fa8a03fbd24d0700a4d17e02b3e" [label="/bin/sh -c npm -g install bower" shape="box"];
  "sha256:01f2d0ecfc8ebc546f1134998fc7e6c32f4b12272ace8c0fc34eaf6c5dc71bb7" [label="/bin/sh -c echo \"deb http://www.deb-multimedia.org jessie main non-free\" > /etc/apt/sources.list.d/deb-multimedia.list   && apt-get update   && apt-get install -y --force-yes deb-multimedia-keyring   && apt-get update   && apt-get install -y ffmpeg" shape="box"];
  "sha256:6a8413837c84fb9fb6248cd2eacbe3a244041e1f6c44090fca0599cb91a85848" [label="sha256:6a8413837c84fb9fb6248cd2eacbe3a244041e1f6c44090fca0599cb91a85848" shape="plaintext"];
  "sha256:50c9ac0ccb36ec4cc63c10499471545ef0b98fb24f8db871dbc019d7d993e9fe" -> "sha256:cc6bf76120e484cb0d1470379e444f14ef795a6a89b3867da7bf4508f89e141d" [label=""];
  "sha256:cc6bf76120e484cb0d1470379e444f14ef795a6a89b3867da7bf4508f89e141d" -> "sha256:dbbb4465f387baa87540d30dd17ea4aeb00d3e70c9dd7b3e841379bbe23c8529" [label=""];
  "sha256:dbbb4465f387baa87540d30dd17ea4aeb00d3e70c9dd7b3e841379bbe23c8529" -> "sha256:302a8fae9eb8a4679b7b970bc3ba75bd8b3d3fa8a03fbd24d0700a4d17e02b3e" [label=""];
  "sha256:302a8fae9eb8a4679b7b970bc3ba75bd8b3d3fa8a03fbd24d0700a4d17e02b3e" -> "sha256:01f2d0ecfc8ebc546f1134998fc7e6c32f4b12272ace8c0fc34eaf6c5dc71bb7" [label=""];
  "sha256:01f2d0ecfc8ebc546f1134998fc7e6c32f4b12272ace8c0fc34eaf6c5dc71bb7" -> "sha256:6a8413837c84fb9fb6248cd2eacbe3a244041e1f6c44090fca0599cb91a85848" [label=""];
}

