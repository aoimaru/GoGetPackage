[app/sources/441270472.Dockerfile]
digraph {
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" [label="docker-image://docker.io/library/alpine:3.9" shape="ellipse"];
  "sha256:4a36a160118d94597d06d75482488773173ba40ff06f82859eaa7e53ab3194a7" [label="/bin/sh -c apk add --no-cache ca-certificates" shape="box"];
  "sha256:84bb938f205ca71949501782b0c033b64656c81e53c16b610614e614b2b8ab32" [label="docker-image://docker.io/library/golang:1.12.4-alpine3.9" shape="ellipse"];
  "sha256:c4e9bda9b5bf96a2bc9681d33cab8d71f5751f976bb8b6d628f55fc4da1e984e" [label="/bin/sh -c apk add --no-cache git" shape="box"];
  "sha256:0ad9b9d92dc5a2bd3024e44f4f211d81e2e539d716b468dd79c56cbe276b9c2a" [label="mkdir{path=/build}" shape="note"];
  "sha256:c6d220404c9002580e355dcf5577913558015d96fb36f3fe5ff74acdc42b3316" [label="local://context" shape="ellipse"];
  "sha256:6a998df4078f93996bebf094c91fd105a12559541d0d0cb1880daf0bb818f18c" [label="copy{src=/, dest=/build/}" shape="note"];
  "sha256:74f10896f6969545934f96da2a856e8094b0323ebf1997b15572e6d6a2a43697" [label="/bin/sh -c go build -ldflags \"-X main.build=docker\"" shape="box"];
  "sha256:577674bf5420781790ba2f1a1e774bd3a57a14bf8e091de62c4f10437960643c" [label="copy{src=/build/rainforest-cli, dest=/usr/local/bin/rainforest-cli}" shape="note"];
  "sha256:eaaaff99023baeb7256b4ac37049b435ec9ffb7644adb14181f4ca5ef7a4cde0" [label="sha256:eaaaff99023baeb7256b4ac37049b435ec9ffb7644adb14181f4ca5ef7a4cde0" shape="plaintext"];
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" -> "sha256:4a36a160118d94597d06d75482488773173ba40ff06f82859eaa7e53ab3194a7" [label=""];
  "sha256:84bb938f205ca71949501782b0c033b64656c81e53c16b610614e614b2b8ab32" -> "sha256:c4e9bda9b5bf96a2bc9681d33cab8d71f5751f976bb8b6d628f55fc4da1e984e" [label=""];
  "sha256:c4e9bda9b5bf96a2bc9681d33cab8d71f5751f976bb8b6d628f55fc4da1e984e" -> "sha256:0ad9b9d92dc5a2bd3024e44f4f211d81e2e539d716b468dd79c56cbe276b9c2a" [label=""];
  "sha256:0ad9b9d92dc5a2bd3024e44f4f211d81e2e539d716b468dd79c56cbe276b9c2a" -> "sha256:6a998df4078f93996bebf094c91fd105a12559541d0d0cb1880daf0bb818f18c" [label=""];
  "sha256:c6d220404c9002580e355dcf5577913558015d96fb36f3fe5ff74acdc42b3316" -> "sha256:6a998df4078f93996bebf094c91fd105a12559541d0d0cb1880daf0bb818f18c" [label=""];
  "sha256:6a998df4078f93996bebf094c91fd105a12559541d0d0cb1880daf0bb818f18c" -> "sha256:74f10896f6969545934f96da2a856e8094b0323ebf1997b15572e6d6a2a43697" [label=""];
  "sha256:4a36a160118d94597d06d75482488773173ba40ff06f82859eaa7e53ab3194a7" -> "sha256:577674bf5420781790ba2f1a1e774bd3a57a14bf8e091de62c4f10437960643c" [label=""];
  "sha256:74f10896f6969545934f96da2a856e8094b0323ebf1997b15572e6d6a2a43697" -> "sha256:577674bf5420781790ba2f1a1e774bd3a57a14bf8e091de62c4f10437960643c" [label=""];
  "sha256:577674bf5420781790ba2f1a1e774bd3a57a14bf8e091de62c4f10437960643c" -> "sha256:eaaaff99023baeb7256b4ac37049b435ec9ffb7644adb14181f4ca5ef7a4cde0" [label=""];
}

