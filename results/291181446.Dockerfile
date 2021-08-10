[app/sources/291181446.Dockerfile]
digraph {
  "sha256:d30316ba9e63dd205290e02d76e7c6621aa6a36a00a9797557cafa6e765ebcd4" [label="docker-image://docker.io/library/node:10.8.0-stretch" shape="ellipse"];
  "sha256:cff67c5003b28e6dda0334a2bd61a2eaad8bf27a8a65ee273bd8e6f729223bb9" [label="/bin/sh -c echo 'APT::Get::Assume-Yes \"true\";' > /etc/apt/apt.conf.d/90circleci   && echo 'DPkg::Options \"--force-confnew\";' >> /etc/apt/apt.conf.d/90circleci" shape="box"];
  "sha256:a8c7b80ef8d27d104da2bfd1daf372249e011ce2704f0717d0968da271a66640" [label="/bin/sh -c apt-get update   && mkdir -p /usr/share/man/man1   && apt-get install -y     git mercurial xvfb     locales sudo openssh-client ca-certificates tar gzip parallel     net-tools netcat unzip zip bzip2 gnupg curl wget" shape="box"];
  "sha256:370dd7df3baa8ea89ec09996ddcce25ad5ec9e55057a0e7981adcf823c1855e4" [label="/bin/sh -c ln -sf /usr/share/zoneinfo/Etc/UTC /etc/localtime" shape="box"];
  "sha256:a28bc2875d1b2ae6f459429159c261dc07a3e9321fad1ff5589152cafcc223c9" [label="/bin/sh -c locale-gen C.UTF-8 || true" shape="box"];
  "sha256:b8f6cc47eaf9bde4f695ef93382c9d2e45fcc43194ef26c116043972a753ccf4" [label="/bin/sh -c JQ_URL=\"https://circle-downloads.s3.amazonaws.com/circleci-images/cache/linux-amd64/jq-latest\"   && curl --silent --show-error --location --fail --retry 3 --output /usr/bin/jq $JQ_URL   && chmod +x /usr/bin/jq   && jq --version" shape="box"];
  "sha256:4cc214bc5e22c5ba9f415939bbf044a1bc09f3de918851e4bc23cc83ee87ef37" [label="/bin/sh -c set -ex   && export DOCKER_VERSION=$(curl --silent --fail --retry 3 https://download.docker.com/linux/static/stable/x86_64/ | grep -o -e 'docker-[.0-9]*-ce\\.tgz' | sort -r | head -n 1)   && DOCKER_URL=\"https://download.docker.com/linux/static/stable/x86_64/${DOCKER_VERSION}\"   && echo Docker URL: $DOCKER_URL   && curl --silent --show-error --location --fail --retry 3 --output /tmp/docker.tgz \"${DOCKER_URL}\"   && ls -lha /tmp/docker.tgz   && tar -xz -C /tmp -f /tmp/docker.tgz   && mv /tmp/docker/* /usr/bin   && rm -rf /tmp/docker /tmp/docker.tgz   && which docker   && (docker version || true)" shape="box"];
  "sha256:bbd46da022a0145d1b956d690fea66284c959191f42c28c886b494c15c02e73e" [label="/bin/sh -c COMPOSE_URL=\"https://circle-downloads.s3.amazonaws.com/circleci-images/cache/linux-amd64/docker-compose-latest\"   && curl --silent --show-error --location --fail --retry 3 --output /usr/bin/docker-compose $COMPOSE_URL   && chmod +x /usr/bin/docker-compose   && docker-compose version" shape="box"];
  "sha256:9a47461961b61889b293cad9b73130994b4c16a45efe126334203c043c440d7d" [label="/bin/sh -c DOCKERIZE_URL=\"https://circle-downloads.s3.amazonaws.com/circleci-images/cache/linux-amd64/dockerize-latest.tar.gz\"   && curl --silent --show-error --location --fail --retry 3 --output /tmp/dockerize-linux-amd64.tar.gz $DOCKERIZE_URL   && tar -C /usr/local/bin -xzvf /tmp/dockerize-linux-amd64.tar.gz   && rm -rf /tmp/dockerize-linux-amd64.tar.gz   && dockerize --version" shape="box"];
  "sha256:7a48f22147f8eb690dbad1fee6bce8a0c0e76a8ab7da1dc83bbb640e9a29ebef" [label="/bin/sh -c groupadd --gid 3434 circleci   && useradd --uid 3434 --gid circleci --shell /bin/bash --create-home circleci   && echo 'circleci ALL=NOPASSWD: ALL' >> /etc/sudoers.d/50-circleci   && echo 'Defaults    env_keep += \"DEBIAN_FRONTEND\"' >> /etc/sudoers.d/env_keep" shape="box"];
  "sha256:4540afef1d92ab5ae01cddcd6d4965229924f749b1462d6f745dfa1c51122acb" [label="sha256:4540afef1d92ab5ae01cddcd6d4965229924f749b1462d6f745dfa1c51122acb" shape="plaintext"];
  "sha256:d30316ba9e63dd205290e02d76e7c6621aa6a36a00a9797557cafa6e765ebcd4" -> "sha256:cff67c5003b28e6dda0334a2bd61a2eaad8bf27a8a65ee273bd8e6f729223bb9" [label=""];
  "sha256:cff67c5003b28e6dda0334a2bd61a2eaad8bf27a8a65ee273bd8e6f729223bb9" -> "sha256:a8c7b80ef8d27d104da2bfd1daf372249e011ce2704f0717d0968da271a66640" [label=""];
  "sha256:a8c7b80ef8d27d104da2bfd1daf372249e011ce2704f0717d0968da271a66640" -> "sha256:370dd7df3baa8ea89ec09996ddcce25ad5ec9e55057a0e7981adcf823c1855e4" [label=""];
  "sha256:370dd7df3baa8ea89ec09996ddcce25ad5ec9e55057a0e7981adcf823c1855e4" -> "sha256:a28bc2875d1b2ae6f459429159c261dc07a3e9321fad1ff5589152cafcc223c9" [label=""];
  "sha256:a28bc2875d1b2ae6f459429159c261dc07a3e9321fad1ff5589152cafcc223c9" -> "sha256:b8f6cc47eaf9bde4f695ef93382c9d2e45fcc43194ef26c116043972a753ccf4" [label=""];
  "sha256:b8f6cc47eaf9bde4f695ef93382c9d2e45fcc43194ef26c116043972a753ccf4" -> "sha256:4cc214bc5e22c5ba9f415939bbf044a1bc09f3de918851e4bc23cc83ee87ef37" [label=""];
  "sha256:4cc214bc5e22c5ba9f415939bbf044a1bc09f3de918851e4bc23cc83ee87ef37" -> "sha256:bbd46da022a0145d1b956d690fea66284c959191f42c28c886b494c15c02e73e" [label=""];
  "sha256:bbd46da022a0145d1b956d690fea66284c959191f42c28c886b494c15c02e73e" -> "sha256:9a47461961b61889b293cad9b73130994b4c16a45efe126334203c043c440d7d" [label=""];
  "sha256:9a47461961b61889b293cad9b73130994b4c16a45efe126334203c043c440d7d" -> "sha256:7a48f22147f8eb690dbad1fee6bce8a0c0e76a8ab7da1dc83bbb640e9a29ebef" [label=""];
  "sha256:7a48f22147f8eb690dbad1fee6bce8a0c0e76a8ab7da1dc83bbb640e9a29ebef" -> "sha256:4540afef1d92ab5ae01cddcd6d4965229924f749b1462d6f745dfa1c51122acb" [label=""];
}

