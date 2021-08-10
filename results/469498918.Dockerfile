[app/sources/469498918.Dockerfile]
digraph {
  "sha256:d20029e6da5ee62f143d53bd3ac8bc169940d82a921fe26eaaf03f2977c65579" [label="docker-image://docker.io/library/ubuntu:bionic" shape="ellipse"];
  "sha256:fe700fdbf8905db1de328692adcb9f374ffa2ed4332612b28db5d0adda3cac20" [label="/bin/sh -c apt-get update -q -q &&  apt-get --yes --force-yes install curl python build-essential git &&  export METEOR_ALLOW_SUPERUSER=true &&  curl https://install.meteor.com/?release=${METEOR_VERSION} | sed s/--progress-bar/-sL/g | sh &&  adduser --system --group meteor --home / &&  export \"NODE=$(find /root/.meteor/ -path '*bin/node' | grep '/root/.meteor/packages/meteor-tool/' | sort | head -n 1)\" &&  ln -sf ${NODE} /usr/local/bin/node &&  ln -sf \"$(dirname \"$NODE\")/npm\" /usr/local/bin/npm" shape="box"];
  "sha256:96c643e630d79fda4986cea9e2529aca865ed2c9a79705a43f14ccdd911e2229" [label="sha256:96c643e630d79fda4986cea9e2529aca865ed2c9a79705a43f14ccdd911e2229" shape="plaintext"];
  "sha256:d20029e6da5ee62f143d53bd3ac8bc169940d82a921fe26eaaf03f2977c65579" -> "sha256:fe700fdbf8905db1de328692adcb9f374ffa2ed4332612b28db5d0adda3cac20" [label=""];
  "sha256:fe700fdbf8905db1de328692adcb9f374ffa2ed4332612b28db5d0adda3cac20" -> "sha256:96c643e630d79fda4986cea9e2529aca865ed2c9a79705a43f14ccdd911e2229" [label=""];
}

