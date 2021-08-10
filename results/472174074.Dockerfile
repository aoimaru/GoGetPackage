[app/sources/472174074.Dockerfile]
digraph {
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" [label="docker-image://docker.io/library/golang:latest" shape="ellipse"];
  "sha256:1187ca6ff183a8e7b01b8ad9a9b463a8d0d08e1ca9b09b09f7e39fc31070731f" [label="mkdir{path=/root}" shape="note"];
  "sha256:7725d3d8f27bf8bcf5b79c82fa9c0e215770a6ca0c2c8d548c8ea6cfcbfbf0dc" [label="local://context" shape="ellipse"];
  "sha256:fc7a5d1575df6f84af1387913f7ff4810b616a007f489c979e9d0d6defc257c5" [label="copy{src=/, dest=/go/src/golang.org/x/tools/cmd/getgo}" shape="note"];
  "sha256:a0610fcd52108a3e2085cd8cf7881b3769e0de5cc6d956d04dc7c8ab8074a352" [label="/bin/sh -c ( \t\tcd /go/src/golang.org/x/tools/cmd/getgo \t\t&& go build \t\t&& mv getgo /usr/local/bin/getgo \t)" shape="box"];
  "sha256:d803a57022bdbf7d14f00952a60431adeb46e45ebd1e416a95877a4cb0eed9b6" [label="/bin/sh -c rm -rf /go /usr/local/go" shape="box"];
  "sha256:7281e94510f40afb8970bc2a465436fb203a60b6a50adb48a14309983f1099b0" [label="sha256:7281e94510f40afb8970bc2a465436fb203a60b6a50adb48a14309983f1099b0" shape="plaintext"];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" -> "sha256:1187ca6ff183a8e7b01b8ad9a9b463a8d0d08e1ca9b09b09f7e39fc31070731f" [label=""];
  "sha256:1187ca6ff183a8e7b01b8ad9a9b463a8d0d08e1ca9b09b09f7e39fc31070731f" -> "sha256:fc7a5d1575df6f84af1387913f7ff4810b616a007f489c979e9d0d6defc257c5" [label=""];
  "sha256:7725d3d8f27bf8bcf5b79c82fa9c0e215770a6ca0c2c8d548c8ea6cfcbfbf0dc" -> "sha256:fc7a5d1575df6f84af1387913f7ff4810b616a007f489c979e9d0d6defc257c5" [label=""];
  "sha256:fc7a5d1575df6f84af1387913f7ff4810b616a007f489c979e9d0d6defc257c5" -> "sha256:a0610fcd52108a3e2085cd8cf7881b3769e0de5cc6d956d04dc7c8ab8074a352" [label=""];
  "sha256:a0610fcd52108a3e2085cd8cf7881b3769e0de5cc6d956d04dc7c8ab8074a352" -> "sha256:d803a57022bdbf7d14f00952a60431adeb46e45ebd1e416a95877a4cb0eed9b6" [label=""];
  "sha256:d803a57022bdbf7d14f00952a60431adeb46e45ebd1e416a95877a4cb0eed9b6" -> "sha256:7281e94510f40afb8970bc2a465436fb203a60b6a50adb48a14309983f1099b0" [label=""];
}

