[app/sources/461800541.Dockerfile]
digraph {
  "sha256:24406b1b30326f3af5785a167116d74ef12c51a13e642dc6be68640b47d80ff1" [label="local://context" shape="ellipse"];
  "sha256:801d7b05da3324a8fbeb7856122d39469ef99a2eb41bdf2fa2925baddda00908" [label="docker-image://docker.io/library/golang:1.6-alpine" shape="ellipse"];
  "sha256:e48032e6eb8f561f4812e8f167f469e52c01253cad4b401a81d76722d3b6a437" [label="mkdir{path=/go/src/github.com/docker/distribution}" shape="note"];
  "sha256:6016b4a25b3bb23ef81d7631b416425f11fc545dbf74838b08cb7427f7b62542" [label="copy{src=/, dest=/go/src/github.com/docker/distribution}" shape="note"];
  "sha256:3e9a93347b2013710e0c2de5fac3d2c554b1d5c4e964bc62ad13306c1e63f06c" [label="copy{src=/cmd/registry/config-dev.yml, dest=/etc/docker/registry/config.yml}" shape="note"];
  "sha256:29d0ac4f4e909c309fa0a07af9675c044fe9a1d0823b12a4d0fd5bf56a1dc22c" [label="/bin/sh -c set -ex     && apk add --no-cache make git" shape="box"];
  "sha256:9c0963ba1a26661bef9d29a6e372312af9a9b5defc2ef8600ce83e87e8477731" [label="/bin/sh -c make PREFIX=/go clean binaries" shape="box"];
  "sha256:3c0c96ff3951ae785542acb23ba5f529fe72f5b35fb3aa51838ea8995b9ef387" [label="sha256:3c0c96ff3951ae785542acb23ba5f529fe72f5b35fb3aa51838ea8995b9ef387" shape="plaintext"];
  "sha256:801d7b05da3324a8fbeb7856122d39469ef99a2eb41bdf2fa2925baddda00908" -> "sha256:e48032e6eb8f561f4812e8f167f469e52c01253cad4b401a81d76722d3b6a437" [label=""];
  "sha256:e48032e6eb8f561f4812e8f167f469e52c01253cad4b401a81d76722d3b6a437" -> "sha256:6016b4a25b3bb23ef81d7631b416425f11fc545dbf74838b08cb7427f7b62542" [label=""];
  "sha256:24406b1b30326f3af5785a167116d74ef12c51a13e642dc6be68640b47d80ff1" -> "sha256:6016b4a25b3bb23ef81d7631b416425f11fc545dbf74838b08cb7427f7b62542" [label=""];
  "sha256:6016b4a25b3bb23ef81d7631b416425f11fc545dbf74838b08cb7427f7b62542" -> "sha256:3e9a93347b2013710e0c2de5fac3d2c554b1d5c4e964bc62ad13306c1e63f06c" [label=""];
  "sha256:24406b1b30326f3af5785a167116d74ef12c51a13e642dc6be68640b47d80ff1" -> "sha256:3e9a93347b2013710e0c2de5fac3d2c554b1d5c4e964bc62ad13306c1e63f06c" [label=""];
  "sha256:3e9a93347b2013710e0c2de5fac3d2c554b1d5c4e964bc62ad13306c1e63f06c" -> "sha256:29d0ac4f4e909c309fa0a07af9675c044fe9a1d0823b12a4d0fd5bf56a1dc22c" [label=""];
  "sha256:29d0ac4f4e909c309fa0a07af9675c044fe9a1d0823b12a4d0fd5bf56a1dc22c" -> "sha256:9c0963ba1a26661bef9d29a6e372312af9a9b5defc2ef8600ce83e87e8477731" [label=""];
  "sha256:9c0963ba1a26661bef9d29a6e372312af9a9b5defc2ef8600ce83e87e8477731" -> "sha256:3c0c96ff3951ae785542acb23ba5f529fe72f5b35fb3aa51838ea8995b9ef387" [label=""];
}

