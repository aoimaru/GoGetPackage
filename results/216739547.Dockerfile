[app/sources/216739547.Dockerfile]
digraph {
  "sha256:dbf2e27d11b1f36db6e67c0cefc67ad1794da6dd45b4f0ef5698250ae6a8bcec" [label="docker-image://docker.io/library/node:6-slim" shape="ellipse"];
  "sha256:7aa69cca47c0f688ee2b21ff0885b4a654b7962aae23b3a93bba285fb118ca03" [label="local://context" shape="ellipse"];
  "sha256:68f035b2268d6f1c2cb3d24b5db554e974c740e6d7a0a0d01281918ee493ae18" [label="copy{src=/, dest=/}" shape="note"];
  "sha256:7bd7d7aa3a63ef284dd670b8ceb4d71b44233e9470328b047a19bd5a8521adfa" [label="/bin/sh -c npm install --ignore-scripts" shape="box"];
  "sha256:f6e2afa8ab2ed6ac8aec4af56a4f5d0cb13f45de47a1c99fa2fe117086e7f162" [label="sha256:f6e2afa8ab2ed6ac8aec4af56a4f5d0cb13f45de47a1c99fa2fe117086e7f162" shape="plaintext"];
  "sha256:dbf2e27d11b1f36db6e67c0cefc67ad1794da6dd45b4f0ef5698250ae6a8bcec" -> "sha256:68f035b2268d6f1c2cb3d24b5db554e974c740e6d7a0a0d01281918ee493ae18" [label=""];
  "sha256:7aa69cca47c0f688ee2b21ff0885b4a654b7962aae23b3a93bba285fb118ca03" -> "sha256:68f035b2268d6f1c2cb3d24b5db554e974c740e6d7a0a0d01281918ee493ae18" [label=""];
  "sha256:68f035b2268d6f1c2cb3d24b5db554e974c740e6d7a0a0d01281918ee493ae18" -> "sha256:7bd7d7aa3a63ef284dd670b8ceb4d71b44233e9470328b047a19bd5a8521adfa" [label=""];
  "sha256:7bd7d7aa3a63ef284dd670b8ceb4d71b44233e9470328b047a19bd5a8521adfa" -> "sha256:f6e2afa8ab2ed6ac8aec4af56a4f5d0cb13f45de47a1c99fa2fe117086e7f162" [label=""];
}

