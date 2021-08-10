[app/sources/282118698.Dockerfile]
digraph {
  "sha256:fb813d593b313cfbeb73c7e9a16817c63079496c02ec09127d7e53ebd129ca48" [label="local://context" shape="ellipse"];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" [label="docker-image://docker.io/library/golang:latest" shape="ellipse"];
  "sha256:1187ca6ff183a8e7b01b8ad9a9b463a8d0d08e1ca9b09b09f7e39fc31070731f" [label="mkdir{path=/root}" shape="note"];
  "sha256:4119c616198d2ef91a6260db038fcdb7f8e642b2c8172a2ff7f70442ff508151" [label="copy{src=/, dest=/go/src/golang.org/x/tools/cmd/getgo}" shape="note"];
  "sha256:a77bdb3cf7744b27607f7dcdc6a23af50e9e3e67d73f347451b092bebd69b783" [label="/bin/sh -c ( \t\tcd /go/src/golang.org/x/tools/cmd/getgo \t\t&& go build \t\t&& mv getgo /usr/local/bin/getgo \t)" shape="box"];
  "sha256:7bccf886d686e6760fb18ab973b54991e8eb92489c25f9ea0385327d916f2950" [label="/bin/sh -c rm -rf /go /usr/local/go" shape="box"];
  "sha256:27ba5e5cbacb6a2193c910281a53e4428c87f56455de120704678d1c1b9bf39f" [label="sha256:27ba5e5cbacb6a2193c910281a53e4428c87f56455de120704678d1c1b9bf39f" shape="plaintext"];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" -> "sha256:1187ca6ff183a8e7b01b8ad9a9b463a8d0d08e1ca9b09b09f7e39fc31070731f" [label=""];
  "sha256:1187ca6ff183a8e7b01b8ad9a9b463a8d0d08e1ca9b09b09f7e39fc31070731f" -> "sha256:4119c616198d2ef91a6260db038fcdb7f8e642b2c8172a2ff7f70442ff508151" [label=""];
  "sha256:fb813d593b313cfbeb73c7e9a16817c63079496c02ec09127d7e53ebd129ca48" -> "sha256:4119c616198d2ef91a6260db038fcdb7f8e642b2c8172a2ff7f70442ff508151" [label=""];
  "sha256:4119c616198d2ef91a6260db038fcdb7f8e642b2c8172a2ff7f70442ff508151" -> "sha256:a77bdb3cf7744b27607f7dcdc6a23af50e9e3e67d73f347451b092bebd69b783" [label=""];
  "sha256:a77bdb3cf7744b27607f7dcdc6a23af50e9e3e67d73f347451b092bebd69b783" -> "sha256:7bccf886d686e6760fb18ab973b54991e8eb92489c25f9ea0385327d916f2950" [label=""];
  "sha256:7bccf886d686e6760fb18ab973b54991e8eb92489c25f9ea0385327d916f2950" -> "sha256:27ba5e5cbacb6a2193c910281a53e4428c87f56455de120704678d1c1b9bf39f" [label=""];
}

