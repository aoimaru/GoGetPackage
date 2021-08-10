[app/sources/285279492.Dockerfile]
digraph {
  "sha256:662cc45c031f9b928ba0caa51fb328e4589629eba6509e9e25aa50e6867debf6" [label="docker-image://docker.io/sigboe/steamcmd:latest" shape="ellipse"];
  "sha256:7c8215108fcebe69026bae5af00cc1bd330c7af35638f4bc48f9588210724a0d" [label="/bin/sh -c /opt/steamcmd/steamcmd.sh +quit &&     apt-get update &&     apt-get install -y wget &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:018d758fc02c15d37842eef8b7eafb8f84a4f109a9c5019338dc3c10aa2d8020" [label="local://context" shape="ellipse"];
  "sha256:2fc66c6e7c8bcb41e3078563bad6240e84dc7dd652382210809080be699633c7" [label="copy{src=/files, dest=/opt/steamcmd}" shape="note"];
  "sha256:6e5428f08807061e28c71db41150fb1b3687a9ba279870fe164cf0d56074a7ae" [label="/bin/sh -c mkdir /opt/steamcmd/cache && \tchown -R root /opt/steamcmd && \tchmod +x /opt/steamcmd/entrypoint.sh /opt/steamcmd/run.sh" shape="box"];
  "sha256:8faabd85f9aa7b60772f53170c0c199dc17b49df74ce255863c89f35105d9230" [label="sha256:8faabd85f9aa7b60772f53170c0c199dc17b49df74ce255863c89f35105d9230" shape="plaintext"];
  "sha256:662cc45c031f9b928ba0caa51fb328e4589629eba6509e9e25aa50e6867debf6" -> "sha256:7c8215108fcebe69026bae5af00cc1bd330c7af35638f4bc48f9588210724a0d" [label=""];
  "sha256:7c8215108fcebe69026bae5af00cc1bd330c7af35638f4bc48f9588210724a0d" -> "sha256:2fc66c6e7c8bcb41e3078563bad6240e84dc7dd652382210809080be699633c7" [label=""];
  "sha256:018d758fc02c15d37842eef8b7eafb8f84a4f109a9c5019338dc3c10aa2d8020" -> "sha256:2fc66c6e7c8bcb41e3078563bad6240e84dc7dd652382210809080be699633c7" [label=""];
  "sha256:2fc66c6e7c8bcb41e3078563bad6240e84dc7dd652382210809080be699633c7" -> "sha256:6e5428f08807061e28c71db41150fb1b3687a9ba279870fe164cf0d56074a7ae" [label=""];
  "sha256:6e5428f08807061e28c71db41150fb1b3687a9ba279870fe164cf0d56074a7ae" -> "sha256:8faabd85f9aa7b60772f53170c0c199dc17b49df74ce255863c89f35105d9230" [label=""];
}

