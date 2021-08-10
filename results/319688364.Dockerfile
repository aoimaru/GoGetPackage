[app/sources/319688364.Dockerfile]
digraph {
  "sha256:e6f4f0646c18310864c16c7c532b5372669c5105dc54e5818c72e6255c1dd76f" [label="docker-image://docker.io/library/aws-golang:tip" shape="ellipse"];
  "sha256:b9ab90dad9066ca64ad9e21d34e0291e2f823383ca8c02d2be22d4a93bf6f4c0" [label="local://context" shape="ellipse"];
  "sha256:0862d51415d780332ff12f8cfe2ce1ffcb329711c2ae781a1d14947625db0df9" [label="copy{src=/, dest=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:73067b8090564066cd2a187ed7563cb445bf047b440ae17609e24f286a9cc638" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tvim \t&& rm -rf /var/list/apt/lists/*" shape="box"];
  "sha256:31ea61c5b783426c958658dfc7b68a911b172eb7d2b18f53db238d6411258cc6" [label="mkdir{path=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:b013ce6683977a70ecbcb5cd277be05949c328bd266474533d91157bab621202" [label="sha256:b013ce6683977a70ecbcb5cd277be05949c328bd266474533d91157bab621202" shape="plaintext"];
  "sha256:e6f4f0646c18310864c16c7c532b5372669c5105dc54e5818c72e6255c1dd76f" -> "sha256:0862d51415d780332ff12f8cfe2ce1ffcb329711c2ae781a1d14947625db0df9" [label=""];
  "sha256:b9ab90dad9066ca64ad9e21d34e0291e2f823383ca8c02d2be22d4a93bf6f4c0" -> "sha256:0862d51415d780332ff12f8cfe2ce1ffcb329711c2ae781a1d14947625db0df9" [label=""];
  "sha256:0862d51415d780332ff12f8cfe2ce1ffcb329711c2ae781a1d14947625db0df9" -> "sha256:73067b8090564066cd2a187ed7563cb445bf047b440ae17609e24f286a9cc638" [label=""];
  "sha256:73067b8090564066cd2a187ed7563cb445bf047b440ae17609e24f286a9cc638" -> "sha256:31ea61c5b783426c958658dfc7b68a911b172eb7d2b18f53db238d6411258cc6" [label=""];
  "sha256:31ea61c5b783426c958658dfc7b68a911b172eb7d2b18f53db238d6411258cc6" -> "sha256:b013ce6683977a70ecbcb5cd277be05949c328bd266474533d91157bab621202" [label=""];
}

