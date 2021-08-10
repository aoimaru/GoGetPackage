[app/sources/146965932.Dockerfile]
digraph {
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" [label="docker-image://docker.io/library/golang:latest" shape="ellipse"];
  "sha256:9547d7f4dfdd3056476efc34ae9d587bf03539b635264e6e129d627733554d5b" [label="local://context" shape="ellipse"];
  "sha256:df17776d0a878db108f454078db00c62d28ddd974eedeb2fadf1f64a24189927" [label="copy{src=/, dest=/go/src/github.com/coreos/etcd}" shape="note"];
  "sha256:fa7de45a4926c2a94c9353278dd8531ef78b01e69e462599a5e11feada1f085b" [label="copy{src=/cmd/vendor, dest=/go/src/github.com/coreos/etcd/vendor}" shape="note"];
  "sha256:a796cf077d6d68b64372a83e49ad3c94e6aa5a99c4e883217c075bbb16311c9b" [label="/bin/sh -c go install github.com/coreos/etcd" shape="box"];
  "sha256:51102c53fd35f5c59896737171c56288c22bb6fb61cc38eb08c0f3874583741b" [label="sha256:51102c53fd35f5c59896737171c56288c22bb6fb61cc38eb08c0f3874583741b" shape="plaintext"];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" -> "sha256:df17776d0a878db108f454078db00c62d28ddd974eedeb2fadf1f64a24189927" [label=""];
  "sha256:9547d7f4dfdd3056476efc34ae9d587bf03539b635264e6e129d627733554d5b" -> "sha256:df17776d0a878db108f454078db00c62d28ddd974eedeb2fadf1f64a24189927" [label=""];
  "sha256:df17776d0a878db108f454078db00c62d28ddd974eedeb2fadf1f64a24189927" -> "sha256:fa7de45a4926c2a94c9353278dd8531ef78b01e69e462599a5e11feada1f085b" [label=""];
  "sha256:9547d7f4dfdd3056476efc34ae9d587bf03539b635264e6e129d627733554d5b" -> "sha256:fa7de45a4926c2a94c9353278dd8531ef78b01e69e462599a5e11feada1f085b" [label=""];
  "sha256:fa7de45a4926c2a94c9353278dd8531ef78b01e69e462599a5e11feada1f085b" -> "sha256:a796cf077d6d68b64372a83e49ad3c94e6aa5a99c4e883217c075bbb16311c9b" [label=""];
  "sha256:a796cf077d6d68b64372a83e49ad3c94e6aa5a99c4e883217c075bbb16311c9b" -> "sha256:51102c53fd35f5c59896737171c56288c22bb6fb61cc38eb08c0f3874583741b" [label=""];
}

