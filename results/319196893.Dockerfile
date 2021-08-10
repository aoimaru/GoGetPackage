[app/sources/319196893.Dockerfile]
digraph {
  "sha256:82b0ab03c43981bd408deb7b1ca062dc5dfd19197f06be715ff118e626d39630" [label="docker-image://docker.io/library/alpine:3.5" shape="ellipse"];
  "sha256:47a736a54e3dbc8805bd16072b35b57641305fc3b894f07cb02e59cd3bf0975c" [label="/bin/sh -c apk add --no-cache python3" shape="box"];
  "sha256:e89a6dc1cbce6192ec23e274242a2c298ab99265b372920570e59d560c32feba" [label="/bin/sh -c mkdir -p /app" shape="box"];
  "sha256:36721bf3aab880d1e204775b4e7f285a9f264d54f769893f9f250e81970a0261" [label="local://context" shape="ellipse"];
  "sha256:99f57bee0efd84cf39f6b2f8da65cb266226cf7608840800bec680ab737e3956" [label="copy{src=/magic_server.tar.bz2, dest=/app}" shape="note"];
  "sha256:bf69d9a809adeecad1066051ce55e58a7afd163c09bb5953d6c3a6b94c1c079d" [label="copy{src=/runner.py, dest=/app/runner.py}" shape="note"];
  "sha256:ba13a7279b184516af8e39472a4f5f4a88805160fc90d1d1b16fe75a8d0540ae" [label="mkdir{path=/app}" shape="note"];
  "sha256:4f1faad8fae970539a8b06167d3423422ddef4ac866a3162e5b96afef62f6b5f" [label="sha256:4f1faad8fae970539a8b06167d3423422ddef4ac866a3162e5b96afef62f6b5f" shape="plaintext"];
  "sha256:82b0ab03c43981bd408deb7b1ca062dc5dfd19197f06be715ff118e626d39630" -> "sha256:47a736a54e3dbc8805bd16072b35b57641305fc3b894f07cb02e59cd3bf0975c" [label=""];
  "sha256:47a736a54e3dbc8805bd16072b35b57641305fc3b894f07cb02e59cd3bf0975c" -> "sha256:e89a6dc1cbce6192ec23e274242a2c298ab99265b372920570e59d560c32feba" [label=""];
  "sha256:e89a6dc1cbce6192ec23e274242a2c298ab99265b372920570e59d560c32feba" -> "sha256:99f57bee0efd84cf39f6b2f8da65cb266226cf7608840800bec680ab737e3956" [label=""];
  "sha256:36721bf3aab880d1e204775b4e7f285a9f264d54f769893f9f250e81970a0261" -> "sha256:99f57bee0efd84cf39f6b2f8da65cb266226cf7608840800bec680ab737e3956" [label=""];
  "sha256:99f57bee0efd84cf39f6b2f8da65cb266226cf7608840800bec680ab737e3956" -> "sha256:bf69d9a809adeecad1066051ce55e58a7afd163c09bb5953d6c3a6b94c1c079d" [label=""];
  "sha256:36721bf3aab880d1e204775b4e7f285a9f264d54f769893f9f250e81970a0261" -> "sha256:bf69d9a809adeecad1066051ce55e58a7afd163c09bb5953d6c3a6b94c1c079d" [label=""];
  "sha256:bf69d9a809adeecad1066051ce55e58a7afd163c09bb5953d6c3a6b94c1c079d" -> "sha256:ba13a7279b184516af8e39472a4f5f4a88805160fc90d1d1b16fe75a8d0540ae" [label=""];
  "sha256:ba13a7279b184516af8e39472a4f5f4a88805160fc90d1d1b16fe75a8d0540ae" -> "sha256:4f1faad8fae970539a8b06167d3423422ddef4ac866a3162e5b96afef62f6b5f" [label=""];
}

