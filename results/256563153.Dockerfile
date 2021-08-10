[app/sources/256563153.Dockerfile]
digraph {
  "sha256:5daa623bfd522bc7940f8c07146ca43135659782a7e58966ad16fb059419f4e5" [label="docker-image://docker.io/microsoft/vsts-agent:ubuntu-16.04" shape="ellipse"];
  "sha256:619eed40723b55648f048f9732679625a0b17b6f05e7654d134e33bcfffdef5e" [label="/bin/sh -c set -ex  && curl -fL \"https://download.docker.com/linux/static/${DOCKER_CHANNEL}/`uname -m`/docker-${DOCKER_VERSION}.tgz\" -o docker.tgz  && tar --extract --file docker.tgz --strip-components 1 --directory /usr/local/bin  && rm docker.tgz  && docker -v" shape="box"];
  "sha256:c35953976468b09d49051adc26da0708417a9b9de048db6cdc958814ce726f80" [label="/bin/sh -c set -x  && curl -fSL \"https://github.com/docker/compose/releases/download/$DOCKER_COMPOSE_VERSION/docker-compose-`uname -s`-`uname -m`\" -o /usr/local/bin/docker-compose  && chmod +x /usr/local/bin/docker-compose  && docker-compose -v" shape="box"];
  "sha256:d610bd9b000b094e3434a15d58b873a9f8d9c7a15654be7192d9d8dac504589e" [label="sha256:d610bd9b000b094e3434a15d58b873a9f8d9c7a15654be7192d9d8dac504589e" shape="plaintext"];
  "sha256:5daa623bfd522bc7940f8c07146ca43135659782a7e58966ad16fb059419f4e5" -> "sha256:619eed40723b55648f048f9732679625a0b17b6f05e7654d134e33bcfffdef5e" [label=""];
  "sha256:619eed40723b55648f048f9732679625a0b17b6f05e7654d134e33bcfffdef5e" -> "sha256:c35953976468b09d49051adc26da0708417a9b9de048db6cdc958814ce726f80" [label=""];
  "sha256:c35953976468b09d49051adc26da0708417a9b9de048db6cdc958814ce726f80" -> "sha256:d610bd9b000b094e3434a15d58b873a9f8d9c7a15654be7192d9d8dac504589e" [label=""];
}

