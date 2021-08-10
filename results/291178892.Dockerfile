[app/sources/291178892.Dockerfile]
digraph {
  "sha256:c363a46ae87d74f64dc0a8c4fd96566901c7b8d4dcb515178a4aebfd67ba4cc8" [label="docker-image://docker.io/library/buildpack-deps:sid-curl" shape="ellipse"];
  "sha256:8de779ba3a1edbe6fb50215fdab1fd1cb2e2b63a5a0ab07e1e9856b0efc683f3" [label="/bin/sh -c echo 'APT::Get::Assume-Yes \"true\";' > /etc/apt/apt.conf.d/90circleci   && echo 'DPkg::Options \"--force-confnew\";' >> /etc/apt/apt.conf.d/90circleci" shape="box"];
  "sha256:8cb516d3dc6b9c3b77939e495576b067155ec1bf75c51f8290a893699773f0cf" [label="/bin/sh -c if grep -q Debian /etc/os-release && grep -q jessie /etc/os-release; then \trm /etc/apt/sources.list     && echo \"deb http://archive.debian.org/debian/ jessie main\" >> /etc/apt/sources.list     && echo \"deb http://security.debian.org/debian-security jessie/updates main\" >> /etc/apt/sources.list \t; fi" shape="box"];
  "sha256:c4e9aaaf33c72bfc1c04206a59a3fc8a3c540d3f28a662435e5cc6d3229dc6f6" [label="/bin/sh -c apt-get update   && mkdir -p /usr/share/man/man1   && apt-get install -y     git mercurial xvfb apt     locales sudo openssh-client ca-certificates tar gzip parallel     net-tools netcat unzip zip bzip2 gnupg curl wget" shape="box"];
  "sha256:6e3b27172748dbe159db5e7f2a3fe7e220f144d94df07aab0a00cfec4fe4a095" [label="/bin/sh -c ln -sf /usr/share/zoneinfo/Etc/UTC /etc/localtime" shape="box"];
  "sha256:6fe967dfd53d613b8fc3df7a0d7a03e2741a92e5b0dcb1e49336d22b9ffa5a9d" [label="/bin/sh -c locale-gen C.UTF-8 || true" shape="box"];
  "sha256:19e99d47123337a798a74aabd8734250ba722c4bb7cf47e7e2ed79c8f4a6f233" [label="/bin/sh -c JQ_URL=\"https://circle-downloads.s3.amazonaws.com/circleci-images/cache/linux-amd64/jq-latest\"   && curl --silent --show-error --location --fail --retry 3 --output /usr/bin/jq $JQ_URL   && chmod +x /usr/bin/jq   && jq --version" shape="box"];
  "sha256:07e38d61017cb932fb23d6f6cb985a092733933599eee32df37858341d60aa49" [label="/bin/sh -c set -ex   && export DOCKER_VERSION=$(curl --silent --fail --retry 3 https://download.docker.com/linux/static/stable/x86_64/ | grep -o -e 'docker-[.0-9]*\\.tgz' | sort -r | head -n 1)   && DOCKER_URL=\"https://download.docker.com/linux/static/stable/x86_64/${DOCKER_VERSION}\"   && echo Docker URL: $DOCKER_URL   && curl --silent --show-error --location --fail --retry 3 --output /tmp/docker.tgz \"${DOCKER_URL}\"   && ls -lha /tmp/docker.tgz   && tar -xz -C /tmp -f /tmp/docker.tgz   && mv /tmp/docker/* /usr/bin   && rm -rf /tmp/docker /tmp/docker.tgz   && which docker   && (docker version || true)" shape="box"];
  "sha256:0fdb1fa8f2bbddb967eae78d2c5eca93b41a040e09fdbae9218ee589897c2ba6" [label="/bin/sh -c COMPOSE_URL=\"https://circle-downloads.s3.amazonaws.com/circleci-images/cache/linux-amd64/docker-compose-latest\"   && curl --silent --show-error --location --fail --retry 3 --output /usr/bin/docker-compose $COMPOSE_URL   && chmod +x /usr/bin/docker-compose   && docker-compose version" shape="box"];
  "sha256:cd46e886f20e0239e2d0f31e3ecd5f5608f0165c6d9d3d421dfef53fdd792816" [label="/bin/sh -c DOCKERIZE_URL=\"https://circle-downloads.s3.amazonaws.com/circleci-images/cache/linux-amd64/dockerize-latest.tar.gz\"   && curl --silent --show-error --location --fail --retry 3 --output /tmp/dockerize-linux-amd64.tar.gz $DOCKERIZE_URL   && tar -C /usr/local/bin -xzvf /tmp/dockerize-linux-amd64.tar.gz   && rm -rf /tmp/dockerize-linux-amd64.tar.gz   && dockerize --version" shape="box"];
  "sha256:0fc3c95c3279c9de3cde6503fef44338bed7c6a9eaa6abd2150f9595f31aaf0b" [label="/bin/sh -c groupadd --gid 3434 circleci   && useradd --uid 3434 --gid circleci --shell /bin/bash --create-home circleci   && echo 'circleci ALL=NOPASSWD: ALL' >> /etc/sudoers.d/50-circleci   && echo 'Defaults    env_keep += \"DEBIAN_FRONTEND\"' >> /etc/sudoers.d/env_keep" shape="box"];
  "sha256:ee3b1fc7fb1304a867b45dc8ffed9dc3657cd835f3bffb3a246634c4bf5c52f8" [label="sha256:ee3b1fc7fb1304a867b45dc8ffed9dc3657cd835f3bffb3a246634c4bf5c52f8" shape="plaintext"];
  "sha256:c363a46ae87d74f64dc0a8c4fd96566901c7b8d4dcb515178a4aebfd67ba4cc8" -> "sha256:8de779ba3a1edbe6fb50215fdab1fd1cb2e2b63a5a0ab07e1e9856b0efc683f3" [label=""];
  "sha256:8de779ba3a1edbe6fb50215fdab1fd1cb2e2b63a5a0ab07e1e9856b0efc683f3" -> "sha256:8cb516d3dc6b9c3b77939e495576b067155ec1bf75c51f8290a893699773f0cf" [label=""];
  "sha256:8cb516d3dc6b9c3b77939e495576b067155ec1bf75c51f8290a893699773f0cf" -> "sha256:c4e9aaaf33c72bfc1c04206a59a3fc8a3c540d3f28a662435e5cc6d3229dc6f6" [label=""];
  "sha256:c4e9aaaf33c72bfc1c04206a59a3fc8a3c540d3f28a662435e5cc6d3229dc6f6" -> "sha256:6e3b27172748dbe159db5e7f2a3fe7e220f144d94df07aab0a00cfec4fe4a095" [label=""];
  "sha256:6e3b27172748dbe159db5e7f2a3fe7e220f144d94df07aab0a00cfec4fe4a095" -> "sha256:6fe967dfd53d613b8fc3df7a0d7a03e2741a92e5b0dcb1e49336d22b9ffa5a9d" [label=""];
  "sha256:6fe967dfd53d613b8fc3df7a0d7a03e2741a92e5b0dcb1e49336d22b9ffa5a9d" -> "sha256:19e99d47123337a798a74aabd8734250ba722c4bb7cf47e7e2ed79c8f4a6f233" [label=""];
  "sha256:19e99d47123337a798a74aabd8734250ba722c4bb7cf47e7e2ed79c8f4a6f233" -> "sha256:07e38d61017cb932fb23d6f6cb985a092733933599eee32df37858341d60aa49" [label=""];
  "sha256:07e38d61017cb932fb23d6f6cb985a092733933599eee32df37858341d60aa49" -> "sha256:0fdb1fa8f2bbddb967eae78d2c5eca93b41a040e09fdbae9218ee589897c2ba6" [label=""];
  "sha256:0fdb1fa8f2bbddb967eae78d2c5eca93b41a040e09fdbae9218ee589897c2ba6" -> "sha256:cd46e886f20e0239e2d0f31e3ecd5f5608f0165c6d9d3d421dfef53fdd792816" [label=""];
  "sha256:cd46e886f20e0239e2d0f31e3ecd5f5608f0165c6d9d3d421dfef53fdd792816" -> "sha256:0fc3c95c3279c9de3cde6503fef44338bed7c6a9eaa6abd2150f9595f31aaf0b" [label=""];
  "sha256:0fc3c95c3279c9de3cde6503fef44338bed7c6a9eaa6abd2150f9595f31aaf0b" -> "sha256:ee3b1fc7fb1304a867b45dc8ffed9dc3657cd835f3bffb3a246634c4bf5c52f8" [label=""];
}

