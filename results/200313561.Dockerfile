[app/sources/200313561.Dockerfile]
digraph {
  "sha256:a5db121d82ebe613fa0b34dd9a840aefb9947d980d389b55922c4d5146539c15" [label="local://context" shape="ellipse"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:5652f6f142b741ecef2b1ff3504e88accd0a0a146ebc0cd06d3c8a6243e9ed8e" [label="/bin/sh -c apk --update add ca-certificates" shape="box"];
  "sha256:bcde979cfbd74b99b01c7b4e65d85cca6e80b8721b72b0b8cf788e807c60c67b" [label="copy{src=/etc/ssl/certs/ca-certificates.crt, dest=/etc/ssl/certs/ca-certificates.crt}" shape="note"];
  "sha256:f5612d8e7e0e85c3f30612daf2739c7800c90db36989d4538e5d257e252b9fc3" [label="copy{src=/manifest-tool-linux-amd64, dest=/manifest-tool}" shape="note"];
  "sha256:2013e77d32450bed6065044ca237aac25ec51657353efbb32f53db66dff78d95" [label="sha256:2013e77d32450bed6065044ca237aac25ec51657353efbb32f53db66dff78d95" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:5652f6f142b741ecef2b1ff3504e88accd0a0a146ebc0cd06d3c8a6243e9ed8e" [label=""];
  "sha256:5652f6f142b741ecef2b1ff3504e88accd0a0a146ebc0cd06d3c8a6243e9ed8e" -> "sha256:bcde979cfbd74b99b01c7b4e65d85cca6e80b8721b72b0b8cf788e807c60c67b" [label=""];
  "sha256:bcde979cfbd74b99b01c7b4e65d85cca6e80b8721b72b0b8cf788e807c60c67b" -> "sha256:f5612d8e7e0e85c3f30612daf2739c7800c90db36989d4538e5d257e252b9fc3" [label=""];
  "sha256:a5db121d82ebe613fa0b34dd9a840aefb9947d980d389b55922c4d5146539c15" -> "sha256:f5612d8e7e0e85c3f30612daf2739c7800c90db36989d4538e5d257e252b9fc3" [label=""];
  "sha256:f5612d8e7e0e85c3f30612daf2739c7800c90db36989d4538e5d257e252b9fc3" -> "sha256:2013e77d32450bed6065044ca237aac25ec51657353efbb32f53db66dff78d95" [label=""];
}

