[app/sources/284256994.Dockerfile]
digraph {
  "sha256:08ebbc7f1eacf443f415d0072aabca8fb4b8718be7d1e8f635867ac7a158e591" [label="docker-image://docker.io/jupyter/jupyterhub-onbuild:latest" shape="ellipse"];
  "sha256:8f446d5753a7a012bbf05c78f0492116f9d4754ea361d4b3827ca10a3461f8b9" [label="/bin/sh -c apt-get install -y libpq-dev     && apt-get autoremove -y     && apt-get clean -y     && pip3 install psycopg2" shape="box"];
  "sha256:e56c2f0ec9706e96ee79c178ffc77396eb9e43d02ffae90e512a654c0eed763c" [label="/bin/sh -c useradd -m -G shadow -p $(openssl passwd -1 rhea) rhea" shape="box"];
  "sha256:7c64dff66e67265e78fd4f0a11d094f87cadc3a5478c079461990a0759646dc8" [label="/bin/sh -c chown rhea ." shape="box"];
  "sha256:9e2da88b3e99d99f3990fe6b231296ff7e1fafe5632dcfad23f3dbc93aff922b" [label="/bin/sh -c for name in io ganymede ; do useradd -m -p $(openssl passwd -1 $name) $name; done" shape="box"];
  "sha256:60589936f026fe5009aa09e3b9026080377af0d6b2e3c2d9802a252d5ae5824c" [label="sha256:60589936f026fe5009aa09e3b9026080377af0d6b2e3c2d9802a252d5ae5824c" shape="plaintext"];
  "sha256:08ebbc7f1eacf443f415d0072aabca8fb4b8718be7d1e8f635867ac7a158e591" -> "sha256:8f446d5753a7a012bbf05c78f0492116f9d4754ea361d4b3827ca10a3461f8b9" [label=""];
  "sha256:8f446d5753a7a012bbf05c78f0492116f9d4754ea361d4b3827ca10a3461f8b9" -> "sha256:e56c2f0ec9706e96ee79c178ffc77396eb9e43d02ffae90e512a654c0eed763c" [label=""];
  "sha256:e56c2f0ec9706e96ee79c178ffc77396eb9e43d02ffae90e512a654c0eed763c" -> "sha256:7c64dff66e67265e78fd4f0a11d094f87cadc3a5478c079461990a0759646dc8" [label=""];
  "sha256:7c64dff66e67265e78fd4f0a11d094f87cadc3a5478c079461990a0759646dc8" -> "sha256:9e2da88b3e99d99f3990fe6b231296ff7e1fafe5632dcfad23f3dbc93aff922b" [label=""];
  "sha256:9e2da88b3e99d99f3990fe6b231296ff7e1fafe5632dcfad23f3dbc93aff922b" -> "sha256:60589936f026fe5009aa09e3b9026080377af0d6b2e3c2d9802a252d5ae5824c" [label=""];
}

