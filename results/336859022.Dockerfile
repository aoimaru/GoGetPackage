[app/sources/336859022.Dockerfile]
digraph {
  "sha256:0c9a51599062e5153a0967e70fe6faa40dfe1d6100e2bb198db5f4474bee4355" [label="docker-image://docker.io/library/python:3.6-alpine" shape="ellipse"];
  "sha256:aca97272edd2376556730398cfc43501fa81b64e115da2ad9fd9dc2b4feb0d0a" [label="local://context" shape="ellipse"];
  "sha256:6e2e1bc76de55d4d46506c838dc8b99ee5736ab69d3e5851663deffe67780acb" [label="copy{src=/, dest=/src/}" shape="note"];
  "sha256:09c82ce853a07e5004b43eb85b9d89549af8c7f6370d5ccac9b25efac9c83dc5" [label="/bin/sh -c pip install --no-cache ptvsd" shape="box"];
  "sha256:660940a7ed5510010d177dc31a649dc34c1318d6ba9229496392c1c90b986243" [label="sha256:660940a7ed5510010d177dc31a649dc34c1318d6ba9229496392c1c90b986243" shape="plaintext"];
  "sha256:0c9a51599062e5153a0967e70fe6faa40dfe1d6100e2bb198db5f4474bee4355" -> "sha256:6e2e1bc76de55d4d46506c838dc8b99ee5736ab69d3e5851663deffe67780acb" [label=""];
  "sha256:aca97272edd2376556730398cfc43501fa81b64e115da2ad9fd9dc2b4feb0d0a" -> "sha256:6e2e1bc76de55d4d46506c838dc8b99ee5736ab69d3e5851663deffe67780acb" [label=""];
  "sha256:6e2e1bc76de55d4d46506c838dc8b99ee5736ab69d3e5851663deffe67780acb" -> "sha256:09c82ce853a07e5004b43eb85b9d89549af8c7f6370d5ccac9b25efac9c83dc5" [label=""];
  "sha256:09c82ce853a07e5004b43eb85b9d89549af8c7f6370d5ccac9b25efac9c83dc5" -> "sha256:660940a7ed5510010d177dc31a649dc34c1318d6ba9229496392c1c90b986243" [label=""];
}

