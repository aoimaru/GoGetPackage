[app/sources/171693326.Dockerfile]
digraph {
  "sha256:718e878d9b1a8ee17405f2061f759cf46a17167e936625a14e16f38b9c5df8ff" [label="docker-image://docker.io/library/universe-static:0.2-2" shape="ellipse"];
  "sha256:3d0277a0bda7375c77be3571bba1bede14a65f6f0df830b0244eef0c0ac3f685" [label="local://context" shape="ellipse"];
  "sha256:6662a6df6322b54c3075e3178b7a52409a25b1964b034de0a18806c0eb66f85c" [label="copy{src=/certs, dest=/certs}" shape="note"];
  "sha256:1783c4cac825848035d1cd4b4edb1b7f3cc77b3fa220e4e0fe6a3ba4d7bf2887" [label="copy{src=/certs/domain.crt, dest=/usr/share/nginx/html/certs/domain.crt}" shape="note"];
  "sha256:ca1c170f9b01bad39a0b35327fd4a68cc234922edbeca219aa1a068aec2cb1f5" [label="sha256:ca1c170f9b01bad39a0b35327fd4a68cc234922edbeca219aa1a068aec2cb1f5" shape="plaintext"];
  "sha256:718e878d9b1a8ee17405f2061f759cf46a17167e936625a14e16f38b9c5df8ff" -> "sha256:6662a6df6322b54c3075e3178b7a52409a25b1964b034de0a18806c0eb66f85c" [label=""];
  "sha256:3d0277a0bda7375c77be3571bba1bede14a65f6f0df830b0244eef0c0ac3f685" -> "sha256:6662a6df6322b54c3075e3178b7a52409a25b1964b034de0a18806c0eb66f85c" [label=""];
  "sha256:6662a6df6322b54c3075e3178b7a52409a25b1964b034de0a18806c0eb66f85c" -> "sha256:1783c4cac825848035d1cd4b4edb1b7f3cc77b3fa220e4e0fe6a3ba4d7bf2887" [label=""];
  "sha256:3d0277a0bda7375c77be3571bba1bede14a65f6f0df830b0244eef0c0ac3f685" -> "sha256:1783c4cac825848035d1cd4b4edb1b7f3cc77b3fa220e4e0fe6a3ba4d7bf2887" [label=""];
  "sha256:1783c4cac825848035d1cd4b4edb1b7f3cc77b3fa220e4e0fe6a3ba4d7bf2887" -> "sha256:ca1c170f9b01bad39a0b35327fd4a68cc234922edbeca219aa1a068aec2cb1f5" [label=""];
}

