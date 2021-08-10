[app/sources/291181565.Dockerfile]
digraph {
  "sha256:64b3aa9d43cd6bb8c87c69910985f19614474da1ab8804b8cc53071b52d00f70" [label="docker-image://docker.io/library/node:6.14.3-stretch" shape="ellipse"];
  "sha256:4ada0a6ec0fdfafb707f8d861c5ed0aa4beca1f3f6e176207bb1351591a62226" [label="/bin/sh -c echo 'APT::Get::Assume-Yes \"true\";' > /etc/apt/apt.conf.d/90circleci   && echo 'DPkg::Options \"--force-confnew\";' >> /etc/apt/apt.conf.d/90circleci" shape="box"];
  "sha256:92a05a1a8223e2e2949d43e242a526220ca9424f0322c3d337e4589919e60116" [label="/bin/sh -c apt-get update   && mkdir -p /usr/share/man/man1   && apt-get install -y     git mercurial xvfb     locales sudo openssh-client ca-certificates tar gzip parallel     net-tools netcat unzip zip bzip2 gnupg curl wget" shape="box"];
  "sha256:20419365b1cb2d63220d4aced574143f218af47d9d8cadf47ad134e5e9cdf4c3" [label="/bin/sh -c ln -sf /usr/share/zoneinfo/Etc/UTC /etc/localtime" shape="box"];
  "sha256:31766a2ae4f6e3b983f1b7fe7298a7561f64256e6f89b5967ee1ddb988daa0ab" [label="/bin/sh -c locale-gen C.UTF-8 || true" shape="box"];
  "sha256:c7af4b384fe73acfa50ac5b23501ef51966218e8ec4450821d48809ab48e0650" [label="/bin/sh -c JQ_URL=\"https://circle-downloads.s3.amazonaws.com/circleci-images/cache/linux-amd64/jq-latest\"   && curl --silent --show-error --location --fail --retry 3 --output /usr/bin/jq $JQ_URL   && chmod +x /usr/bin/jq   && jq --version" shape="box"];
  "sha256:babe63e1bc99e7e20807780778b242dc759ac7b1aacd393617b01a9c7e5dbd62" [label="/bin/sh -c set -ex   && export DOCKER_VERSION=$(curl --silent --fail --retry 3 https://download.docker.com/linux/static/stable/x86_64/ | grep -o -e 'docker-[.0-9]*-ce\\.tgz' | sort -r | head -n 1)   && DOCKER_URL=\"https://download.docker.com/linux/static/stable/x86_64/${DOCKER_VERSION}\"   && echo Docker URL: $DOCKER_URL   && curl --silent --show-error --location --fail --retry 3 --output /tmp/docker.tgz \"${DOCKER_URL}\"   && ls -lha /tmp/docker.tgz   && tar -xz -C /tmp -f /tmp/docker.tgz   && mv /tmp/docker/* /usr/bin   && rm -rf /tmp/docker /tmp/docker.tgz   && which docker   && (docker version || true)" shape="box"];
  "sha256:4a3a725229dc66102917db47be39acb1a0cb95cd2577844f9caadd77004910c4" [label="/bin/sh -c COMPOSE_URL=\"https://circle-downloads.s3.amazonaws.com/circleci-images/cache/linux-amd64/docker-compose-latest\"   && curl --silent --show-error --location --fail --retry 3 --output /usr/bin/docker-compose $COMPOSE_URL   && chmod +x /usr/bin/docker-compose   && docker-compose version" shape="box"];
  "sha256:301d8650387cc6b4515b0c7cfeedf0962fdbed8745523854c75af25c7131cf46" [label="/bin/sh -c DOCKERIZE_URL=\"https://circle-downloads.s3.amazonaws.com/circleci-images/cache/linux-amd64/dockerize-latest.tar.gz\"   && curl --silent --show-error --location --fail --retry 3 --output /tmp/dockerize-linux-amd64.tar.gz $DOCKERIZE_URL   && tar -C /usr/local/bin -xzvf /tmp/dockerize-linux-amd64.tar.gz   && rm -rf /tmp/dockerize-linux-amd64.tar.gz   && dockerize --version" shape="box"];
  "sha256:e261e0ce7dc5b5586726d41f0600b2b177784b9a00b077123f63043e0a36f05c" [label="/bin/sh -c groupadd --gid 3434 circleci   && useradd --uid 3434 --gid circleci --shell /bin/bash --create-home circleci   && echo 'circleci ALL=NOPASSWD: ALL' >> /etc/sudoers.d/50-circleci   && echo 'Defaults    env_keep += \"DEBIAN_FRONTEND\"' >> /etc/sudoers.d/env_keep" shape="box"];
  "sha256:878938c22c9c77bca6db91f64535d7c092ee23651f3ab47f0e17d5fff4a3ee5c" [label="sha256:878938c22c9c77bca6db91f64535d7c092ee23651f3ab47f0e17d5fff4a3ee5c" shape="plaintext"];
  "sha256:64b3aa9d43cd6bb8c87c69910985f19614474da1ab8804b8cc53071b52d00f70" -> "sha256:4ada0a6ec0fdfafb707f8d861c5ed0aa4beca1f3f6e176207bb1351591a62226" [label=""];
  "sha256:4ada0a6ec0fdfafb707f8d861c5ed0aa4beca1f3f6e176207bb1351591a62226" -> "sha256:92a05a1a8223e2e2949d43e242a526220ca9424f0322c3d337e4589919e60116" [label=""];
  "sha256:92a05a1a8223e2e2949d43e242a526220ca9424f0322c3d337e4589919e60116" -> "sha256:20419365b1cb2d63220d4aced574143f218af47d9d8cadf47ad134e5e9cdf4c3" [label=""];
  "sha256:20419365b1cb2d63220d4aced574143f218af47d9d8cadf47ad134e5e9cdf4c3" -> "sha256:31766a2ae4f6e3b983f1b7fe7298a7561f64256e6f89b5967ee1ddb988daa0ab" [label=""];
  "sha256:31766a2ae4f6e3b983f1b7fe7298a7561f64256e6f89b5967ee1ddb988daa0ab" -> "sha256:c7af4b384fe73acfa50ac5b23501ef51966218e8ec4450821d48809ab48e0650" [label=""];
  "sha256:c7af4b384fe73acfa50ac5b23501ef51966218e8ec4450821d48809ab48e0650" -> "sha256:babe63e1bc99e7e20807780778b242dc759ac7b1aacd393617b01a9c7e5dbd62" [label=""];
  "sha256:babe63e1bc99e7e20807780778b242dc759ac7b1aacd393617b01a9c7e5dbd62" -> "sha256:4a3a725229dc66102917db47be39acb1a0cb95cd2577844f9caadd77004910c4" [label=""];
  "sha256:4a3a725229dc66102917db47be39acb1a0cb95cd2577844f9caadd77004910c4" -> "sha256:301d8650387cc6b4515b0c7cfeedf0962fdbed8745523854c75af25c7131cf46" [label=""];
  "sha256:301d8650387cc6b4515b0c7cfeedf0962fdbed8745523854c75af25c7131cf46" -> "sha256:e261e0ce7dc5b5586726d41f0600b2b177784b9a00b077123f63043e0a36f05c" [label=""];
  "sha256:e261e0ce7dc5b5586726d41f0600b2b177784b9a00b077123f63043e0a36f05c" -> "sha256:878938c22c9c77bca6db91f64535d7c092ee23651f3ab47f0e17d5fff4a3ee5c" [label=""];
}

