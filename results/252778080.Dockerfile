[app/sources/252778080.Dockerfile]
digraph {
  "sha256:e0dd5e1547b7398127ce3dda15e4a1e2de531f6f8fb78886cbd30060863d3eb8" [label="docker-image://docker.io/appelgriebsch/alpine:edge" shape="ellipse"];
  "sha256:777ae1b6378ae3f1fcacf5744e275ee9a4d321cc3bebaae981e974d145c287cd" [label="/bin/sh -c mkdir -p /data/rabbitmq && chown -R rabbitmq:rabbitmq /data/rabbitmq && mkdir -p /etc/rabbitmq && chown -R rabbitmq:rabbitmq /etc/rabbitmq && sed -i \"s/\\/usr\\/lib\\/rabbitmq/\\/data\\/rabbitmq/g\" /etc/passwd" shape="box"];
  "sha256:e579083e14f2d434bac06322bd5772d803bf6385aa782dd3abd6c4a5182717c4" [label="local://context" shape="ellipse"];
  "sha256:3185225fda66a82ea1e907ef61708ceefced9e8babcba75d8ec7144018390609" [label="copy{src=/rabbitmqd.sh, dest=/tmp/}" shape="note"];
  "sha256:395b8dfb94678c096d6b0e68505254bbda70417021486e6b7754b869dc4053a9" [label="/bin/sh -c chmod 755 /tmp/rabbitmqd.sh" shape="box"];
  "sha256:e85dcc2d87c0f328adbc33c00f134a7ca6beb10f57fc32d82a7117419d0ede15" [label="mkdir{path=/data/rabbitmq}" shape="note"];
  "sha256:9fe6e7b1774aa283137951a9bd4a96cbb003e267b9f0e4a4b00f833f7ce16183" [label="sha256:9fe6e7b1774aa283137951a9bd4a96cbb003e267b9f0e4a4b00f833f7ce16183" shape="plaintext"];
  "sha256:e0dd5e1547b7398127ce3dda15e4a1e2de531f6f8fb78886cbd30060863d3eb8" -> "sha256:777ae1b6378ae3f1fcacf5744e275ee9a4d321cc3bebaae981e974d145c287cd" [label=""];
  "sha256:777ae1b6378ae3f1fcacf5744e275ee9a4d321cc3bebaae981e974d145c287cd" -> "sha256:3185225fda66a82ea1e907ef61708ceefced9e8babcba75d8ec7144018390609" [label=""];
  "sha256:e579083e14f2d434bac06322bd5772d803bf6385aa782dd3abd6c4a5182717c4" -> "sha256:3185225fda66a82ea1e907ef61708ceefced9e8babcba75d8ec7144018390609" [label=""];
  "sha256:3185225fda66a82ea1e907ef61708ceefced9e8babcba75d8ec7144018390609" -> "sha256:395b8dfb94678c096d6b0e68505254bbda70417021486e6b7754b869dc4053a9" [label=""];
  "sha256:395b8dfb94678c096d6b0e68505254bbda70417021486e6b7754b869dc4053a9" -> "sha256:e85dcc2d87c0f328adbc33c00f134a7ca6beb10f57fc32d82a7117419d0ede15" [label=""];
  "sha256:e85dcc2d87c0f328adbc33c00f134a7ca6beb10f57fc32d82a7117419d0ede15" -> "sha256:9fe6e7b1774aa283137951a9bd4a96cbb003e267b9f0e4a4b00f833f7ce16183" [label=""];
}

