[app/sources/209465086.Dockerfile]
digraph {
  "sha256:af489bbeb7a2bdff3ca64e4e7e003a30f78957ec78fdc74f5a87da31beeba0a8" [label="docker-image://docker.io/kennychennetman/sa_dockerreading:scratch_v2" shape="ellipse"];
  "sha256:953adeb6d5dc262b6ebee2150b6cef7a1733876231e16bace364f96c1d1b42b4" [label="local://context" shape="ellipse"];
  "sha256:292114ac671adeecd24f50b7bf0cd88ce0809c5a7fd69077f7d376310cd448bb" [label="copy{src=/files/4.txt, dest=/4.txt}" shape="note"];
  "sha256:e669c61ba254b1c0caa347ef03ccb10e6be595d5e9faf738111fe017000fee06" [label="sha256:e669c61ba254b1c0caa347ef03ccb10e6be595d5e9faf738111fe017000fee06" shape="plaintext"];
  "sha256:af489bbeb7a2bdff3ca64e4e7e003a30f78957ec78fdc74f5a87da31beeba0a8" -> "sha256:292114ac671adeecd24f50b7bf0cd88ce0809c5a7fd69077f7d376310cd448bb" [label=""];
  "sha256:953adeb6d5dc262b6ebee2150b6cef7a1733876231e16bace364f96c1d1b42b4" -> "sha256:292114ac671adeecd24f50b7bf0cd88ce0809c5a7fd69077f7d376310cd448bb" [label=""];
  "sha256:292114ac671adeecd24f50b7bf0cd88ce0809c5a7fd69077f7d376310cd448bb" -> "sha256:e669c61ba254b1c0caa347ef03ccb10e6be595d5e9faf738111fe017000fee06" [label=""];
}

