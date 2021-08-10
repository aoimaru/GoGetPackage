[app/sources/345356431.Dockerfile]
digraph {
  "sha256:822f95b4b3a5b465bb25281e0519e143f59a01ebf27c1ad0f70537e098717908" [label="docker-image://docker.io/balenalib/armv7hf-debian:buster-build" shape="ellipse"];
  "sha256:ee1812a7bc07e967ef3c66b1026253ede2c4aa33f2ab134db32755d5e8ca5c0d" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tless \t\tkmod \t\tnano \t\tnet-tools \t\tifupdown \t\tiputils-ping \t\ti2c-tools \t\tusbutils \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:008a2b9359182ff497c214a260745844703e7517906a464b45b5693365cd1141" [label="sha256:008a2b9359182ff497c214a260745844703e7517906a464b45b5693365cd1141" shape="plaintext"];
  "sha256:822f95b4b3a5b465bb25281e0519e143f59a01ebf27c1ad0f70537e098717908" -> "sha256:ee1812a7bc07e967ef3c66b1026253ede2c4aa33f2ab134db32755d5e8ca5c0d" [label=""];
  "sha256:ee1812a7bc07e967ef3c66b1026253ede2c4aa33f2ab134db32755d5e8ca5c0d" -> "sha256:008a2b9359182ff497c214a260745844703e7517906a464b45b5693365cd1141" [label=""];
}

