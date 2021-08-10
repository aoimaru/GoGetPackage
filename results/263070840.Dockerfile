[app/sources/263070840.Dockerfile]
digraph {
  "sha256:3978c4de10c3dbc259c9ad24b3f53e17b57db4089fa8ba69d57041855dd885b9" [label="docker-image://docker.io/mhart/alpine-node:7.7" shape="ellipse"];
  "sha256:5bfad228fddcdabe5045a140a9821b9b65b19cd7264eebf154c57171aad17de4" [label="/bin/sh -c apk update && apk upgrade &&     apk add --no-cache --update bash git openssh python alpine-sdk" shape="box"];
  "sha256:f547ffc8091b5fbf19814108876576a28e20fe1f5d4b4c18a5c7adb51fb57dfe" [label="/bin/sh -c addgroup $USER && adduser -s /bin/bash -D -G $USER $USER" shape="box"];
  "sha256:0c9d07c82897fc44d1fdc42873bab9e79fa30898a133a850bd2bec86737a4bbc" [label="/bin/sh -c npm install -g grunt-cli bunyan" shape="box"];
  "sha256:79c105181974b6301dd522215c6c27a623cfc9deb8afb95613daf8114d58559e" [label="/bin/sh -c mkdir -p /opt/$NAME" shape="box"];
  "sha256:00b026f71290ee78b55bffff34bb221ce46d18ed63bbee0c67849aa30e84c535" [label="local://context" shape="ellipse"];
  "sha256:eb4ac84a8458bc6927486983dae73e6ac9c3478f4e00e04f98489e1e14582256" [label="copy{src=/package.json, dest=/opt/app/package.json}" shape="note"];
  "sha256:35d0a5f4dceee3f789186dad3586f9c5ee4f625dd6e5bb883551c8d430d5aa93" [label="/bin/sh -c cd /opt/$NAME && npm install" shape="box"];
  "sha256:c7ac4b4052a75fd7237c70dbf765e406f83ab9ba7cce446791ee853faadc99d5" [label="copy{src=/entrypoint.sh, dest=/opt/app/entrypoint.sh}" shape="note"];
  "sha256:6be78259e95d1d2bb0f8b57f465968f170f1457bd2872c4b62cac5a58993291c" [label="copy{src=/config, dest=/opt/app/config}" shape="note"];
  "sha256:699761dea6e6a25ece7a5f95e1f4b361ebfcff634565434f7b26d9394844fab3" [label="mkdir{path=/opt/app}" shape="note"];
  "sha256:ccaa083f789396726903503ed8b15aa7490af19c5b9db67db8d60e89475ce32a" [label="copy{src=/app, dest=/opt/app/app}" shape="note"];
  "sha256:d597af1ac298805cd077a36a69535b4fd8cd472cc9336d4c472f4fac5c867613" [label="/bin/sh -c chown $USER:$USER /opt/$NAME" shape="box"];
  "sha256:3b3f9ee56bee1e2546dddcff862cccbf1e0504d5ad63df9c717f2818ce78f911" [label="sha256:3b3f9ee56bee1e2546dddcff862cccbf1e0504d5ad63df9c717f2818ce78f911" shape="plaintext"];
  "sha256:3978c4de10c3dbc259c9ad24b3f53e17b57db4089fa8ba69d57041855dd885b9" -> "sha256:5bfad228fddcdabe5045a140a9821b9b65b19cd7264eebf154c57171aad17de4" [label=""];
  "sha256:5bfad228fddcdabe5045a140a9821b9b65b19cd7264eebf154c57171aad17de4" -> "sha256:f547ffc8091b5fbf19814108876576a28e20fe1f5d4b4c18a5c7adb51fb57dfe" [label=""];
  "sha256:f547ffc8091b5fbf19814108876576a28e20fe1f5d4b4c18a5c7adb51fb57dfe" -> "sha256:0c9d07c82897fc44d1fdc42873bab9e79fa30898a133a850bd2bec86737a4bbc" [label=""];
  "sha256:0c9d07c82897fc44d1fdc42873bab9e79fa30898a133a850bd2bec86737a4bbc" -> "sha256:79c105181974b6301dd522215c6c27a623cfc9deb8afb95613daf8114d58559e" [label=""];
  "sha256:79c105181974b6301dd522215c6c27a623cfc9deb8afb95613daf8114d58559e" -> "sha256:eb4ac84a8458bc6927486983dae73e6ac9c3478f4e00e04f98489e1e14582256" [label=""];
  "sha256:00b026f71290ee78b55bffff34bb221ce46d18ed63bbee0c67849aa30e84c535" -> "sha256:eb4ac84a8458bc6927486983dae73e6ac9c3478f4e00e04f98489e1e14582256" [label=""];
  "sha256:eb4ac84a8458bc6927486983dae73e6ac9c3478f4e00e04f98489e1e14582256" -> "sha256:35d0a5f4dceee3f789186dad3586f9c5ee4f625dd6e5bb883551c8d430d5aa93" [label=""];
  "sha256:35d0a5f4dceee3f789186dad3586f9c5ee4f625dd6e5bb883551c8d430d5aa93" -> "sha256:c7ac4b4052a75fd7237c70dbf765e406f83ab9ba7cce446791ee853faadc99d5" [label=""];
  "sha256:00b026f71290ee78b55bffff34bb221ce46d18ed63bbee0c67849aa30e84c535" -> "sha256:c7ac4b4052a75fd7237c70dbf765e406f83ab9ba7cce446791ee853faadc99d5" [label=""];
  "sha256:c7ac4b4052a75fd7237c70dbf765e406f83ab9ba7cce446791ee853faadc99d5" -> "sha256:6be78259e95d1d2bb0f8b57f465968f170f1457bd2872c4b62cac5a58993291c" [label=""];
  "sha256:00b026f71290ee78b55bffff34bb221ce46d18ed63bbee0c67849aa30e84c535" -> "sha256:6be78259e95d1d2bb0f8b57f465968f170f1457bd2872c4b62cac5a58993291c" [label=""];
  "sha256:6be78259e95d1d2bb0f8b57f465968f170f1457bd2872c4b62cac5a58993291c" -> "sha256:699761dea6e6a25ece7a5f95e1f4b361ebfcff634565434f7b26d9394844fab3" [label=""];
  "sha256:699761dea6e6a25ece7a5f95e1f4b361ebfcff634565434f7b26d9394844fab3" -> "sha256:ccaa083f789396726903503ed8b15aa7490af19c5b9db67db8d60e89475ce32a" [label=""];
  "sha256:00b026f71290ee78b55bffff34bb221ce46d18ed63bbee0c67849aa30e84c535" -> "sha256:ccaa083f789396726903503ed8b15aa7490af19c5b9db67db8d60e89475ce32a" [label=""];
  "sha256:ccaa083f789396726903503ed8b15aa7490af19c5b9db67db8d60e89475ce32a" -> "sha256:d597af1ac298805cd077a36a69535b4fd8cd472cc9336d4c472f4fac5c867613" [label=""];
  "sha256:d597af1ac298805cd077a36a69535b4fd8cd472cc9336d4c472f4fac5c867613" -> "sha256:3b3f9ee56bee1e2546dddcff862cccbf1e0504d5ad63df9c717f2818ce78f911" [label=""];
}

