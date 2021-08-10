[app/sources/130407896.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:3cdb12ab860897adb35e5261b600045f6b8d7d056d1d33fceef94ec04c90c0e8" [label="/bin/sh -c apk --no-cache add ca-certificates" shape="box"];
  "sha256:bfbb035813e9e161add4e401fb8ab58241ef3446bed44f6941bdb255bbe8c3fb" [label="mkdir{path=/root}" shape="note"];
  "sha256:9be9a0353274ded952b89beff8b84e91a6475457d3473f1f0f4141549211f997" [label="docker-image://docker.io/library/golang:1.8.3" shape="ellipse"];
  "sha256:c8ef2a1f630acd752ed2d669431dcd02edc5d5a59c47612d9c2511358a7f6acf" [label="mkdir{path=/go/src/tiedot}" shape="note"];
  "sha256:02339445b4be6256648857bd7f8e3f448064ea9abaaca53067714be3c78ca4a5" [label="local://context" shape="ellipse"];
  "sha256:95334e9c7b97a59a0f04ad360b6e0bb89dbd9d7a0e0b5a5eb142842dcfd98ddf" [label="copy{src=/, dest=/go/src/tiedot/}" shape="note"];
  "sha256:14428a708a826cbe8b09d52de835c8efbf8384b7b102a0dccf07a6ba029389a2" [label="mkdir{path=/go}" shape="note"];
  "sha256:4ee5ac5a33dc2685556c445375bf55fd8ae24b4702964625b93e27cce7c94c91" [label="/bin/sh -c go get -v -d tiedot" shape="box"];
  "sha256:6fc789e1c8a060516e8b912ad51e5ba80461ad3e10d22db927a73c021efaa1aa" [label="/bin/sh -c CGO_ENABLED=0 GOOS=linux go install -a -installsuffix cgo -v tiedot" shape="box"];
  "sha256:1285903e8a6cb5996966106148a0a621c8b8b91ffb28856cee9c7bcaab274d52" [label="copy{src=/go/bin/tiedot, dest=/bin/}" shape="note"];
  "sha256:f33da32e6b363070e60a22773df1fd05330fb9bfe60167531b0a35f4eedf7af1" [label="/bin/sh -c chmod +x /bin/tiedot" shape="box"];
  "sha256:b7b9550c527e0c9af8632e58412e0191e67dac7c581d73abcc79e965f8cfac39" [label="sha256:b7b9550c527e0c9af8632e58412e0191e67dac7c581d73abcc79e965f8cfac39" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:3cdb12ab860897adb35e5261b600045f6b8d7d056d1d33fceef94ec04c90c0e8" [label=""];
  "sha256:3cdb12ab860897adb35e5261b600045f6b8d7d056d1d33fceef94ec04c90c0e8" -> "sha256:bfbb035813e9e161add4e401fb8ab58241ef3446bed44f6941bdb255bbe8c3fb" [label=""];
  "sha256:9be9a0353274ded952b89beff8b84e91a6475457d3473f1f0f4141549211f997" -> "sha256:c8ef2a1f630acd752ed2d669431dcd02edc5d5a59c47612d9c2511358a7f6acf" [label=""];
  "sha256:c8ef2a1f630acd752ed2d669431dcd02edc5d5a59c47612d9c2511358a7f6acf" -> "sha256:95334e9c7b97a59a0f04ad360b6e0bb89dbd9d7a0e0b5a5eb142842dcfd98ddf" [label=""];
  "sha256:02339445b4be6256648857bd7f8e3f448064ea9abaaca53067714be3c78ca4a5" -> "sha256:95334e9c7b97a59a0f04ad360b6e0bb89dbd9d7a0e0b5a5eb142842dcfd98ddf" [label=""];
  "sha256:95334e9c7b97a59a0f04ad360b6e0bb89dbd9d7a0e0b5a5eb142842dcfd98ddf" -> "sha256:14428a708a826cbe8b09d52de835c8efbf8384b7b102a0dccf07a6ba029389a2" [label=""];
  "sha256:14428a708a826cbe8b09d52de835c8efbf8384b7b102a0dccf07a6ba029389a2" -> "sha256:4ee5ac5a33dc2685556c445375bf55fd8ae24b4702964625b93e27cce7c94c91" [label=""];
  "sha256:4ee5ac5a33dc2685556c445375bf55fd8ae24b4702964625b93e27cce7c94c91" -> "sha256:6fc789e1c8a060516e8b912ad51e5ba80461ad3e10d22db927a73c021efaa1aa" [label=""];
  "sha256:bfbb035813e9e161add4e401fb8ab58241ef3446bed44f6941bdb255bbe8c3fb" -> "sha256:1285903e8a6cb5996966106148a0a621c8b8b91ffb28856cee9c7bcaab274d52" [label=""];
  "sha256:6fc789e1c8a060516e8b912ad51e5ba80461ad3e10d22db927a73c021efaa1aa" -> "sha256:1285903e8a6cb5996966106148a0a621c8b8b91ffb28856cee9c7bcaab274d52" [label=""];
  "sha256:1285903e8a6cb5996966106148a0a621c8b8b91ffb28856cee9c7bcaab274d52" -> "sha256:f33da32e6b363070e60a22773df1fd05330fb9bfe60167531b0a35f4eedf7af1" [label=""];
  "sha256:f33da32e6b363070e60a22773df1fd05330fb9bfe60167531b0a35f4eedf7af1" -> "sha256:b7b9550c527e0c9af8632e58412e0191e67dac7c581d73abcc79e965f8cfac39" [label=""];
}

