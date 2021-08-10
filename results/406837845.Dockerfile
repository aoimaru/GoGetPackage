[app/sources/406837845.Dockerfile]
digraph {
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:1d7895656f36a91b46699c100076dccc0ae2970c3eb6281ebcc66889b1794af8" [label="/bin/sh -c apt-get update &&     apt-get install -y ca-certificates wget jq &&     rm -rf /var/lib/apt/lists &&     wget https://storage.googleapis.com/kubernetes-release/release/v1.13.5/bin/linux/amd64/kubectl -O /bin/kubectl &&     chmod +x /bin/kubectl &&     mkdir /hooks" shape="box"];
  "sha256:87bedb9b92fe1d908e572937ea666ccf44e3217665580217ffc4f84a39b6810c" [label="docker-image://docker.io/library/golang:1.11-alpine3.9" shape="ellipse"];
  "sha256:46a27de4af60a54a0d367b7c32d414ace01185f7f4e757f1951ef4c3989a0de5" [label="/bin/sh -c apk --no-cache add git ca-certificates" shape="box"];
  "sha256:c8daa12af7f1da0b717bf2916e0c0fce83eeb989d1b7d3a0ed76331db166861b" [label="local://context" shape="ellipse"];
  "sha256:4cc771c52c339a461b7fb84b6f50f2962729a1bebebc8551eee896d4cbb0ecef" [label="copy{src=/, dest=/go/src/github.com/flant/shell-operator}" shape="note"];
  "sha256:4fb83975a69478e75cfe2e6426cc55dd16e1c121817565e14cff7fa8b6298552" [label="/bin/sh -c go get -d github.com/flant/shell-operator/..." shape="box"];
  "sha256:d3989b3c12b9359dca311fedef6b0fbb96ad33d1510d637c3f9514ed6c39cf23" [label="mkdir{path=/go/src/github.com/flant/shell-operator}" shape="note"];
  "sha256:f16497eb788eda8de48b43c49572ebe8ace31c5a2ad3208f76cb8bca5f383fa7" [label="/bin/sh -c CGO_ENABLED=0 GOOS=linux go build -ldflags=\"-s -w\" -o shell-operator ./cmd/shell-operator" shape="box"];
  "sha256:decdb797e6a52ac5458fe60727004dfd2cc47f5bce4c4076d3e2ab91be95e99b" [label="copy{src=/go/src/github.com/flant/shell-operator/shell-operator, dest=/}" shape="note"];
  "sha256:d4328f63289ca9e7257e6658e0404cc57bbf7f84998f43040f7f6f302d79d9cd" [label="sha256:d4328f63289ca9e7257e6658e0404cc57bbf7f84998f43040f7f6f302d79d9cd" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:1d7895656f36a91b46699c100076dccc0ae2970c3eb6281ebcc66889b1794af8" [label=""];
  "sha256:87bedb9b92fe1d908e572937ea666ccf44e3217665580217ffc4f84a39b6810c" -> "sha256:46a27de4af60a54a0d367b7c32d414ace01185f7f4e757f1951ef4c3989a0de5" [label=""];
  "sha256:46a27de4af60a54a0d367b7c32d414ace01185f7f4e757f1951ef4c3989a0de5" -> "sha256:4cc771c52c339a461b7fb84b6f50f2962729a1bebebc8551eee896d4cbb0ecef" [label=""];
  "sha256:c8daa12af7f1da0b717bf2916e0c0fce83eeb989d1b7d3a0ed76331db166861b" -> "sha256:4cc771c52c339a461b7fb84b6f50f2962729a1bebebc8551eee896d4cbb0ecef" [label=""];
  "sha256:4cc771c52c339a461b7fb84b6f50f2962729a1bebebc8551eee896d4cbb0ecef" -> "sha256:4fb83975a69478e75cfe2e6426cc55dd16e1c121817565e14cff7fa8b6298552" [label=""];
  "sha256:4fb83975a69478e75cfe2e6426cc55dd16e1c121817565e14cff7fa8b6298552" -> "sha256:d3989b3c12b9359dca311fedef6b0fbb96ad33d1510d637c3f9514ed6c39cf23" [label=""];
  "sha256:d3989b3c12b9359dca311fedef6b0fbb96ad33d1510d637c3f9514ed6c39cf23" -> "sha256:f16497eb788eda8de48b43c49572ebe8ace31c5a2ad3208f76cb8bca5f383fa7" [label=""];
  "sha256:1d7895656f36a91b46699c100076dccc0ae2970c3eb6281ebcc66889b1794af8" -> "sha256:decdb797e6a52ac5458fe60727004dfd2cc47f5bce4c4076d3e2ab91be95e99b" [label=""];
  "sha256:f16497eb788eda8de48b43c49572ebe8ace31c5a2ad3208f76cb8bca5f383fa7" -> "sha256:decdb797e6a52ac5458fe60727004dfd2cc47f5bce4c4076d3e2ab91be95e99b" [label=""];
  "sha256:decdb797e6a52ac5458fe60727004dfd2cc47f5bce4c4076d3e2ab91be95e99b" -> "sha256:d4328f63289ca9e7257e6658e0404cc57bbf7f84998f43040f7f6f302d79d9cd" [label=""];
}

