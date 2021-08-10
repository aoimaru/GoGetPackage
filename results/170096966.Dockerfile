[app/sources/170096966.Dockerfile]
digraph {
  "sha256:dea938099208bbc0ee4f4863928ee5d25b9f64e293d2278aa65397272f1cb036" [label="local://context" shape="ellipse"];
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" [label="docker-image://docker.io/library/nginx:latest" shape="ellipse"];
  "sha256:d06e4b99cd6aa6d886ac85f1604e367e1684ad39bbe37f28f7fb79d1a6b06354" [label="/bin/sh -c mkdir /etc/nginx/ssl/" shape="box"];
  "sha256:db392911afff31019d401633fbc895348ceed3856482bc15798506aaf51fac38" [label="copy{src=/cert/nginx.crt, dest=/etc/nginx/ssl/nginx.crt}" shape="note"];
  "sha256:b6625292e136d99d9ff601bc8620ca1737da3d14ce4c146c80fc6933cda26935" [label="copy{src=/cert/nginx.key, dest=/etc/nginx/ssl/nginx.key}" shape="note"];
  "sha256:c678554d03c48af8b2dd7018fe702e08cdb9b539d2fb0053e8dbd834a0316249" [label="/bin/sh -c rm /etc/nginx/conf.d/default.conf" shape="box"];
  "sha256:53acf8cdccfe15d5c90478d6d40b0d169915e0d439b8f3fd03b46092e66c0fde" [label="copy{src=/nginx.conf, dest=/etc/nginx/nginx.conf}" shape="note"];
  "sha256:d2f4947407d5b519029a71676ca3bc75e134ef0dbb39e326655c06f321841dee" [label="sha256:d2f4947407d5b519029a71676ca3bc75e134ef0dbb39e326655c06f321841dee" shape="plaintext"];
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" -> "sha256:d06e4b99cd6aa6d886ac85f1604e367e1684ad39bbe37f28f7fb79d1a6b06354" [label=""];
  "sha256:d06e4b99cd6aa6d886ac85f1604e367e1684ad39bbe37f28f7fb79d1a6b06354" -> "sha256:db392911afff31019d401633fbc895348ceed3856482bc15798506aaf51fac38" [label=""];
  "sha256:dea938099208bbc0ee4f4863928ee5d25b9f64e293d2278aa65397272f1cb036" -> "sha256:db392911afff31019d401633fbc895348ceed3856482bc15798506aaf51fac38" [label=""];
  "sha256:db392911afff31019d401633fbc895348ceed3856482bc15798506aaf51fac38" -> "sha256:b6625292e136d99d9ff601bc8620ca1737da3d14ce4c146c80fc6933cda26935" [label=""];
  "sha256:dea938099208bbc0ee4f4863928ee5d25b9f64e293d2278aa65397272f1cb036" -> "sha256:b6625292e136d99d9ff601bc8620ca1737da3d14ce4c146c80fc6933cda26935" [label=""];
  "sha256:b6625292e136d99d9ff601bc8620ca1737da3d14ce4c146c80fc6933cda26935" -> "sha256:c678554d03c48af8b2dd7018fe702e08cdb9b539d2fb0053e8dbd834a0316249" [label=""];
  "sha256:c678554d03c48af8b2dd7018fe702e08cdb9b539d2fb0053e8dbd834a0316249" -> "sha256:53acf8cdccfe15d5c90478d6d40b0d169915e0d439b8f3fd03b46092e66c0fde" [label=""];
  "sha256:dea938099208bbc0ee4f4863928ee5d25b9f64e293d2278aa65397272f1cb036" -> "sha256:53acf8cdccfe15d5c90478d6d40b0d169915e0d439b8f3fd03b46092e66c0fde" [label=""];
  "sha256:53acf8cdccfe15d5c90478d6d40b0d169915e0d439b8f3fd03b46092e66c0fde" -> "sha256:d2f4947407d5b519029a71676ca3bc75e134ef0dbb39e326655c06f321841dee" [label=""];
}

