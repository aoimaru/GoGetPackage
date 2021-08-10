[app/sources/135583887.Dockerfile]
digraph {
  "sha256:812b4b95c8c0537e13861c63d2ffd6a4c9f82a8e0bb877eee41d18495dcecda4" [label="docker-image://docker.io/webratio/nodejs-with-android-sdk:latest" shape="ellipse"];
  "sha256:56f7c5ea70c179d167fb165edad30c238b9faba04488b00fba5ef23eed02a0bc" [label="/bin/sh -c npm install -g npm &&     npm install -g cordova@${CORDOVA_VERSION} &&     cd /tmp &&     cordova create fakeapp &&     cd /tmp/fakeapp &&     cordova platform add android &&     cd &&     rm -rf /tmp/fakeapp" shape="box"];
  "sha256:6f7330ed78787e352785316d1c97b0f5d923edd70907a3f77e449facbaad1d0d" [label="mkdir{path=/data}" shape="note"];
  "sha256:987874dda7ff74e6e57cd637b907ab0c36714e3b33b6be0c472162cf9d95756d" [label="sha256:987874dda7ff74e6e57cd637b907ab0c36714e3b33b6be0c472162cf9d95756d" shape="plaintext"];
  "sha256:812b4b95c8c0537e13861c63d2ffd6a4c9f82a8e0bb877eee41d18495dcecda4" -> "sha256:56f7c5ea70c179d167fb165edad30c238b9faba04488b00fba5ef23eed02a0bc" [label=""];
  "sha256:56f7c5ea70c179d167fb165edad30c238b9faba04488b00fba5ef23eed02a0bc" -> "sha256:6f7330ed78787e352785316d1c97b0f5d923edd70907a3f77e449facbaad1d0d" [label=""];
  "sha256:6f7330ed78787e352785316d1c97b0f5d923edd70907a3f77e449facbaad1d0d" -> "sha256:987874dda7ff74e6e57cd637b907ab0c36714e3b33b6be0c472162cf9d95756d" [label=""];
}

