[app/sources/342040937.Dockerfile]
digraph {
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" [label="docker-image://docker.io/library/alpine:3.8" shape="ellipse"];
  "sha256:7f8e038eb899d5f56da9618d6007648e821045578b7d7bda67405b866b9fdfda" [label="/bin/sh -c apk --no-cache add ca-certificates" shape="box"];
  "sha256:f3765b18f5d118207fb598ea7f29a00eff2c884326dc5314584f46d69fb95f9c" [label="mkdir{path=/samplecmd}" shape="note"];
  "sha256:a76019a95dee5879f498940b5b3e8227af4c6ccd671f2ac1899cd67404f5d53a" [label="docker-image://docker.io/library/golang:1.12.6" shape="ellipse"];
  "sha256:25ab3494de9c7576359e9a754ab9ad54b68bcb9afc5608032d9e89a7e3c3d605" [label="local://context" shape="ellipse"];
  "sha256:be0ce8683cc6873412e9aee2e665458b056c03270a515159868426c604972afc" [label="copy{src=/go.*, dest=/go/src/github.com/flowerinthenight/golang-monorepo/}" shape="note"];
  "sha256:706d5179a71d57c942667946baec2f81354264de38a951e40e62b6e9718af6c9" [label="copy{src=/pkg, dest=/go/src/github.com/flowerinthenight/golang-monorepo/pkg/}" shape="note"];
  "sha256:bc844cd05336d18edbd5774bc311c996da9b9b83697ba34cca9667c4b07abb71" [label="copy{src=/vendor, dest=/go/src/github.com/flowerinthenight/golang-monorepo/vendor/}" shape="note"];
  "sha256:e4f9294c5d581e73b6bf3545217d746a6c40f98bfd65c33c92baac463736633c" [label="copy{src=/cmd/samplecmd, dest=/go/src/github.com/flowerinthenight/golang-monorepo/cmd/samplecmd/}" shape="note"];
  "sha256:09a7ca09eb962ce3c1bd063bdf73f66a951c887e575127a57e60aa51c130f261" [label="mkdir{path=/go/src/github.com/flowerinthenight/golang-monorepo/cmd/samplecmd}" shape="note"];
  "sha256:710e8fa02f59ff90ba0165f02d4ba9db06cd9c682aec3d488b7f3b1cadb4b292" [label="/bin/sh -c GO111MODULE=on GOFLAGS=-mod=vendor CGO_ENABLED=0 GOOS=linux go build -v -ldflags \"-X github.com/flowerinthenight/golang-monorepo/cmd/samplecmd/main.version=$version\" -a -installsuffix cgo -o samplecmd ." shape="box"];
  "sha256:a71af4de86aabed11eceff95f05cdecbe243ed454b1bba10893b56d4463b3a22" [label="copy{src=/go/src/github.com/flowerinthenight/golang-monorepo/cmd/samplecmd, dest=/samplecmd/}" shape="note"];
  "sha256:a6295a45da8fb605ddf9324bba315a997913806eeb1054e15fd3793d0135807a" [label="sha256:a6295a45da8fb605ddf9324bba315a997913806eeb1054e15fd3793d0135807a" shape="plaintext"];
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" -> "sha256:7f8e038eb899d5f56da9618d6007648e821045578b7d7bda67405b866b9fdfda" [label=""];
  "sha256:7f8e038eb899d5f56da9618d6007648e821045578b7d7bda67405b866b9fdfda" -> "sha256:f3765b18f5d118207fb598ea7f29a00eff2c884326dc5314584f46d69fb95f9c" [label=""];
  "sha256:a76019a95dee5879f498940b5b3e8227af4c6ccd671f2ac1899cd67404f5d53a" -> "sha256:be0ce8683cc6873412e9aee2e665458b056c03270a515159868426c604972afc" [label=""];
  "sha256:25ab3494de9c7576359e9a754ab9ad54b68bcb9afc5608032d9e89a7e3c3d605" -> "sha256:be0ce8683cc6873412e9aee2e665458b056c03270a515159868426c604972afc" [label=""];
  "sha256:be0ce8683cc6873412e9aee2e665458b056c03270a515159868426c604972afc" -> "sha256:706d5179a71d57c942667946baec2f81354264de38a951e40e62b6e9718af6c9" [label=""];
  "sha256:25ab3494de9c7576359e9a754ab9ad54b68bcb9afc5608032d9e89a7e3c3d605" -> "sha256:706d5179a71d57c942667946baec2f81354264de38a951e40e62b6e9718af6c9" [label=""];
  "sha256:706d5179a71d57c942667946baec2f81354264de38a951e40e62b6e9718af6c9" -> "sha256:bc844cd05336d18edbd5774bc311c996da9b9b83697ba34cca9667c4b07abb71" [label=""];
  "sha256:25ab3494de9c7576359e9a754ab9ad54b68bcb9afc5608032d9e89a7e3c3d605" -> "sha256:bc844cd05336d18edbd5774bc311c996da9b9b83697ba34cca9667c4b07abb71" [label=""];
  "sha256:bc844cd05336d18edbd5774bc311c996da9b9b83697ba34cca9667c4b07abb71" -> "sha256:e4f9294c5d581e73b6bf3545217d746a6c40f98bfd65c33c92baac463736633c" [label=""];
  "sha256:25ab3494de9c7576359e9a754ab9ad54b68bcb9afc5608032d9e89a7e3c3d605" -> "sha256:e4f9294c5d581e73b6bf3545217d746a6c40f98bfd65c33c92baac463736633c" [label=""];
  "sha256:e4f9294c5d581e73b6bf3545217d746a6c40f98bfd65c33c92baac463736633c" -> "sha256:09a7ca09eb962ce3c1bd063bdf73f66a951c887e575127a57e60aa51c130f261" [label=""];
  "sha256:09a7ca09eb962ce3c1bd063bdf73f66a951c887e575127a57e60aa51c130f261" -> "sha256:710e8fa02f59ff90ba0165f02d4ba9db06cd9c682aec3d488b7f3b1cadb4b292" [label=""];
  "sha256:f3765b18f5d118207fb598ea7f29a00eff2c884326dc5314584f46d69fb95f9c" -> "sha256:a71af4de86aabed11eceff95f05cdecbe243ed454b1bba10893b56d4463b3a22" [label=""];
  "sha256:710e8fa02f59ff90ba0165f02d4ba9db06cd9c682aec3d488b7f3b1cadb4b292" -> "sha256:a71af4de86aabed11eceff95f05cdecbe243ed454b1bba10893b56d4463b3a22" [label=""];
  "sha256:a71af4de86aabed11eceff95f05cdecbe243ed454b1bba10893b56d4463b3a22" -> "sha256:a6295a45da8fb605ddf9324bba315a997913806eeb1054e15fd3793d0135807a" [label=""];
}

