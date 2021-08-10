[app/sources/461024127.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:12dc2d71eb06ec566baf3629b4a001048d9f7327df35d62380e6995299ab427d" [label="local://context" shape="ellipse"];
  "sha256:5f882deb2f67faea070a58d693169ae7f4d4bce4bc10adcdaa6c5435c85a7115" [label="copy{src=/cmd/pfsserver/pfsserver, dest=/pfsserver/}" shape="note"];
  "sha256:fdb01bd67cc7b5c8b6189e64395fd2c676e3688823d619e606def119db3d6b03" [label="/bin/sh -c mkdir /pfsserver/log" shape="box"];
  "sha256:9b09dd12cd0f6f30c9c45fd54c8e1f334d6044bf047335315e6a7fe6a518adbe" [label="sha256:9b09dd12cd0f6f30c9c45fd54c8e1f334d6044bf047335315e6a7fe6a518adbe" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:5f882deb2f67faea070a58d693169ae7f4d4bce4bc10adcdaa6c5435c85a7115" [label=""];
  "sha256:12dc2d71eb06ec566baf3629b4a001048d9f7327df35d62380e6995299ab427d" -> "sha256:5f882deb2f67faea070a58d693169ae7f4d4bce4bc10adcdaa6c5435c85a7115" [label=""];
  "sha256:5f882deb2f67faea070a58d693169ae7f4d4bce4bc10adcdaa6c5435c85a7115" -> "sha256:fdb01bd67cc7b5c8b6189e64395fd2c676e3688823d619e606def119db3d6b03" [label=""];
  "sha256:fdb01bd67cc7b5c8b6189e64395fd2c676e3688823d619e606def119db3d6b03" -> "sha256:9b09dd12cd0f6f30c9c45fd54c8e1f334d6044bf047335315e6a7fe6a518adbe" [label=""];
}

