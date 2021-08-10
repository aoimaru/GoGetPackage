[app/sources/259882514.Dockerfile]
digraph {
  "sha256:97913bc50ccdb2fc41554a81f173a968677ddf47d98674638249541458d5c5fd" [label="local://context" shape="ellipse"];
  "sha256:d2ee5802ef4e66d369c54e82b95249fae39b2901680b3bf23f2a3f73eba58df0" [label="docker-image://docker.io/library/java:8" shape="ellipse"];
  "sha256:5cb4694bc2047b9366382d8bc441b0d9768af5d383a6915911ba1da95ab205a0" [label="copy{src=/cloud-api-gateway-1.0-SNAPSHOT.jar, dest=/app.jar}" shape="note"];
  "sha256:2eccae4b56dad78f9122707e72ae727258a06f6ae458c68deacab86d4bdf8278" [label="/bin/sh -c bash -c 'touch /app.jar'" shape="box"];
  "sha256:8b0f019013b4192dacb38ef49cbf792e1f16b0317263318a831e7309254a7d66" [label="sha256:8b0f019013b4192dacb38ef49cbf792e1f16b0317263318a831e7309254a7d66" shape="plaintext"];
  "sha256:d2ee5802ef4e66d369c54e82b95249fae39b2901680b3bf23f2a3f73eba58df0" -> "sha256:5cb4694bc2047b9366382d8bc441b0d9768af5d383a6915911ba1da95ab205a0" [label=""];
  "sha256:97913bc50ccdb2fc41554a81f173a968677ddf47d98674638249541458d5c5fd" -> "sha256:5cb4694bc2047b9366382d8bc441b0d9768af5d383a6915911ba1da95ab205a0" [label=""];
  "sha256:5cb4694bc2047b9366382d8bc441b0d9768af5d383a6915911ba1da95ab205a0" -> "sha256:2eccae4b56dad78f9122707e72ae727258a06f6ae458c68deacab86d4bdf8278" [label=""];
  "sha256:2eccae4b56dad78f9122707e72ae727258a06f6ae458c68deacab86d4bdf8278" -> "sha256:8b0f019013b4192dacb38ef49cbf792e1f16b0317263318a831e7309254a7d66" [label=""];
}

