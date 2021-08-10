[app/sources/179179752.Dockerfile]
digraph {
  "sha256:5ac6e5b4bd1e0ab1d990c8afdf543cce5ebff86ae2f82766be2ba1ebf11f194f" [label="docker-image://docker.io/library/golang:1.5" shape="ellipse"];
  "sha256:4f322d868c5cd6c4a7de9fc448c05a10f504479104648ce6046af1003d7b0994" [label="local://context" shape="ellipse"];
  "sha256:0d07eb5e1f6ac355a40c689e8b0dfa3992a26e9e96bc132ac76a52e5ef0f5c40" [label="copy{src=/, dest=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:af99ad298d6a38d79d690f1b358225cd0cb7eb8ee94dcae7a468944e45472deb" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tvim \t&& rm -rf /var/list/apt/lists/*" shape="box"];
  "sha256:92da0b88f6da84d457792d854948b48f70cda56170ee83fa1e8f6011231d6357" [label="mkdir{path=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:27595a037ea9a2e0dded742473a66b50e2bf89220cbc0db0dafc2ae7b533f671" [label="sha256:27595a037ea9a2e0dded742473a66b50e2bf89220cbc0db0dafc2ae7b533f671" shape="plaintext"];
  "sha256:5ac6e5b4bd1e0ab1d990c8afdf543cce5ebff86ae2f82766be2ba1ebf11f194f" -> "sha256:0d07eb5e1f6ac355a40c689e8b0dfa3992a26e9e96bc132ac76a52e5ef0f5c40" [label=""];
  "sha256:4f322d868c5cd6c4a7de9fc448c05a10f504479104648ce6046af1003d7b0994" -> "sha256:0d07eb5e1f6ac355a40c689e8b0dfa3992a26e9e96bc132ac76a52e5ef0f5c40" [label=""];
  "sha256:0d07eb5e1f6ac355a40c689e8b0dfa3992a26e9e96bc132ac76a52e5ef0f5c40" -> "sha256:af99ad298d6a38d79d690f1b358225cd0cb7eb8ee94dcae7a468944e45472deb" [label=""];
  "sha256:af99ad298d6a38d79d690f1b358225cd0cb7eb8ee94dcae7a468944e45472deb" -> "sha256:92da0b88f6da84d457792d854948b48f70cda56170ee83fa1e8f6011231d6357" [label=""];
  "sha256:92da0b88f6da84d457792d854948b48f70cda56170ee83fa1e8f6011231d6357" -> "sha256:27595a037ea9a2e0dded742473a66b50e2bf89220cbc0db0dafc2ae7b533f671" [label=""];
}

