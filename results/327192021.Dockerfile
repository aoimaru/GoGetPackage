[app/sources/327192021.Dockerfile]
digraph {
  "sha256:9b0d2262bdb90137854fd9cdabf5ffea554c0c51c0869fc3bb068e9af8537279" [label="docker-image://docker.io/library/node:boron" shape="ellipse"];
  "sha256:03c1b322832c9f6c6187d254debb503905c107d495a60f1481adf6a5719a1b59" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:b6604e68fd33927d028681cf27dae9062191c787545e7724948b3de9bdc01e4a" [label="local://context" shape="ellipse"];
  "sha256:db23a2a6a6dd5666fba5a12a3146ef7ef94c4ca179a22ee09d2c7f7ad46d5eda" [label="copy{src=/package.json, dest=/usr/src/app/}" shape="note"];
  "sha256:0576b02b7521b1740ceedaf77e213c91905ff71e96a06eef6a3201e06effda74" [label="/bin/sh -c npm install" shape="box"];
  "sha256:07465c439aa25998ce9f83be3f63a80c1ca75863cd4baa803bb9ccb7693f9e4b" [label="copy{src=/, dest=/usr/src/app/}" shape="note"];
  "sha256:14ad977e99aae2eb5613e247369c7e65696389a0f1da5002301a2d5eaed76a3b" [label="sha256:14ad977e99aae2eb5613e247369c7e65696389a0f1da5002301a2d5eaed76a3b" shape="plaintext"];
  "sha256:9b0d2262bdb90137854fd9cdabf5ffea554c0c51c0869fc3bb068e9af8537279" -> "sha256:03c1b322832c9f6c6187d254debb503905c107d495a60f1481adf6a5719a1b59" [label=""];
  "sha256:03c1b322832c9f6c6187d254debb503905c107d495a60f1481adf6a5719a1b59" -> "sha256:db23a2a6a6dd5666fba5a12a3146ef7ef94c4ca179a22ee09d2c7f7ad46d5eda" [label=""];
  "sha256:b6604e68fd33927d028681cf27dae9062191c787545e7724948b3de9bdc01e4a" -> "sha256:db23a2a6a6dd5666fba5a12a3146ef7ef94c4ca179a22ee09d2c7f7ad46d5eda" [label=""];
  "sha256:db23a2a6a6dd5666fba5a12a3146ef7ef94c4ca179a22ee09d2c7f7ad46d5eda" -> "sha256:0576b02b7521b1740ceedaf77e213c91905ff71e96a06eef6a3201e06effda74" [label=""];
  "sha256:0576b02b7521b1740ceedaf77e213c91905ff71e96a06eef6a3201e06effda74" -> "sha256:07465c439aa25998ce9f83be3f63a80c1ca75863cd4baa803bb9ccb7693f9e4b" [label=""];
  "sha256:b6604e68fd33927d028681cf27dae9062191c787545e7724948b3de9bdc01e4a" -> "sha256:07465c439aa25998ce9f83be3f63a80c1ca75863cd4baa803bb9ccb7693f9e4b" [label=""];
  "sha256:07465c439aa25998ce9f83be3f63a80c1ca75863cd4baa803bb9ccb7693f9e4b" -> "sha256:14ad977e99aae2eb5613e247369c7e65696389a0f1da5002301a2d5eaed76a3b" [label=""];
}

