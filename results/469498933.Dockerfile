[app/sources/469498933.Dockerfile]
digraph {
  "sha256:d20029e6da5ee62f143d53bd3ac8bc169940d82a921fe26eaaf03f2977c65579" [label="docker-image://docker.io/library/ubuntu:bionic" shape="ellipse"];
  "sha256:7f68d75165328509e9ab2e00aed0dd647e2aa1ff397d8ee9a18ec44e4d5590ec" [label="/bin/sh -c apt-get update -q -q &&  apt-get --yes --force-yes install curl python build-essential git &&  export METEOR_ALLOW_SUPERUSER=true &&  curl https://install.meteor.com/?release=${METEOR_VERSION} | sed s/--progress-bar/-sL/g | sh &&  adduser --system --group meteor --home / &&  export \"NODE=$(find /root/.meteor/ -path '*bin/node' | grep '/root/.meteor/packages/meteor-tool/' | sort | head -n 1)\" &&  ln -sf ${NODE} /usr/local/bin/node &&  ln -sf \"$(dirname \"$NODE\")/npm\" /usr/local/bin/npm" shape="box"];
  "sha256:17cc44d48bc94f6564cabc73c027c14237c2f059489a57335bb053c6780d88c5" [label="sha256:17cc44d48bc94f6564cabc73c027c14237c2f059489a57335bb053c6780d88c5" shape="plaintext"];
  "sha256:d20029e6da5ee62f143d53bd3ac8bc169940d82a921fe26eaaf03f2977c65579" -> "sha256:7f68d75165328509e9ab2e00aed0dd647e2aa1ff397d8ee9a18ec44e4d5590ec" [label=""];
  "sha256:7f68d75165328509e9ab2e00aed0dd647e2aa1ff397d8ee9a18ec44e4d5590ec" -> "sha256:17cc44d48bc94f6564cabc73c027c14237c2f059489a57335bb053c6780d88c5" [label=""];
}

