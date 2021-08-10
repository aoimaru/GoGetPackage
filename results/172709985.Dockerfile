[app/sources/172709985.Dockerfile]
digraph {
  "sha256:d1800fe2850657bf17f308707f027e91516fbaa3c0d89a0803311ceeb61fa674" [label="docker-image://docker.io/library/node:10" shape="ellipse"];
  "sha256:d45b229adbc269621440f7d66ba330cbbc9eb5af8b00f017ccc91912dfdda130" [label="/bin/sh -c npm install --unsafe-perm -g https://github.com/manGoweb/mango-cli.git#$version" shape="box"];
  "sha256:992adc7935067a8ff0471e6aa12f3487500a97f83a0d92491e0c34eb16d07af5" [label="sha256:992adc7935067a8ff0471e6aa12f3487500a97f83a0d92491e0c34eb16d07af5" shape="plaintext"];
  "sha256:d1800fe2850657bf17f308707f027e91516fbaa3c0d89a0803311ceeb61fa674" -> "sha256:d45b229adbc269621440f7d66ba330cbbc9eb5af8b00f017ccc91912dfdda130" [label=""];
  "sha256:d45b229adbc269621440f7d66ba330cbbc9eb5af8b00f017ccc91912dfdda130" -> "sha256:992adc7935067a8ff0471e6aa12f3487500a97f83a0d92491e0c34eb16d07af5" [label=""];
}

