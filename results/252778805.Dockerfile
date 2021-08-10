[app/sources/252778805.Dockerfile]
digraph {
  "sha256:9905f37d7e4c8214bdfafd0d495c4866ef9fce385bd249836da9a369e4ce0ac0" [label="docker-image://docker.io/gliderlabs/alpine:latest" shape="ellipse"];
  "sha256:76a7b057e7c8154732b45b8cb8720ae33ac37107cfba9eeef6354ad3604372b4" [label="local://context" shape="ellipse"];
  "sha256:5ad592312b30948588329a32fb3929a6ca6ac66f2926e8f3e53c6e6ca5e4afbe" [label="copy{src=/requirements.txt, dest=/tmp/requirements.txt}" shape="note"];
  "sha256:67c39f814baeb2080ca442e4fe462f41b65c84e5dd7473682743c1d13c1912c7" [label="/bin/sh -c apk --update add ca-certificates python py-pip && pip install -r /tmp/requirements.txt && rm -rf /tmp/requirements.txt && apk del py-pip && apk del py-setuptools && rm -rf /var/cache/apk/* && rm -rf /tmp/*" shape="box"];
  "sha256:7d3be42889b271ba02a81a93cb83854226a499d40a308f75dff667c2f5ea79f2" [label="copy{src=/buildkite-cloudwatch-metrics-publisher, dest=/usr/bin/}" shape="note"];
  "sha256:0fef447f9e6ae7eea027cb50b0d1b11e1178e24879c68afb7526b7317e96e8ea" [label="sha256:0fef447f9e6ae7eea027cb50b0d1b11e1178e24879c68afb7526b7317e96e8ea" shape="plaintext"];
  "sha256:9905f37d7e4c8214bdfafd0d495c4866ef9fce385bd249836da9a369e4ce0ac0" -> "sha256:5ad592312b30948588329a32fb3929a6ca6ac66f2926e8f3e53c6e6ca5e4afbe" [label=""];
  "sha256:76a7b057e7c8154732b45b8cb8720ae33ac37107cfba9eeef6354ad3604372b4" -> "sha256:5ad592312b30948588329a32fb3929a6ca6ac66f2926e8f3e53c6e6ca5e4afbe" [label=""];
  "sha256:5ad592312b30948588329a32fb3929a6ca6ac66f2926e8f3e53c6e6ca5e4afbe" -> "sha256:67c39f814baeb2080ca442e4fe462f41b65c84e5dd7473682743c1d13c1912c7" [label=""];
  "sha256:67c39f814baeb2080ca442e4fe462f41b65c84e5dd7473682743c1d13c1912c7" -> "sha256:7d3be42889b271ba02a81a93cb83854226a499d40a308f75dff667c2f5ea79f2" [label=""];
  "sha256:76a7b057e7c8154732b45b8cb8720ae33ac37107cfba9eeef6354ad3604372b4" -> "sha256:7d3be42889b271ba02a81a93cb83854226a499d40a308f75dff667c2f5ea79f2" [label=""];
  "sha256:7d3be42889b271ba02a81a93cb83854226a499d40a308f75dff667c2f5ea79f2" -> "sha256:0fef447f9e6ae7eea027cb50b0d1b11e1178e24879c68afb7526b7317e96e8ea" [label=""];
}

