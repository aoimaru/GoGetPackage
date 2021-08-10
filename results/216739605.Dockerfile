[app/sources/216739605.Dockerfile]
digraph {
  "sha256:dbf2e27d11b1f36db6e67c0cefc67ad1794da6dd45b4f0ef5698250ae6a8bcec" [label="docker-image://docker.io/library/node:6-slim" shape="ellipse"];
  "sha256:9219134469e0b73fd14d5030486dbdb6a0cb530ce86832dd01a779848f7e9029" [label="local://context" shape="ellipse"];
  "sha256:bca887cc8b7effea553fac050dc686f9129ecc2287670acdda0798a428bfd7b3" [label="copy{src=/, dest=/}" shape="note"];
  "sha256:43a11c772f53f01d4f69e00c4a65e4512816eb540eef0f053475756530829603" [label="/bin/sh -c npm install --ignore-scripts" shape="box"];
  "sha256:3eec8a79a9287ac0589077d0ffb0f17e787b39dad58b7afe77d8d0c4a2021fd4" [label="sha256:3eec8a79a9287ac0589077d0ffb0f17e787b39dad58b7afe77d8d0c4a2021fd4" shape="plaintext"];
  "sha256:dbf2e27d11b1f36db6e67c0cefc67ad1794da6dd45b4f0ef5698250ae6a8bcec" -> "sha256:bca887cc8b7effea553fac050dc686f9129ecc2287670acdda0798a428bfd7b3" [label=""];
  "sha256:9219134469e0b73fd14d5030486dbdb6a0cb530ce86832dd01a779848f7e9029" -> "sha256:bca887cc8b7effea553fac050dc686f9129ecc2287670acdda0798a428bfd7b3" [label=""];
  "sha256:bca887cc8b7effea553fac050dc686f9129ecc2287670acdda0798a428bfd7b3" -> "sha256:43a11c772f53f01d4f69e00c4a65e4512816eb540eef0f053475756530829603" [label=""];
  "sha256:43a11c772f53f01d4f69e00c4a65e4512816eb540eef0f053475756530829603" -> "sha256:3eec8a79a9287ac0589077d0ffb0f17e787b39dad58b7afe77d8d0c4a2021fd4" [label=""];
}

