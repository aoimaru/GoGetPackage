[app/sources/469498904.Dockerfile]
digraph {
  "sha256:d20029e6da5ee62f143d53bd3ac8bc169940d82a921fe26eaaf03f2977c65579" [label="docker-image://docker.io/library/ubuntu:bionic" shape="ellipse"];
  "sha256:2d9ef502cad775a25adca40fe2d1a7e6afe5552679f1686282e070a50708939a" [label="/bin/sh -c apt-get update -q -q &&  apt-get --yes --force-yes install curl python build-essential git &&  export METEOR_ALLOW_SUPERUSER=true &&  curl https://install.meteor.com/?release=${METEOR_VERSION} | sed s/--progress-bar/-sL/g | sh &&  adduser --system --group meteor --home / &&  export \"NODE=$(find /root/.meteor/ -path '*bin/node' | grep '/root/.meteor/packages/meteor-tool/' | sort | head -n 1)\" &&  ln -sf ${NODE} /usr/local/bin/node &&  ln -sf \"$(dirname \"$NODE\")/npm\" /usr/local/bin/npm" shape="box"];
  "sha256:757c78a4d0bd8884d2fdbf56ac1296254508ee5e8f4b06d7b6522288e82605ce" [label="sha256:757c78a4d0bd8884d2fdbf56ac1296254508ee5e8f4b06d7b6522288e82605ce" shape="plaintext"];
  "sha256:d20029e6da5ee62f143d53bd3ac8bc169940d82a921fe26eaaf03f2977c65579" -> "sha256:2d9ef502cad775a25adca40fe2d1a7e6afe5552679f1686282e070a50708939a" [label=""];
  "sha256:2d9ef502cad775a25adca40fe2d1a7e6afe5552679f1686282e070a50708939a" -> "sha256:757c78a4d0bd8884d2fdbf56ac1296254508ee5e8f4b06d7b6522288e82605ce" [label=""];
}

