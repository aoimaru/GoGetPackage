[app/sources/249466856.Dockerfile]
digraph {
  "sha256:d39d5ab728a8d06fa413a8a07515e03d4fbed2ae4bd6b7b7d8d1b5f26a0db7a7" [label="docker-image://docker.io/ibmcom/datapower:latest@sha256:5ae02384890f4912438228ccd7445cda0e4c8aed1fd0c3522c50c0d821ec2a29" shape="ellipse"];
  "sha256:d4bc6844b6fd6b66c63f1f954402087948da9523e817df6cff182b82c1d530eb" [label="local://context" shape="ellipse"];
  "sha256:1badf97115aa76cfe75911683000316c7964355928dec5a29d0dd744f634bec0" [label="copy{src=/src, dest=/drouter/}" shape="note"];
  "sha256:80ca60e9495b5250ab9ef01c4b77e4a91ff6395de2c66bd6c2429c7534f2002e" [label="sha256:80ca60e9495b5250ab9ef01c4b77e4a91ff6395de2c66bd6c2429c7534f2002e" shape="plaintext"];
  "sha256:d39d5ab728a8d06fa413a8a07515e03d4fbed2ae4bd6b7b7d8d1b5f26a0db7a7" -> "sha256:1badf97115aa76cfe75911683000316c7964355928dec5a29d0dd744f634bec0" [label=""];
  "sha256:d4bc6844b6fd6b66c63f1f954402087948da9523e817df6cff182b82c1d530eb" -> "sha256:1badf97115aa76cfe75911683000316c7964355928dec5a29d0dd744f634bec0" [label=""];
  "sha256:1badf97115aa76cfe75911683000316c7964355928dec5a29d0dd744f634bec0" -> "sha256:80ca60e9495b5250ab9ef01c4b77e4a91ff6395de2c66bd6c2429c7534f2002e" [label=""];
}

