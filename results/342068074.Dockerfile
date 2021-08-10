[app/sources/342068074.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:f38bec313aaa3c08651e8ffb88d78d220e6f1c32a1e08e35363356dcda120e78" [label="local://context" shape="ellipse"];
  "sha256:0c2bed4f6948beeefc2f3bdb6bb7a020759eba451c3ba0b9bca2c55fae00520e" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:6f9046c6ca80411748aec23659cbcc829c3e485158a719a9e5a4a58575d82ff0" [label="pip install boto" shape="box"];
  "sha256:a76e745c45364c6d6ab493d0b6041ecc04995fa85b5602010e0bb256c2bf0679" [label="pip install boto" shape="box"];
  "sha256:7fdfaa05c5378e407f1bc9340319d823a4163560d222a95617a37580bbf18761" [label="sha256:7fdfaa05c5378e407f1bc9340319d823a4163560d222a95617a37580bbf18761" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:0c2bed4f6948beeefc2f3bdb6bb7a020759eba451c3ba0b9bca2c55fae00520e" [label=""];
  "sha256:f38bec313aaa3c08651e8ffb88d78d220e6f1c32a1e08e35363356dcda120e78" -> "sha256:0c2bed4f6948beeefc2f3bdb6bb7a020759eba451c3ba0b9bca2c55fae00520e" [label=""];
  "sha256:0c2bed4f6948beeefc2f3bdb6bb7a020759eba451c3ba0b9bca2c55fae00520e" -> "sha256:6f9046c6ca80411748aec23659cbcc829c3e485158a719a9e5a4a58575d82ff0" [label=""];
  "sha256:6f9046c6ca80411748aec23659cbcc829c3e485158a719a9e5a4a58575d82ff0" -> "sha256:a76e745c45364c6d6ab493d0b6041ecc04995fa85b5602010e0bb256c2bf0679" [label=""];
  "sha256:a76e745c45364c6d6ab493d0b6041ecc04995fa85b5602010e0bb256c2bf0679" -> "sha256:7fdfaa05c5378e407f1bc9340319d823a4163560d222a95617a37580bbf18761" [label=""];
}

