[app/sources/345356954.Dockerfile]
digraph {
  "sha256:481e2fb7a048e6488561fc1162c18d75829c1f278cf561f8da074ac743bdb1ce" [label="docker-image://docker.io/balenalib/armv7hf-debian:buster-run" shape="ellipse"];
  "sha256:aa62d07c06a9da4b4459943864fc06ffa0b5fa2438440bccc63fe55fded5c29a" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tless \t\tkmod \t\tnano \t\tnet-tools \t\tifupdown \t\tiputils-ping \t\ti2c-tools \t\tusbutils \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:27456ce4c70ddb0d77cff4ca7b287567d837570feb5aadec135b8d9614ac5239" [label="sha256:27456ce4c70ddb0d77cff4ca7b287567d837570feb5aadec135b8d9614ac5239" shape="plaintext"];
  "sha256:481e2fb7a048e6488561fc1162c18d75829c1f278cf561f8da074ac743bdb1ce" -> "sha256:aa62d07c06a9da4b4459943864fc06ffa0b5fa2438440bccc63fe55fded5c29a" [label=""];
  "sha256:aa62d07c06a9da4b4459943864fc06ffa0b5fa2438440bccc63fe55fded5c29a" -> "sha256:27456ce4c70ddb0d77cff4ca7b287567d837570feb5aadec135b8d9614ac5239" [label=""];
}

