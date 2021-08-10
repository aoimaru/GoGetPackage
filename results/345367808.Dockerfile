[app/sources/345367808.Dockerfile]
digraph {
  "sha256:f072f97a2efeddbf6a8ddcbe3cec4af66197396ae514f80212d29e63f065c3fb" [label="docker-image://docker.io/balenalib/artik5-debian:jessie-build" shape="ellipse"];
  "sha256:ddc34f2a4816b23216b0235ecb3b6b823bd77cf2cfbd7074b37c1302720baf06" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"1512240ffe447bca9fe3726e4e253975c92a0053c2b738df031b8be1ffdadee8  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:311935ea28a955799627fb33abd8cdebb9b4a6b8d5ef8dccb968bca8e9efffa4" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:35431e8fe3acade74cc1c105e68bdad87bff729d6197ac747eb486730c4a7ba5" [label="mkdir{path=/go}" shape="note"];
  "sha256:51fef1917e03d6474713fba7a93167a05a57b73088defea22b96f837a667913d" [label="sha256:51fef1917e03d6474713fba7a93167a05a57b73088defea22b96f837a667913d" shape="plaintext"];
  "sha256:f072f97a2efeddbf6a8ddcbe3cec4af66197396ae514f80212d29e63f065c3fb" -> "sha256:ddc34f2a4816b23216b0235ecb3b6b823bd77cf2cfbd7074b37c1302720baf06" [label=""];
  "sha256:ddc34f2a4816b23216b0235ecb3b6b823bd77cf2cfbd7074b37c1302720baf06" -> "sha256:311935ea28a955799627fb33abd8cdebb9b4a6b8d5ef8dccb968bca8e9efffa4" [label=""];
  "sha256:311935ea28a955799627fb33abd8cdebb9b4a6b8d5ef8dccb968bca8e9efffa4" -> "sha256:35431e8fe3acade74cc1c105e68bdad87bff729d6197ac747eb486730c4a7ba5" [label=""];
  "sha256:35431e8fe3acade74cc1c105e68bdad87bff729d6197ac747eb486730c4a7ba5" -> "sha256:51fef1917e03d6474713fba7a93167a05a57b73088defea22b96f837a667913d" [label=""];
}

