[app/sources/246055224.Dockerfile]
digraph {
  "sha256:a76019a95dee5879f498940b5b3e8227af4c6ccd671f2ac1899cd67404f5d53a" [label="docker-image://docker.io/library/golang:1.12.6" shape="ellipse"];
  "sha256:85f42596b9a666a014ad7d2d032fbe7f0c0cfa8f3cf731b004b627bb00a80a5e" [label="mkdir{path=/go/src/app}" shape="note"];
  "sha256:bcbdced7fd69fcee4e18098d440af3c1c977f615674ce89ee5accedd6cd7b833" [label="local://context" shape="ellipse"];
  "sha256:53841ae80c89171f9478d9cd93e405bdf6b6a46df73295adaf7c3db13e3712c5" [label="copy{src=/main.go, dest=/go/src/app/},copy{src=/go.mod, dest=/go/src/app/}" shape="note"];
  "sha256:880be07014cf25cd086722cb6d8367686aacd1d1104b0eeb19eda6829cc8661b" [label="/bin/sh -c go build main.go" shape="box"];
  "sha256:479995fbeaad3bca37386ec0cfddaf83ac70b5b2684197339c23b719e64af7ee" [label="sha256:479995fbeaad3bca37386ec0cfddaf83ac70b5b2684197339c23b719e64af7ee" shape="plaintext"];
  "sha256:a76019a95dee5879f498940b5b3e8227af4c6ccd671f2ac1899cd67404f5d53a" -> "sha256:85f42596b9a666a014ad7d2d032fbe7f0c0cfa8f3cf731b004b627bb00a80a5e" [label=""];
  "sha256:85f42596b9a666a014ad7d2d032fbe7f0c0cfa8f3cf731b004b627bb00a80a5e" -> "sha256:53841ae80c89171f9478d9cd93e405bdf6b6a46df73295adaf7c3db13e3712c5" [label=""];
  "sha256:bcbdced7fd69fcee4e18098d440af3c1c977f615674ce89ee5accedd6cd7b833" -> "sha256:53841ae80c89171f9478d9cd93e405bdf6b6a46df73295adaf7c3db13e3712c5" [label=""];
  "sha256:53841ae80c89171f9478d9cd93e405bdf6b6a46df73295adaf7c3db13e3712c5" -> "sha256:880be07014cf25cd086722cb6d8367686aacd1d1104b0eeb19eda6829cc8661b" [label=""];
  "sha256:880be07014cf25cd086722cb6d8367686aacd1d1104b0eeb19eda6829cc8661b" -> "sha256:479995fbeaad3bca37386ec0cfddaf83ac70b5b2684197339c23b719e64af7ee" [label=""];
}

