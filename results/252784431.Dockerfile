[app/sources/252784431.Dockerfile]
digraph {
  "sha256:5995a39e68e9e61d3ffe79e05fb2178d63b03cf306a8a6d28dcc970298cd13d0" [label="docker-image://docker.io/library/node:6" shape="ellipse"];
  "sha256:f9c0f6dc4188a240f356971e666bf53019e92a8e303e10964fe0f1f8f01a2e31" [label="local://context" shape="ellipse"];
  "sha256:9b4ee32d091322e353d53edbd09e95e12bad6298d85b881a813c87436da4ea95" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:04a88926d7a30492bed4b60ac40346947e0ce54e7ab15ff787aa65256218677a" [label="mkdir{path=/app}" shape="note"];
  "sha256:daada204f0e316d4260306be38a2b415c67e630f805c6673ad04ebe5df545769" [label="/bin/sh -c mv docker/default.js config/default.js" shape="box"];
  "sha256:6ab2720e1b866d7044174e0db1229be77f30a32b9020dbd43b9695f764f29797" [label="/bin/sh -c npm install" shape="box"];
  "sha256:63c69f24ff0f57e6cc17a3ba43ada885c99d32a4a4c20bda7fad2af3755412fa" [label="sha256:63c69f24ff0f57e6cc17a3ba43ada885c99d32a4a4c20bda7fad2af3755412fa" shape="plaintext"];
  "sha256:5995a39e68e9e61d3ffe79e05fb2178d63b03cf306a8a6d28dcc970298cd13d0" -> "sha256:9b4ee32d091322e353d53edbd09e95e12bad6298d85b881a813c87436da4ea95" [label=""];
  "sha256:f9c0f6dc4188a240f356971e666bf53019e92a8e303e10964fe0f1f8f01a2e31" -> "sha256:9b4ee32d091322e353d53edbd09e95e12bad6298d85b881a813c87436da4ea95" [label=""];
  "sha256:9b4ee32d091322e353d53edbd09e95e12bad6298d85b881a813c87436da4ea95" -> "sha256:04a88926d7a30492bed4b60ac40346947e0ce54e7ab15ff787aa65256218677a" [label=""];
  "sha256:04a88926d7a30492bed4b60ac40346947e0ce54e7ab15ff787aa65256218677a" -> "sha256:daada204f0e316d4260306be38a2b415c67e630f805c6673ad04ebe5df545769" [label=""];
  "sha256:daada204f0e316d4260306be38a2b415c67e630f805c6673ad04ebe5df545769" -> "sha256:6ab2720e1b866d7044174e0db1229be77f30a32b9020dbd43b9695f764f29797" [label=""];
  "sha256:6ab2720e1b866d7044174e0db1229be77f30a32b9020dbd43b9695f764f29797" -> "sha256:63c69f24ff0f57e6cc17a3ba43ada885c99d32a4a4c20bda7fad2af3755412fa" [label=""];
}

