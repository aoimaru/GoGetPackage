[app/sources/257457127.Dockerfile]
digraph {
  "sha256:2b581387a274b1c30543dc01e7bfc9a440e08af1286b09556e022d6a4425aed0" [label="docker-image://docker.io/library/alpine@sha256:eb3e4e175ba6d212ba1d6e04fc0782916c08e1c9d7b45892e9796141b1d379ae" shape="ellipse"];
  "sha256:be806c4dc804c5a6e34c9f5aac22931aa4050325836ce9493fcd1d196855547d" [label="/bin/sh -c apk add --no-cache ca-certificates" shape="box"];
  "sha256:a255b48946e357047bdcbf5c8fec6cab6f13fd1917c5ce722904e6ba789ab4be" [label="docker-image://docker.io/library/golang:alpine@sha256:125b5fbad8200b161d62147f7a38525c97319acf5b44f07e0413199ea749e782" shape="ellipse"];
  "sha256:448a7e0d487c03fd313669da4a028bbc77fd997b1b3e7607ce8ae906cc32967c" [label="/bin/sh -c apk add --no-cache ca-certificates curl &&     mkdir /go || true &&     cd /go &&     mkdir -p src/github.com/syncthing &&     export SRCDIR=$PWD &&     cd src/github.com/syncthing &&     curl -L https://github.com/syncthing/syncthing/releases/download/v$PKGVER/syncthing-source-v${PKGVER}.tar.gz | tar xzf - &&     cd syncthing &&     export GOPATH=\"$SRCDIR\" GOROOT_FINAL=\"/usr/bin\" &&     go run build.go -no-upgrade -version v${PKGVER} build strelaysrv" shape="box"];
  "sha256:ffedf09820436d897d65b35e61bd79986295dbfb0dd347e8516d4e1e13918aaa" [label="copy{src=/go/src/github.com/syncthing/syncthing/strelaysrv, dest=/usr/bin/strelaysrv}" shape="note"];
  "sha256:7b47c4ef4e4c75278a63d795bfb658696a5592cf5e0be8d0b886bd03dcee2d42" [label="/bin/sh -c mkdir /relaysrv && chown nobody:nobody /relaysrv" shape="box"];
  "sha256:02c6827894c44a935f49903a3e963fab6b3155aa2dcdd3ad7d1a9eb6fe1f084f" [label="mkdir{path=/relaysrv}" shape="note"];
  "sha256:b91315a7a4252c140565dbe418279f2dbef6dba5ef35f3ea56637c9cb32389be" [label="sha256:b91315a7a4252c140565dbe418279f2dbef6dba5ef35f3ea56637c9cb32389be" shape="plaintext"];
  "sha256:2b581387a274b1c30543dc01e7bfc9a440e08af1286b09556e022d6a4425aed0" -> "sha256:be806c4dc804c5a6e34c9f5aac22931aa4050325836ce9493fcd1d196855547d" [label=""];
  "sha256:a255b48946e357047bdcbf5c8fec6cab6f13fd1917c5ce722904e6ba789ab4be" -> "sha256:448a7e0d487c03fd313669da4a028bbc77fd997b1b3e7607ce8ae906cc32967c" [label=""];
  "sha256:be806c4dc804c5a6e34c9f5aac22931aa4050325836ce9493fcd1d196855547d" -> "sha256:ffedf09820436d897d65b35e61bd79986295dbfb0dd347e8516d4e1e13918aaa" [label=""];
  "sha256:448a7e0d487c03fd313669da4a028bbc77fd997b1b3e7607ce8ae906cc32967c" -> "sha256:ffedf09820436d897d65b35e61bd79986295dbfb0dd347e8516d4e1e13918aaa" [label=""];
  "sha256:ffedf09820436d897d65b35e61bd79986295dbfb0dd347e8516d4e1e13918aaa" -> "sha256:7b47c4ef4e4c75278a63d795bfb658696a5592cf5e0be8d0b886bd03dcee2d42" [label=""];
  "sha256:7b47c4ef4e4c75278a63d795bfb658696a5592cf5e0be8d0b886bd03dcee2d42" -> "sha256:02c6827894c44a935f49903a3e963fab6b3155aa2dcdd3ad7d1a9eb6fe1f084f" [label=""];
  "sha256:02c6827894c44a935f49903a3e963fab6b3155aa2dcdd3ad7d1a9eb6fe1f084f" -> "sha256:b91315a7a4252c140565dbe418279f2dbef6dba5ef35f3ea56637c9cb32389be" [label=""];
}

