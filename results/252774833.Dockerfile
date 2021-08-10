[app/sources/252774833.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:49a8fc83210109a38a861ab72c6b1a33796b08ddc8e92228227c61858070f41e" [label="/bin/sh -c apk update && apk add python3" shape="box"];
  "sha256:5f795f6a1129782bf4aa4785311beba5519a0748dcb53ca68909da90c15e5ac6" [label="local://context" shape="ellipse"];
  "sha256:b1922ddcd98ca4e021bfd001fba1d64baf864e735eab3340b6cac0d5b9c72709" [label="copy{src=/, dest=/tmp/dwms}" shape="note"];
  "sha256:5a605cf8595deb17c8d9cfb2656a74e075334d6b7ddcf1b66a5cf55ded4c11f8" [label="/bin/sh -c cd /tmp/dwms && pip3 install -r requirements.txt && pip3 install ." shape="box"];
  "sha256:a3c68c4ae0f1709ffdd6132241bae402edd5775cd543252d9d68f184db2e1f91" [label="sha256:a3c68c4ae0f1709ffdd6132241bae402edd5775cd543252d9d68f184db2e1f91" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:49a8fc83210109a38a861ab72c6b1a33796b08ddc8e92228227c61858070f41e" [label=""];
  "sha256:49a8fc83210109a38a861ab72c6b1a33796b08ddc8e92228227c61858070f41e" -> "sha256:b1922ddcd98ca4e021bfd001fba1d64baf864e735eab3340b6cac0d5b9c72709" [label=""];
  "sha256:5f795f6a1129782bf4aa4785311beba5519a0748dcb53ca68909da90c15e5ac6" -> "sha256:b1922ddcd98ca4e021bfd001fba1d64baf864e735eab3340b6cac0d5b9c72709" [label=""];
  "sha256:b1922ddcd98ca4e021bfd001fba1d64baf864e735eab3340b6cac0d5b9c72709" -> "sha256:5a605cf8595deb17c8d9cfb2656a74e075334d6b7ddcf1b66a5cf55ded4c11f8" [label=""];
  "sha256:5a605cf8595deb17c8d9cfb2656a74e075334d6b7ddcf1b66a5cf55ded4c11f8" -> "sha256:a3c68c4ae0f1709ffdd6132241bae402edd5775cd543252d9d68f184db2e1f91" [label=""];
}

