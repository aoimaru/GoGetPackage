[app/sources/292075578.Dockerfile]
digraph {
  "sha256:e09a417d6ba5d85f9300bd9bf198dccc5297b49061ea65d9a6752db25cdef32d" [label="docker-image://docker.io/library/golang:1.9" shape="ellipse"];
  "sha256:c4fd62cd86f77db1fc11292cf4a7263220088b91ef2258b4acef49f3e7068713" [label="mkdir{path=/go/src/github.com/martin-helmich/cloudnativego-backend}" shape="note"];
  "sha256:f66870b1cfb9f0dc1e82f003b8da2aea68d57219aad81cc95ab341bde8a2c567" [label="local://context" shape="ellipse"];
  "sha256:e1a0dde2e1ed700a231f83d314431f5b3f69d9556963e728e89637fb43121508" [label="copy{src=/, dest=/go/src/github.com/martin-helmich/cloudnativego-backend/}" shape="note"];
  "sha256:4a89dde20347f02dfffbfdfa728dd8dc9193c03e88769232d4da5bae971b7301" [label="mkdir{path=/go/src/github.com/martin-helmich/cloudnativego-backend/src/bookingservice}" shape="note"];
  "sha256:6abdc89294daacb6c72386be6fb08f6f72125d9a8a918217b2fad46a6641fc56" [label="/bin/sh -c CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o bookingservice" shape="box"];
  "sha256:b183c20fe09e3f9ea97863d16cc1031ed81e550b33c7392c2e83029cbc06f772" [label="copy{src=/go/src/github.com/martin-helmich/cloudnativego-backend/src/bookingservice/bookingservice, dest=/bookingservice}" shape="note"];
  "sha256:fe4b1ecb9ae7a220bbccbbda3c29615efa3042eeeeb84acbb5bb4275ce5b300e" [label="sha256:fe4b1ecb9ae7a220bbccbbda3c29615efa3042eeeeb84acbb5bb4275ce5b300e" shape="plaintext"];
  "sha256:e09a417d6ba5d85f9300bd9bf198dccc5297b49061ea65d9a6752db25cdef32d" -> "sha256:c4fd62cd86f77db1fc11292cf4a7263220088b91ef2258b4acef49f3e7068713" [label=""];
  "sha256:c4fd62cd86f77db1fc11292cf4a7263220088b91ef2258b4acef49f3e7068713" -> "sha256:e1a0dde2e1ed700a231f83d314431f5b3f69d9556963e728e89637fb43121508" [label=""];
  "sha256:f66870b1cfb9f0dc1e82f003b8da2aea68d57219aad81cc95ab341bde8a2c567" -> "sha256:e1a0dde2e1ed700a231f83d314431f5b3f69d9556963e728e89637fb43121508" [label=""];
  "sha256:e1a0dde2e1ed700a231f83d314431f5b3f69d9556963e728e89637fb43121508" -> "sha256:4a89dde20347f02dfffbfdfa728dd8dc9193c03e88769232d4da5bae971b7301" [label=""];
  "sha256:4a89dde20347f02dfffbfdfa728dd8dc9193c03e88769232d4da5bae971b7301" -> "sha256:6abdc89294daacb6c72386be6fb08f6f72125d9a8a918217b2fad46a6641fc56" [label=""];
  "sha256:6abdc89294daacb6c72386be6fb08f6f72125d9a8a918217b2fad46a6641fc56" -> "sha256:b183c20fe09e3f9ea97863d16cc1031ed81e550b33c7392c2e83029cbc06f772" [label=""];
  "sha256:b183c20fe09e3f9ea97863d16cc1031ed81e550b33c7392c2e83029cbc06f772" -> "sha256:fe4b1ecb9ae7a220bbccbbda3c29615efa3042eeeeb84acbb5bb4275ce5b300e" [label=""];
}

