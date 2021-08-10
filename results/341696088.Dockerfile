[app/sources/341696088.Dockerfile]
digraph {
  "sha256:bd5ad67095a569231b9a59c136c661fb3488b8f6729dda6f7427297debd2972e" [label="docker-image://docker.io/bertoost/nginx:1.15.9" shape="ellipse"];
  "sha256:d4fde6ddc1991f37cf4002ac525574a7139568bd0f15017736a6a2f17e254c8c" [label="/bin/sh -c find /etc/nginx/conf.d/ -name \"*.placeholder\" -type f -delete" shape="box"];
  "sha256:115b7dbffcf36a5cf4377f67474b0cc58950df8c6a34a93560e09286377c0243" [label="local://context" shape="ellipse"];
  "sha256:6fd307a71c0390fb8192ea456fe3ec23894f68d78627735e11a70f65cdb8c263" [label="copy{src=/conf.d/modx.conf, dest=/etc/nginx/conf.d/default.conf}" shape="note"];
  "sha256:d0f2368b3e09792dfe1d20a7fdde17c7b02cfb1c275f3dc77ef6bd270e52bb36" [label="sha256:d0f2368b3e09792dfe1d20a7fdde17c7b02cfb1c275f3dc77ef6bd270e52bb36" shape="plaintext"];
  "sha256:bd5ad67095a569231b9a59c136c661fb3488b8f6729dda6f7427297debd2972e" -> "sha256:d4fde6ddc1991f37cf4002ac525574a7139568bd0f15017736a6a2f17e254c8c" [label=""];
  "sha256:d4fde6ddc1991f37cf4002ac525574a7139568bd0f15017736a6a2f17e254c8c" -> "sha256:6fd307a71c0390fb8192ea456fe3ec23894f68d78627735e11a70f65cdb8c263" [label=""];
  "sha256:115b7dbffcf36a5cf4377f67474b0cc58950df8c6a34a93560e09286377c0243" -> "sha256:6fd307a71c0390fb8192ea456fe3ec23894f68d78627735e11a70f65cdb8c263" [label=""];
  "sha256:6fd307a71c0390fb8192ea456fe3ec23894f68d78627735e11a70f65cdb8c263" -> "sha256:d0f2368b3e09792dfe1d20a7fdde17c7b02cfb1c275f3dc77ef6bd270e52bb36" [label=""];
}

