[app/sources/290012452.Dockerfile]
digraph {
  "sha256:e6f4f0646c18310864c16c7c532b5372669c5105dc54e5818c72e6255c1dd76f" [label="docker-image://docker.io/library/aws-golang:tip" shape="ellipse"];
  "sha256:5fed45ebec0a1a535dcd869fa85041f63862bed9dc720e95b56225002e65809a" [label="local://context" shape="ellipse"];
  "sha256:03403e3cbef9d3b642db09a1564d618abc49d19b2da9679ed234536faab17063" [label="copy{src=/, dest=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:5dcdfb37061ec73dafe46a0b21da7a61bc5bfa1e9e146286753db8b46cb87209" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tvim \t&& rm -rf /var/list/apt/lists/*" shape="box"];
  "sha256:05280bc4f3e6ca9ad79fcc52ff3883f1e41b5f611405b38c2075260053e9499f" [label="mkdir{path=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:064b990a02f8f7f41cf09aae4399b2ea2e98cf68646a1ac59d44c3e445eeb253" [label="sha256:064b990a02f8f7f41cf09aae4399b2ea2e98cf68646a1ac59d44c3e445eeb253" shape="plaintext"];
  "sha256:e6f4f0646c18310864c16c7c532b5372669c5105dc54e5818c72e6255c1dd76f" -> "sha256:03403e3cbef9d3b642db09a1564d618abc49d19b2da9679ed234536faab17063" [label=""];
  "sha256:5fed45ebec0a1a535dcd869fa85041f63862bed9dc720e95b56225002e65809a" -> "sha256:03403e3cbef9d3b642db09a1564d618abc49d19b2da9679ed234536faab17063" [label=""];
  "sha256:03403e3cbef9d3b642db09a1564d618abc49d19b2da9679ed234536faab17063" -> "sha256:5dcdfb37061ec73dafe46a0b21da7a61bc5bfa1e9e146286753db8b46cb87209" [label=""];
  "sha256:5dcdfb37061ec73dafe46a0b21da7a61bc5bfa1e9e146286753db8b46cb87209" -> "sha256:05280bc4f3e6ca9ad79fcc52ff3883f1e41b5f611405b38c2075260053e9499f" [label=""];
  "sha256:05280bc4f3e6ca9ad79fcc52ff3883f1e41b5f611405b38c2075260053e9499f" -> "sha256:064b990a02f8f7f41cf09aae4399b2ea2e98cf68646a1ac59d44c3e445eeb253" [label=""];
}

