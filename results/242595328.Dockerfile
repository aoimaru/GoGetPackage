[app/sources/242595328.Dockerfile]
digraph {
  "sha256:5ac6e5b4bd1e0ab1d990c8afdf543cce5ebff86ae2f82766be2ba1ebf11f194f" [label="docker-image://docker.io/library/golang:1.5" shape="ellipse"];
  "sha256:cbbef63fdb8e1e37c1488e709506a77e8bd47a05da54a813dccac0048f4e8ce1" [label="local://context" shape="ellipse"];
  "sha256:3ab8debfe5c44e157249ff39074eb80ef0a32ed114f88824511d008c137f1d6f" [label="copy{src=/, dest=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:04d07ffbc1ea74e094aa9e9b26547c837f12b4d460366ded07204e65b8435c2d" [label="mkdir{path=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:d9b3e91f5db9687dbba13dce38ad7c18116cc34d9b33450ec4c53b563858853f" [label="sha256:d9b3e91f5db9687dbba13dce38ad7c18116cc34d9b33450ec4c53b563858853f" shape="plaintext"];
  "sha256:5ac6e5b4bd1e0ab1d990c8afdf543cce5ebff86ae2f82766be2ba1ebf11f194f" -> "sha256:3ab8debfe5c44e157249ff39074eb80ef0a32ed114f88824511d008c137f1d6f" [label=""];
  "sha256:cbbef63fdb8e1e37c1488e709506a77e8bd47a05da54a813dccac0048f4e8ce1" -> "sha256:3ab8debfe5c44e157249ff39074eb80ef0a32ed114f88824511d008c137f1d6f" [label=""];
  "sha256:3ab8debfe5c44e157249ff39074eb80ef0a32ed114f88824511d008c137f1d6f" -> "sha256:04d07ffbc1ea74e094aa9e9b26547c837f12b4d460366ded07204e65b8435c2d" [label=""];
  "sha256:04d07ffbc1ea74e094aa9e9b26547c837f12b4d460366ded07204e65b8435c2d" -> "sha256:d9b3e91f5db9687dbba13dce38ad7c18116cc34d9b33450ec4c53b563858853f" [label=""];
}

