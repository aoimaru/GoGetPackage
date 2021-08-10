[app/sources/479083253.Dockerfile]
digraph {
  "sha256:23c4ce6e918f463bc44c8c9e71c4b229e85148ade18058cf720d70a6b6b2b888" [label="docker-image://docker.io/library/node:10-slim" shape="ellipse"];
  "sha256:6e0268fbbd54a6b15c83b379434cd506b3d0d739ae163f7ca6abd3d389d1e043" [label="local://context" shape="ellipse"];
  "sha256:1367b517f040a3df1868ddcf8c8df7c0bfa085e2f8ecb4a8181fc36a4d289bfd" [label="copy{src=/lib, dest=/action/lib}" shape="note"];
  "sha256:a8fc28c6b3401430862de664c95ae0122f68d33364376cf2340d73d6c6167138" [label="sha256:a8fc28c6b3401430862de664c95ae0122f68d33364376cf2340d73d6c6167138" shape="plaintext"];
  "sha256:23c4ce6e918f463bc44c8c9e71c4b229e85148ade18058cf720d70a6b6b2b888" -> "sha256:1367b517f040a3df1868ddcf8c8df7c0bfa085e2f8ecb4a8181fc36a4d289bfd" [label=""];
  "sha256:6e0268fbbd54a6b15c83b379434cd506b3d0d739ae163f7ca6abd3d389d1e043" -> "sha256:1367b517f040a3df1868ddcf8c8df7c0bfa085e2f8ecb4a8181fc36a4d289bfd" [label=""];
  "sha256:1367b517f040a3df1868ddcf8c8df7c0bfa085e2f8ecb4a8181fc36a4d289bfd" -> "sha256:a8fc28c6b3401430862de664c95ae0122f68d33364376cf2340d73d6c6167138" [label=""];
}

