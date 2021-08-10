[app/sources/243132900.Dockerfile]
digraph {
  "sha256:eefa3efeb0505fb1d7bc75ec4fc0a43bb18e214d48b16c7de2389290f7c78e4b" [label="docker-image://docker.io/ppc64le/node:10.11-stretch" shape="ellipse"];
  "sha256:20dfd4f02eac82da6e3e46c0671ed14e5983d966057e1c43319135a848b59745" [label="/bin/sh -c apt-get update && apt-get install -y build-essential &&         git clone https://github.com/strongloop/loopback-component-push.git && cd loopback-component-push &&         npm install && npm test &&         apt-get purge -y build-essential && apt-get autoremove -y" shape="box"];
  "sha256:6ac54fb76caffb2396eb8bf6528a8ebf72549013837f5f561cf8e67f779f77a4" [label="mkdir{path=/loopback-component-push}" shape="note"];
  "sha256:14c5cee2476b02b6bedd5dd8757c6683975c695557eddd586731d3ba0f155312" [label="sha256:14c5cee2476b02b6bedd5dd8757c6683975c695557eddd586731d3ba0f155312" shape="plaintext"];
  "sha256:eefa3efeb0505fb1d7bc75ec4fc0a43bb18e214d48b16c7de2389290f7c78e4b" -> "sha256:20dfd4f02eac82da6e3e46c0671ed14e5983d966057e1c43319135a848b59745" [label=""];
  "sha256:20dfd4f02eac82da6e3e46c0671ed14e5983d966057e1c43319135a848b59745" -> "sha256:6ac54fb76caffb2396eb8bf6528a8ebf72549013837f5f561cf8e67f779f77a4" [label=""];
  "sha256:6ac54fb76caffb2396eb8bf6528a8ebf72549013837f5f561cf8e67f779f77a4" -> "sha256:14c5cee2476b02b6bedd5dd8757c6683975c695557eddd586731d3ba0f155312" [label=""];
}

