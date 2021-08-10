[app/sources/443958118.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:f7347d41953afe38f1ed7f42987ef9eeb38abe2cdeebfe858ffb6140c62e1f49" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:6e0f57235b9664b6f1d18fcf374892325933faf0c48dd4f42ae97daf21be80fe" [label="/bin/sh -c apt-get install -y mesa-utils" shape="box"];
  "sha256:4484905e329e7dbc9506220f4e8f993d584877733d8a301371e62b2d96afa96a" [label="/bin/sh -c apt-get install -y xserver-xorg-video-all" shape="box"];
  "sha256:940664321a748f077a5b9589334bebeb5b003ad0dd31af37013a850f92729e46" [label="sha256:940664321a748f077a5b9589334bebeb5b003ad0dd31af37013a850f92729e46" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:f7347d41953afe38f1ed7f42987ef9eeb38abe2cdeebfe858ffb6140c62e1f49" [label=""];
  "sha256:f7347d41953afe38f1ed7f42987ef9eeb38abe2cdeebfe858ffb6140c62e1f49" -> "sha256:6e0f57235b9664b6f1d18fcf374892325933faf0c48dd4f42ae97daf21be80fe" [label=""];
  "sha256:6e0f57235b9664b6f1d18fcf374892325933faf0c48dd4f42ae97daf21be80fe" -> "sha256:4484905e329e7dbc9506220f4e8f993d584877733d8a301371e62b2d96afa96a" [label=""];
  "sha256:4484905e329e7dbc9506220f4e8f993d584877733d8a301371e62b2d96afa96a" -> "sha256:940664321a748f077a5b9589334bebeb5b003ad0dd31af37013a850f92729e46" [label=""];
}

