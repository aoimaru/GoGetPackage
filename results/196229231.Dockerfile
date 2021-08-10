[app/sources/196229231.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:a81efdceb3185c8a1d516ccaf98a2650a4c7d19bc13fdd3e542ee923288574ef" [label="/bin/sh -c apk add --update --progress make wget python git" shape="box"];
  "sha256:ceb1e133f57b294d8776751d8ea5414b0d1ba75f1074bf7346787fc09a9a4fa5" [label="/bin/sh -c wget --no-check-certificate -O - https://bootstrap.pypa.io/get-pip.py | python" shape="box"];
  "sha256:7c0557b4fb67c4789a764335b5ade457890a6124e9e206748f0dab7d1fa06c1b" [label="/bin/sh -c pip install --upgrade pip pylint pyvmomi pyvim" shape="box"];
  "sha256:7724c67dc56cfba363334a0f4ba6b22e17cf97e525afbd5abd946e4706c73057" [label="sha256:7724c67dc56cfba363334a0f4ba6b22e17cf97e525afbd5abd946e4706c73057" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:a81efdceb3185c8a1d516ccaf98a2650a4c7d19bc13fdd3e542ee923288574ef" [label=""];
  "sha256:a81efdceb3185c8a1d516ccaf98a2650a4c7d19bc13fdd3e542ee923288574ef" -> "sha256:ceb1e133f57b294d8776751d8ea5414b0d1ba75f1074bf7346787fc09a9a4fa5" [label=""];
  "sha256:ceb1e133f57b294d8776751d8ea5414b0d1ba75f1074bf7346787fc09a9a4fa5" -> "sha256:7c0557b4fb67c4789a764335b5ade457890a6124e9e206748f0dab7d1fa06c1b" [label=""];
  "sha256:7c0557b4fb67c4789a764335b5ade457890a6124e9e206748f0dab7d1fa06c1b" -> "sha256:7724c67dc56cfba363334a0f4ba6b22e17cf97e525afbd5abd946e4706c73057" [label=""];
}

