[app/sources/210068737.Dockerfile]
digraph {
  "sha256:6d8c7b5c2e3e6f5c4ae6b8c8054d15404a43979dc279af9ac30dddb3e096d749" [label="docker-image://docker.io/tensorflow/tensorflow:1.4.1-devel-py3" shape="ellipse"];
  "sha256:1a776e54a1b5a747ad64e8e91c27a8544aaec0e485908ca456c3c20d3d922bd3" [label="/bin/sh -c sed -i 's/archive.ubuntu.com/mirrors.aliyun.com/' /etc/apt/sources.list" shape="box"];
  "sha256:5795dbe3810868b2b0360af087eb9877be2538c58bca0424f2f8f97fbef7d2cc" [label="local://context" shape="ellipse"];
  "sha256:bf08190cef86955c00fe5c28c747de202a9cbad0deade1254e22386080d83320" [label="copy{src=/pip.conf, dest=/root/.pip/pip.conf}" shape="note"];
  "sha256:9255ed99a7704700e8408defd0b039483322d5e64217474d2ba07ae7f42ddd7e" [label="sha256:9255ed99a7704700e8408defd0b039483322d5e64217474d2ba07ae7f42ddd7e" shape="plaintext"];
  "sha256:6d8c7b5c2e3e6f5c4ae6b8c8054d15404a43979dc279af9ac30dddb3e096d749" -> "sha256:1a776e54a1b5a747ad64e8e91c27a8544aaec0e485908ca456c3c20d3d922bd3" [label=""];
  "sha256:1a776e54a1b5a747ad64e8e91c27a8544aaec0e485908ca456c3c20d3d922bd3" -> "sha256:bf08190cef86955c00fe5c28c747de202a9cbad0deade1254e22386080d83320" [label=""];
  "sha256:5795dbe3810868b2b0360af087eb9877be2538c58bca0424f2f8f97fbef7d2cc" -> "sha256:bf08190cef86955c00fe5c28c747de202a9cbad0deade1254e22386080d83320" [label=""];
  "sha256:bf08190cef86955c00fe5c28c747de202a9cbad0deade1254e22386080d83320" -> "sha256:9255ed99a7704700e8408defd0b039483322d5e64217474d2ba07ae7f42ddd7e" [label=""];
}

