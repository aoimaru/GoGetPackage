[app/sources/180015849.Dockerfile]
digraph {
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" [label="docker-image://docker.io/library/alpine:3.9" shape="ellipse"];
  "sha256:fc8f7a5a931404bb996ee93e11e03292efdfdf9a150192d59616c38f4796d934" [label="docker-image://docker.io/library/golang:1.12-alpine" shape="ellipse"];
  "sha256:eb15bfb87cd0842c27834f84d59066b75d8858380a256e600e77a37b2f871038" [label="/bin/sh -c apk add --no-cache git &&      git clone https://github.com/minio/minio && cd minio/dockerscripts &&      go build -tags kqueue -ldflags \"-s -w\" -o /usr/bin/healthcheck healthcheck.go &&      go build -tags kqueue -ldflags \"-s -w\" -o /usr/bin/check-user check-user.go" shape="box"];
  "sha256:4a155cf1d75dd901a33757106e8f62eee75aacbe033182ec5f814294fd0b3ae5" [label="copy{src=/usr/bin/healthcheck, dest=/usr/bin/healthcheck}" shape="note"];
  "sha256:48ad1f5f5c1397af047b0a9d30d6390f18b9fad4bc99c5db758808b1ddfa0aa8" [label="copy{src=/usr/bin/check-user, dest=/usr/bin/check-user}" shape="note"];
  "sha256:10b11fdfd33523cd6f2c43e8445d1e99d5726ae3fce058776761f0c36da68c9d" [label="local://context" shape="ellipse"];
  "sha256:1aef1ca988b08ba6b0ed4cdebc1996029a92ba866a6a3a78c6d05045112f2a8c" [label="copy{src=/dockerscripts/docker-entrypoint.sh, dest=/usr/bin/}" shape="note"];
  "sha256:d6bb5f60b9bdbf71c7157dd7b28a605ad727cf46a92919b27329b2aae740cf82" [label="/bin/sh -c apk add --no-cache ca-certificates 'curl>7.61.0' 'su-exec>=0.2' &&      echo 'hosts: files mdns4_minimal [NOTFOUND=return] dns mdns4' >> /etc/nsswitch.conf &&      curl https://dl.min.io/server/minio/release/linux-amd64/minio > /usr/bin/minio &&      chmod +x /usr/bin/minio  &&      chmod +x /usr/bin/docker-entrypoint.sh &&      chmod +x /usr/bin/healthcheck &&      chmod +x /usr/bin/check-user" shape="box"];
  "sha256:4af58ff7ef317ab167f838152d2bea16ef608cb243461c0d9f7dffe1f28ef301" [label="sha256:4af58ff7ef317ab167f838152d2bea16ef608cb243461c0d9f7dffe1f28ef301" shape="plaintext"];
  "sha256:fc8f7a5a931404bb996ee93e11e03292efdfdf9a150192d59616c38f4796d934" -> "sha256:eb15bfb87cd0842c27834f84d59066b75d8858380a256e600e77a37b2f871038" [label=""];
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" -> "sha256:4a155cf1d75dd901a33757106e8f62eee75aacbe033182ec5f814294fd0b3ae5" [label=""];
  "sha256:eb15bfb87cd0842c27834f84d59066b75d8858380a256e600e77a37b2f871038" -> "sha256:4a155cf1d75dd901a33757106e8f62eee75aacbe033182ec5f814294fd0b3ae5" [label=""];
  "sha256:4a155cf1d75dd901a33757106e8f62eee75aacbe033182ec5f814294fd0b3ae5" -> "sha256:48ad1f5f5c1397af047b0a9d30d6390f18b9fad4bc99c5db758808b1ddfa0aa8" [label=""];
  "sha256:eb15bfb87cd0842c27834f84d59066b75d8858380a256e600e77a37b2f871038" -> "sha256:48ad1f5f5c1397af047b0a9d30d6390f18b9fad4bc99c5db758808b1ddfa0aa8" [label=""];
  "sha256:48ad1f5f5c1397af047b0a9d30d6390f18b9fad4bc99c5db758808b1ddfa0aa8" -> "sha256:1aef1ca988b08ba6b0ed4cdebc1996029a92ba866a6a3a78c6d05045112f2a8c" [label=""];
  "sha256:10b11fdfd33523cd6f2c43e8445d1e99d5726ae3fce058776761f0c36da68c9d" -> "sha256:1aef1ca988b08ba6b0ed4cdebc1996029a92ba866a6a3a78c6d05045112f2a8c" [label=""];
  "sha256:1aef1ca988b08ba6b0ed4cdebc1996029a92ba866a6a3a78c6d05045112f2a8c" -> "sha256:d6bb5f60b9bdbf71c7157dd7b28a605ad727cf46a92919b27329b2aae740cf82" [label=""];
  "sha256:d6bb5f60b9bdbf71c7157dd7b28a605ad727cf46a92919b27329b2aae740cf82" -> "sha256:4af58ff7ef317ab167f838152d2bea16ef608cb243461c0d9f7dffe1f28ef301" [label=""];
}

