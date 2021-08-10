[app/sources/191000637.Dockerfile]
digraph {
  "sha256:2f76b5d999c429f59b1cf92b1b8516e0f86f0986cde7c5e57e0adf038952fc08" [label="docker-image://docker.io/lab41/spark-base:latest" shape="ellipse"];
  "sha256:57b4cce0f2404f9aacecb427eb8e2d9ea854e61e177ffe683a66bf79653f9a71" [label="local://context" shape="ellipse"];
  "sha256:f69d1069739fd6b0b2506c6679d4e83fc5629c73bd08e27dfc4fb1aab0048982" [label="copy{src=/config/service, dest=/etc/service}" shape="note"];
  "sha256:3ca9f322ad4306f44f07435b16484d5e988b26de22f58d24d4619ef07245eabe" [label="sha256:3ca9f322ad4306f44f07435b16484d5e988b26de22f58d24d4619ef07245eabe" shape="plaintext"];
  "sha256:2f76b5d999c429f59b1cf92b1b8516e0f86f0986cde7c5e57e0adf038952fc08" -> "sha256:f69d1069739fd6b0b2506c6679d4e83fc5629c73bd08e27dfc4fb1aab0048982" [label=""];
  "sha256:57b4cce0f2404f9aacecb427eb8e2d9ea854e61e177ffe683a66bf79653f9a71" -> "sha256:f69d1069739fd6b0b2506c6679d4e83fc5629c73bd08e27dfc4fb1aab0048982" [label=""];
  "sha256:f69d1069739fd6b0b2506c6679d4e83fc5629c73bd08e27dfc4fb1aab0048982" -> "sha256:3ca9f322ad4306f44f07435b16484d5e988b26de22f58d24d4619ef07245eabe" [label=""];
}

