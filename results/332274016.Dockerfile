[app/sources/332274016.Dockerfile]
digraph {
  "sha256:bebb6eb73671f5bc8bca348bc39df60905498bbdb732e73b362b34485c161871" [label="local://context" shape="ellipse"];
  "sha256:0f64444a9e9ee97abac7c2dd67c699b9c3d1375d30b770047613d3b6dc244b33" [label="docker-image://docker.io/library/node:6.9.2" shape="ellipse"];
  "sha256:fb6ca513af4e0de360190fe8768764385189636ecf139f52f6f272570d7c41a2" [label="copy{src=/server.js, dest=/}" shape="note"];
  "sha256:81c2a51830dfbc321f33b99a537b8db06bcea7a942cebc375c8f76f8c97e3f8c" [label="sha256:81c2a51830dfbc321f33b99a537b8db06bcea7a942cebc375c8f76f8c97e3f8c" shape="plaintext"];
  "sha256:0f64444a9e9ee97abac7c2dd67c699b9c3d1375d30b770047613d3b6dc244b33" -> "sha256:fb6ca513af4e0de360190fe8768764385189636ecf139f52f6f272570d7c41a2" [label=""];
  "sha256:bebb6eb73671f5bc8bca348bc39df60905498bbdb732e73b362b34485c161871" -> "sha256:fb6ca513af4e0de360190fe8768764385189636ecf139f52f6f272570d7c41a2" [label=""];
  "sha256:fb6ca513af4e0de360190fe8768764385189636ecf139f52f6f272570d7c41a2" -> "sha256:81c2a51830dfbc321f33b99a537b8db06bcea7a942cebc375c8f76f8c97e3f8c" [label=""];
}

