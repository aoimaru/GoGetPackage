[app/sources/406423063.Dockerfile]
digraph {
  "sha256:62bb3f3aa5603090e4a3b5df322209afdad8b31d9b6cb6e8afc37e579948d6dd" [label="docker-image://docker.io/cpsievert/apps:shiny" shape="ellipse"];
  "sha256:101b91893ec5d02d735bda0404d614d8d7caeecba534b2547ce9d4133f7134d0" [label="/bin/sh -c R -e \"install.packages(c('miniUI', 'plotly'))\"" shape="box"];
  "sha256:231dce946fdb21ae4a07a4d64fc413cd8e3f1c279ce861ff834f4fd04d5299d7" [label="local://context" shape="ellipse"];
  "sha256:c7b10d5656cf1a75b2464c525ae73b9760bb6f6ab81648dad662715df6dce878" [label="copy{src=/, dest=/}" shape="note"];
  "sha256:d74c7a9f751100a94c17edabce9c7f1405cdf7113d8f25df4b823a9258249a93" [label="sha256:d74c7a9f751100a94c17edabce9c7f1405cdf7113d8f25df4b823a9258249a93" shape="plaintext"];
  "sha256:62bb3f3aa5603090e4a3b5df322209afdad8b31d9b6cb6e8afc37e579948d6dd" -> "sha256:101b91893ec5d02d735bda0404d614d8d7caeecba534b2547ce9d4133f7134d0" [label=""];
  "sha256:101b91893ec5d02d735bda0404d614d8d7caeecba534b2547ce9d4133f7134d0" -> "sha256:c7b10d5656cf1a75b2464c525ae73b9760bb6f6ab81648dad662715df6dce878" [label=""];
  "sha256:231dce946fdb21ae4a07a4d64fc413cd8e3f1c279ce861ff834f4fd04d5299d7" -> "sha256:c7b10d5656cf1a75b2464c525ae73b9760bb6f6ab81648dad662715df6dce878" [label=""];
  "sha256:c7b10d5656cf1a75b2464c525ae73b9760bb6f6ab81648dad662715df6dce878" -> "sha256:d74c7a9f751100a94c17edabce9c7f1405cdf7113d8f25df4b823a9258249a93" [label=""];
}

