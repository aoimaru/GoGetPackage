[app/sources/320537297.Dockerfile]
digraph {
  "sha256:2587df83288827a228e8ff55931063023d794481b03c7ee5ae55d34ecfce7235" [label="docker-image://docker.io/menedev/yubi-oath-vpn-builder:latest" shape="ellipse"];
  "sha256:621bc30a56f490def063f5e22cee7b87e80146af0a3fcec3ee1602451162f3c8" [label="/bin/sh -c mkdir -p $GOCACHE" shape="box"];
  "sha256:da510c230f61e154a6c9c45906f10f94a97c15ab76debf252f345a8470f4d542" [label="/bin/sh -c mkdir -p /go/src/github.com/MeneDev/yubi-oath-vpn" shape="box"];
  "sha256:b891b2fec9543fccb1a22510eae94a44a3051bd53efd26423d747c9c5a661727" [label="mkdir{path=/go/src/github.com/MeneDev/yubi-oath-vpn}" shape="note"];
  "sha256:268c69f1477b929ea0238deaf199ce16cdcd1aa49b938b1e81f2f435125674f2" [label="local://context" shape="ellipse"];
  "sha256:585beb82b91b570bb29708cd5741c769ccd2fe64ccbdfd401625b1537bdfc95b" [label="copy{src=/Gopkg.*, dest=/go/src/github.com/MeneDev/yubi-oath-vpn/}" shape="note"];
  "sha256:d9aff224f69d171a6df08c05215143c692045cf8336e719d9b44e5d01b70556e" [label="/bin/sh -c /go/bin/dep ensure --vendor-only" shape="box"];
  "sha256:a883d9d88b06455678813cca03c1e127992e797a541264febd6039a03614058b" [label="/bin/sh -c find vendor/ -maxdepth 3 -mindepth 3 -exec bash -c 'cd $0 && go build -v ./...' {} \\;" shape="box"];
  "sha256:9598213d6a6f1f2ac0520bd15e6b3f1c57f4f52130ac6c86928e49ee735b7345" [label="copy{src=/*.go, dest=/go/src/github.com/MeneDev/yubi-oath-vpn/}" shape="note"];
  "sha256:912a66e936ab70e5ecdd20abd98e12f29a4fb63cebfa025b9061d594bf4b6130" [label="/bin/sh -c CIRCLE_BUILD_NUM=build123 CIRCLE_SHA1=aabbccddeeff gox -ldflags=\"-s -w -X \\\"main.Version=${tag:-not a release}\\\" -X \\\"main.BuildDate=$(date --utc)\\\" -X \\\"main.BuildNumber=$CIRCLE_BUILD_NUM\\\" -X \\\"main.BuildCommit=$CIRCLE_SHA1\\\"\" -os=\"linux\" -arch=\"amd64\" -output \"release/yubi-oath-vpn-{{.OS}}_{{.Arch}}\"" shape="box"];
  "sha256:0890fb7f07916d1bd081cfe1d70acee5b7e2abab4cd042d5153dde2de233fd96" [label="/bin/sh -c release/yubi-oath-vpn-linux_amd64 --version" shape="box"];
  "sha256:0ec1a01610062546a79f06d81969f1d2f43cc726eed7c688d152101f217ce3a7" [label="sha256:0ec1a01610062546a79f06d81969f1d2f43cc726eed7c688d152101f217ce3a7" shape="plaintext"];
  "sha256:2587df83288827a228e8ff55931063023d794481b03c7ee5ae55d34ecfce7235" -> "sha256:621bc30a56f490def063f5e22cee7b87e80146af0a3fcec3ee1602451162f3c8" [label=""];
  "sha256:621bc30a56f490def063f5e22cee7b87e80146af0a3fcec3ee1602451162f3c8" -> "sha256:da510c230f61e154a6c9c45906f10f94a97c15ab76debf252f345a8470f4d542" [label=""];
  "sha256:da510c230f61e154a6c9c45906f10f94a97c15ab76debf252f345a8470f4d542" -> "sha256:b891b2fec9543fccb1a22510eae94a44a3051bd53efd26423d747c9c5a661727" [label=""];
  "sha256:b891b2fec9543fccb1a22510eae94a44a3051bd53efd26423d747c9c5a661727" -> "sha256:585beb82b91b570bb29708cd5741c769ccd2fe64ccbdfd401625b1537bdfc95b" [label=""];
  "sha256:268c69f1477b929ea0238deaf199ce16cdcd1aa49b938b1e81f2f435125674f2" -> "sha256:585beb82b91b570bb29708cd5741c769ccd2fe64ccbdfd401625b1537bdfc95b" [label=""];
  "sha256:585beb82b91b570bb29708cd5741c769ccd2fe64ccbdfd401625b1537bdfc95b" -> "sha256:d9aff224f69d171a6df08c05215143c692045cf8336e719d9b44e5d01b70556e" [label=""];
  "sha256:d9aff224f69d171a6df08c05215143c692045cf8336e719d9b44e5d01b70556e" -> "sha256:a883d9d88b06455678813cca03c1e127992e797a541264febd6039a03614058b" [label=""];
  "sha256:a883d9d88b06455678813cca03c1e127992e797a541264febd6039a03614058b" -> "sha256:9598213d6a6f1f2ac0520bd15e6b3f1c57f4f52130ac6c86928e49ee735b7345" [label=""];
  "sha256:268c69f1477b929ea0238deaf199ce16cdcd1aa49b938b1e81f2f435125674f2" -> "sha256:9598213d6a6f1f2ac0520bd15e6b3f1c57f4f52130ac6c86928e49ee735b7345" [label=""];
  "sha256:9598213d6a6f1f2ac0520bd15e6b3f1c57f4f52130ac6c86928e49ee735b7345" -> "sha256:912a66e936ab70e5ecdd20abd98e12f29a4fb63cebfa025b9061d594bf4b6130" [label=""];
  "sha256:912a66e936ab70e5ecdd20abd98e12f29a4fb63cebfa025b9061d594bf4b6130" -> "sha256:0890fb7f07916d1bd081cfe1d70acee5b7e2abab4cd042d5153dde2de233fd96" [label=""];
  "sha256:0890fb7f07916d1bd081cfe1d70acee5b7e2abab4cd042d5153dde2de233fd96" -> "sha256:0ec1a01610062546a79f06d81969f1d2f43cc726eed7c688d152101f217ce3a7" [label=""];
}

