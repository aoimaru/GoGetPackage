[app/sources/182701123.Dockerfile]
digraph {
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" [label="docker-image://docker.io/library/fedora:latest" shape="ellipse"];
  "sha256:e1cb975936af8414dbe7afecacac08b4a759329bae6292222b8bf1780f1cc716" [label="local://context" shape="ellipse"];
  "sha256:f4f02d219e43d0fc451dbab859c3e30b36aed1d4fb6c730df89503cabcb62fb4" [label="copy{src=/apiextensions-apiserver, dest=/}" shape="note"];
  "sha256:50183df0ef94c6c56191832d235f5d3e9a2dc609e207b385795058c84f228626" [label="sha256:50183df0ef94c6c56191832d235f5d3e9a2dc609e207b385795058c84f228626" shape="plaintext"];
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" -> "sha256:f4f02d219e43d0fc451dbab859c3e30b36aed1d4fb6c730df89503cabcb62fb4" [label=""];
  "sha256:e1cb975936af8414dbe7afecacac08b4a759329bae6292222b8bf1780f1cc716" -> "sha256:f4f02d219e43d0fc451dbab859c3e30b36aed1d4fb6c730df89503cabcb62fb4" [label=""];
  "sha256:f4f02d219e43d0fc451dbab859c3e30b36aed1d4fb6c730df89503cabcb62fb4" -> "sha256:50183df0ef94c6c56191832d235f5d3e9a2dc609e207b385795058c84f228626" [label=""];
}

