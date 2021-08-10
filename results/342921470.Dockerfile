[app/sources/342921470.Dockerfile]
digraph {
  "sha256:fcfc02218594eab54316e2c21b3bb02e8d1627a4639b026c3ad88e6e61fea13a" [label="docker-image://docker.io/library/python:3.6.3-slim" shape="ellipse"];
  "sha256:67a2c37d992517ab7ad86942b6a4952f1bb8d3b70568146569a45e9d8bc968b4" [label="mkdir{path=/opt/demo}" shape="note"];
  "sha256:8f00e52180d76f648acbb2293cde324a4f58ef2d3ad7aa2a50f7a6b97dca3237" [label="local://context" shape="ellipse"];
  "sha256:e6e05b2efa7f0e8626903315e1f29c5e6ba47b2fece48be0ef77dc94b4900245" [label="copy{src=/requirements.txt, dest=/opt/demo/}" shape="note"];
  "sha256:ac4bda31273006219e0895824210b00c5ec95d28c646b0a9e09c1116f175f708" [label="/bin/sh -c set -x     && apt-get update     && apt-get install -y --no-install-recommends build-essential libev-dev git     && pip install --no-cache-dir -r requirements.txt     && apt-get purge -y --auto-remove build-essential" shape="box"];
  "sha256:46465dbf92441b8a889fceac2524361d1f47c6000e94c82b65c56052c81412a5" [label="copy{src=/app.py, dest=/opt/demo/}" shape="note"];
  "sha256:60637be1f96a7e004fdb1371501db0451de7bba7cfec742222192f1fa0d95445" [label="copy{src=/runner.py, dest=/opt/demo/}" shape="note"];
  "sha256:c62e3beb41ccc82af45c34d296df3aa2dd21799dd60b342f19623a9608b9f837" [label="sha256:c62e3beb41ccc82af45c34d296df3aa2dd21799dd60b342f19623a9608b9f837" shape="plaintext"];
  "sha256:fcfc02218594eab54316e2c21b3bb02e8d1627a4639b026c3ad88e6e61fea13a" -> "sha256:67a2c37d992517ab7ad86942b6a4952f1bb8d3b70568146569a45e9d8bc968b4" [label=""];
  "sha256:67a2c37d992517ab7ad86942b6a4952f1bb8d3b70568146569a45e9d8bc968b4" -> "sha256:e6e05b2efa7f0e8626903315e1f29c5e6ba47b2fece48be0ef77dc94b4900245" [label=""];
  "sha256:8f00e52180d76f648acbb2293cde324a4f58ef2d3ad7aa2a50f7a6b97dca3237" -> "sha256:e6e05b2efa7f0e8626903315e1f29c5e6ba47b2fece48be0ef77dc94b4900245" [label=""];
  "sha256:e6e05b2efa7f0e8626903315e1f29c5e6ba47b2fece48be0ef77dc94b4900245" -> "sha256:ac4bda31273006219e0895824210b00c5ec95d28c646b0a9e09c1116f175f708" [label=""];
  "sha256:ac4bda31273006219e0895824210b00c5ec95d28c646b0a9e09c1116f175f708" -> "sha256:46465dbf92441b8a889fceac2524361d1f47c6000e94c82b65c56052c81412a5" [label=""];
  "sha256:8f00e52180d76f648acbb2293cde324a4f58ef2d3ad7aa2a50f7a6b97dca3237" -> "sha256:46465dbf92441b8a889fceac2524361d1f47c6000e94c82b65c56052c81412a5" [label=""];
  "sha256:46465dbf92441b8a889fceac2524361d1f47c6000e94c82b65c56052c81412a5" -> "sha256:60637be1f96a7e004fdb1371501db0451de7bba7cfec742222192f1fa0d95445" [label=""];
  "sha256:8f00e52180d76f648acbb2293cde324a4f58ef2d3ad7aa2a50f7a6b97dca3237" -> "sha256:60637be1f96a7e004fdb1371501db0451de7bba7cfec742222192f1fa0d95445" [label=""];
  "sha256:60637be1f96a7e004fdb1371501db0451de7bba7cfec742222192f1fa0d95445" -> "sha256:c62e3beb41ccc82af45c34d296df3aa2dd21799dd60b342f19623a9608b9f837" [label=""];
}

