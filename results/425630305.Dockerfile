[app/sources/425630305.Dockerfile]
digraph {
  "sha256:3e88a973c2d640763b25812ede5a94c3fedadb9fec58843f13933133a37fdef2" [label="local://context" shape="ellipse"];
  "sha256:c72b6c855e5a9c758366321a715e67894a23c79c878d2a457f9bf15c55cf0c5a" [label="docker-image://docker.io/library/golang:1.4" shape="ellipse"];
  "sha256:5bc00c170db7a3a098e1da38abce9028dfd53194aca9f2e9de3a8f328345992f" [label="copy{src=/, dest=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:8bac7187916a3941eb811bbb64ea2e09cb549aaf6d031e9972b1bbd6ae6e86bc" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tvim \t&& rm -rf /var/list/apt/lists/*" shape="box"];
  "sha256:6f76e651101d7009bcb39976085361294eafbf1e458bc02019ff121c4756ecea" [label="mkdir{path=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:b99fdd055f6e68da7566f9fa97b57d4ca46f53cb5e92734bf1e9a9994979719b" [label="sha256:b99fdd055f6e68da7566f9fa97b57d4ca46f53cb5e92734bf1e9a9994979719b" shape="plaintext"];
  "sha256:c72b6c855e5a9c758366321a715e67894a23c79c878d2a457f9bf15c55cf0c5a" -> "sha256:5bc00c170db7a3a098e1da38abce9028dfd53194aca9f2e9de3a8f328345992f" [label=""];
  "sha256:3e88a973c2d640763b25812ede5a94c3fedadb9fec58843f13933133a37fdef2" -> "sha256:5bc00c170db7a3a098e1da38abce9028dfd53194aca9f2e9de3a8f328345992f" [label=""];
  "sha256:5bc00c170db7a3a098e1da38abce9028dfd53194aca9f2e9de3a8f328345992f" -> "sha256:8bac7187916a3941eb811bbb64ea2e09cb549aaf6d031e9972b1bbd6ae6e86bc" [label=""];
  "sha256:8bac7187916a3941eb811bbb64ea2e09cb549aaf6d031e9972b1bbd6ae6e86bc" -> "sha256:6f76e651101d7009bcb39976085361294eafbf1e458bc02019ff121c4756ecea" [label=""];
  "sha256:6f76e651101d7009bcb39976085361294eafbf1e458bc02019ff121c4756ecea" -> "sha256:b99fdd055f6e68da7566f9fa97b57d4ca46f53cb5e92734bf1e9a9994979719b" [label=""];
}

