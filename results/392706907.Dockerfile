[app/sources/392706907.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:f7347d41953afe38f1ed7f42987ef9eeb38abe2cdeebfe858ffb6140c62e1f49" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:3b16d21a213e65ead9250f92f60d48e62d03ee6e1e16a245686b250cc53034fe" [label="/bin/sh -c apt-get install -q -y openjdk-6-jre-headless wget" shape="box"];
  "sha256:24d0bc19f5e097c200c90da315f61b1dce09785648d4643b69c85d840c4292c9" [label="/bin/sh -c wget https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-0.90.1.tar.gz" shape="box"];
  "sha256:bac9132f171c3aa01a0da6f27e564c27cd177ad34cc60f57fcdd81a31761a0c8" [label="/bin/sh -c tar -xzf elasticsearch-0.90.1.tar.gz" shape="box"];
  "sha256:2fa1f52590a95e96d9cbd5a366fb4610f114d6ef2d8b7d0f5de900f7393d041c" [label="/bin/sh -c mv elasticsearch-0.90.1 /opt/elasticsearch" shape="box"];
  "sha256:79d9e80bed557e0beb6310a91dadb6ccde82a7c1480a1855dcc5aa70e14b6952" [label="/bin/sh -c rm elasticsearch-0.90.1.tar.gz" shape="box"];
  "sha256:4c458e4f0429ca25fc9a2bd7f27a7b0def695f3b2d41e35ceec0c5585415abfe" [label="sha256:4c458e4f0429ca25fc9a2bd7f27a7b0def695f3b2d41e35ceec0c5585415abfe" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:f7347d41953afe38f1ed7f42987ef9eeb38abe2cdeebfe858ffb6140c62e1f49" [label=""];
  "sha256:f7347d41953afe38f1ed7f42987ef9eeb38abe2cdeebfe858ffb6140c62e1f49" -> "sha256:3b16d21a213e65ead9250f92f60d48e62d03ee6e1e16a245686b250cc53034fe" [label=""];
  "sha256:3b16d21a213e65ead9250f92f60d48e62d03ee6e1e16a245686b250cc53034fe" -> "sha256:24d0bc19f5e097c200c90da315f61b1dce09785648d4643b69c85d840c4292c9" [label=""];
  "sha256:24d0bc19f5e097c200c90da315f61b1dce09785648d4643b69c85d840c4292c9" -> "sha256:bac9132f171c3aa01a0da6f27e564c27cd177ad34cc60f57fcdd81a31761a0c8" [label=""];
  "sha256:bac9132f171c3aa01a0da6f27e564c27cd177ad34cc60f57fcdd81a31761a0c8" -> "sha256:2fa1f52590a95e96d9cbd5a366fb4610f114d6ef2d8b7d0f5de900f7393d041c" [label=""];
  "sha256:2fa1f52590a95e96d9cbd5a366fb4610f114d6ef2d8b7d0f5de900f7393d041c" -> "sha256:79d9e80bed557e0beb6310a91dadb6ccde82a7c1480a1855dcc5aa70e14b6952" [label=""];
  "sha256:79d9e80bed557e0beb6310a91dadb6ccde82a7c1480a1855dcc5aa70e14b6952" -> "sha256:4c458e4f0429ca25fc9a2bd7f27a7b0def695f3b2d41e35ceec0c5585415abfe" [label=""];
}

