[app/sources/282749455.Dockerfile]
digraph {
  "sha256:4c8a775eb316b5158f1a33b78efd034a733fca88450245d1acb218214af64fd7" [label="docker-image://gcr.io/cloud-builders/npm@sha256:73b61edb2a5feabc78c8820a3c3e0b305cd8e07e30838031e32e87753802afe3" shape="ellipse"];
  "sha256:7c7dbc5785c534a602e741fe48241f63067fe6213aa3760584b95bec5a756c04" [label="/bin/sh -c npm install -g @angular/cli@6.* --unsafe-perms" shape="box"];
  "sha256:cb3cc1126c285c6bb65c554d37c3df916406292f6305cab51f4290b3ee4ca413" [label="sha256:cb3cc1126c285c6bb65c554d37c3df916406292f6305cab51f4290b3ee4ca413" shape="plaintext"];
  "sha256:4c8a775eb316b5158f1a33b78efd034a733fca88450245d1acb218214af64fd7" -> "sha256:7c7dbc5785c534a602e741fe48241f63067fe6213aa3760584b95bec5a756c04" [label=""];
  "sha256:7c7dbc5785c534a602e741fe48241f63067fe6213aa3760584b95bec5a756c04" -> "sha256:cb3cc1126c285c6bb65c554d37c3df916406292f6305cab51f4290b3ee4ca413" [label=""];
}

