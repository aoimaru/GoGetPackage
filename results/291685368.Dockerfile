[app/sources/291685368.Dockerfile]
digraph {
  "sha256:be4548ed7fd2fec4855f4fd6fa3831cc1e1901291e5756a4d5a62aa481528d50" [label="docker-image://docker.io/library/php:7.2.6-fpm-stretch" shape="ellipse"];
  "sha256:797612fa7e4836a809ee1bc0039561dcac6879390bcee3b5bec2e205af555421" [label="/bin/sh -c echo 'APT::Get::Assume-Yes \"true\";' > /etc/apt/apt.conf.d/90circleci   && echo 'DPkg::Options \"--force-confnew\";' >> /etc/apt/apt.conf.d/90circleci" shape="box"];
  "sha256:19bb388b550aa4ed10396cdafd80b1cd6813540c2cc2f463b1c8789f30aa8341" [label="/bin/sh -c apt-get update   && mkdir -p /usr/share/man/man1   && apt-get install -y     git mercurial xvfb     locales sudo openssh-client ca-certificates tar gzip parallel     net-tools netcat unzip zip bzip2 gnupg curl wget" shape="box"];
  "sha256:8e5e615f15e1043495c8125f6828368d91d0a6cca58cfc34e1a61d3be3aeb123" [label="/bin/sh -c ln -sf /usr/share/zoneinfo/Etc/UTC /etc/localtime" shape="box"];
  "sha256:9469c878096ce18af82eb48f7040d1a2114ec13a9e8a3358a9a8ee0bee294259" [label="/bin/sh -c locale-gen C.UTF-8 || true" shape="box"];
  "sha256:ef1de42c34f703515d207b544906faf6ac0676c701e816ae91b2867b4e2d3c89" [label="/bin/sh -c JQ_URL=\"https://circle-downloads.s3.amazonaws.com/circleci-images/cache/linux-amd64/jq-latest\"   && curl --silent --show-error --location --fail --retry 3 --output /usr/bin/jq $JQ_URL   && chmod +x /usr/bin/jq   && jq --version" shape="box"];
  "sha256:48211ffad94abe6ff4a14917b305d13a575dbf68bb671ae4705a36093a7bf1a5" [label="/bin/sh -c set -ex   && export DOCKER_VERSION=$(curl --silent --fail --retry 3 https://download.docker.com/linux/static/stable/x86_64/ | grep -o -e 'docker-[.0-9]*-ce\\.tgz' | sort -r | head -n 1)   && DOCKER_URL=\"https://download.docker.com/linux/static/stable/x86_64/${DOCKER_VERSION}\"   && echo Docker URL: $DOCKER_URL   && curl --silent --show-error --location --fail --retry 3 --output /tmp/docker.tgz \"${DOCKER_URL}\"   && ls -lha /tmp/docker.tgz   && tar -xz -C /tmp -f /tmp/docker.tgz   && mv /tmp/docker/* /usr/bin   && rm -rf /tmp/docker /tmp/docker.tgz   && which docker   && (docker version || true)" shape="box"];
  "sha256:bc516125d715b0f39c6f0aac827afa509690b92610cef9c9bc47a52eb7b0b65a" [label="/bin/sh -c COMPOSE_URL=\"https://circle-downloads.s3.amazonaws.com/circleci-images/cache/linux-amd64/docker-compose-latest\"   && curl --silent --show-error --location --fail --retry 3 --output /usr/bin/docker-compose $COMPOSE_URL   && chmod +x /usr/bin/docker-compose   && docker-compose version" shape="box"];
  "sha256:72a365ea0e99fc6c47e29fe7d92b09bae4966dcb9ad5bd6a942d13ce341a4e32" [label="/bin/sh -c DOCKERIZE_URL=\"https://circle-downloads.s3.amazonaws.com/circleci-images/cache/linux-amd64/dockerize-latest.tar.gz\"   && curl --silent --show-error --location --fail --retry 3 --output /tmp/dockerize-linux-amd64.tar.gz $DOCKERIZE_URL   && tar -C /usr/local/bin -xzvf /tmp/dockerize-linux-amd64.tar.gz   && rm -rf /tmp/dockerize-linux-amd64.tar.gz   && dockerize --version" shape="box"];
  "sha256:1b0584648cc72371a35be12ca57bdf3fa38f425706c93b542a90263cfa7730f1" [label="/bin/sh -c groupadd --gid 3434 circleci   && useradd --uid 3434 --gid circleci --shell /bin/bash --create-home circleci   && echo 'circleci ALL=NOPASSWD: ALL' >> /etc/sudoers.d/50-circleci   && echo 'Defaults    env_keep += \"DEBIAN_FRONTEND\"' >> /etc/sudoers.d/env_keep" shape="box"];
  "sha256:e2eb66ebfd52448eeb15d983db0c5cd4b43cdc92b2986b89777f392ef2213068" [label="/bin/sh -c php -r \"copy('https://raw.githubusercontent.com/composer/getcomposer.org/master/web/installer', 'composer-setup.php');\" &&     php composer-setup.php &&     php -r \"unlink('composer-setup.php');\" &&     mv composer.phar /usr/local/bin/composer" shape="box"];
  "sha256:df1202fb1bfa078954ed2bf36a5067bb592e83803bc3d413537f974cde84fe94" [label="/bin/sh -c (pecl install xdebug || pecl install xdebug-2.5.5) && docker-php-ext-enable xdebug" shape="box"];
  "sha256:cd4ec901a2acc5a13da0cda1b69620097fc150149da2f086b14ed12c914b5870" [label="sha256:cd4ec901a2acc5a13da0cda1b69620097fc150149da2f086b14ed12c914b5870" shape="plaintext"];
  "sha256:be4548ed7fd2fec4855f4fd6fa3831cc1e1901291e5756a4d5a62aa481528d50" -> "sha256:797612fa7e4836a809ee1bc0039561dcac6879390bcee3b5bec2e205af555421" [label=""];
  "sha256:797612fa7e4836a809ee1bc0039561dcac6879390bcee3b5bec2e205af555421" -> "sha256:19bb388b550aa4ed10396cdafd80b1cd6813540c2cc2f463b1c8789f30aa8341" [label=""];
  "sha256:19bb388b550aa4ed10396cdafd80b1cd6813540c2cc2f463b1c8789f30aa8341" -> "sha256:8e5e615f15e1043495c8125f6828368d91d0a6cca58cfc34e1a61d3be3aeb123" [label=""];
  "sha256:8e5e615f15e1043495c8125f6828368d91d0a6cca58cfc34e1a61d3be3aeb123" -> "sha256:9469c878096ce18af82eb48f7040d1a2114ec13a9e8a3358a9a8ee0bee294259" [label=""];
  "sha256:9469c878096ce18af82eb48f7040d1a2114ec13a9e8a3358a9a8ee0bee294259" -> "sha256:ef1de42c34f703515d207b544906faf6ac0676c701e816ae91b2867b4e2d3c89" [label=""];
  "sha256:ef1de42c34f703515d207b544906faf6ac0676c701e816ae91b2867b4e2d3c89" -> "sha256:48211ffad94abe6ff4a14917b305d13a575dbf68bb671ae4705a36093a7bf1a5" [label=""];
  "sha256:48211ffad94abe6ff4a14917b305d13a575dbf68bb671ae4705a36093a7bf1a5" -> "sha256:bc516125d715b0f39c6f0aac827afa509690b92610cef9c9bc47a52eb7b0b65a" [label=""];
  "sha256:bc516125d715b0f39c6f0aac827afa509690b92610cef9c9bc47a52eb7b0b65a" -> "sha256:72a365ea0e99fc6c47e29fe7d92b09bae4966dcb9ad5bd6a942d13ce341a4e32" [label=""];
  "sha256:72a365ea0e99fc6c47e29fe7d92b09bae4966dcb9ad5bd6a942d13ce341a4e32" -> "sha256:1b0584648cc72371a35be12ca57bdf3fa38f425706c93b542a90263cfa7730f1" [label=""];
  "sha256:1b0584648cc72371a35be12ca57bdf3fa38f425706c93b542a90263cfa7730f1" -> "sha256:e2eb66ebfd52448eeb15d983db0c5cd4b43cdc92b2986b89777f392ef2213068" [label=""];
  "sha256:e2eb66ebfd52448eeb15d983db0c5cd4b43cdc92b2986b89777f392ef2213068" -> "sha256:df1202fb1bfa078954ed2bf36a5067bb592e83803bc3d413537f974cde84fe94" [label=""];
  "sha256:df1202fb1bfa078954ed2bf36a5067bb592e83803bc3d413537f974cde84fe94" -> "sha256:cd4ec901a2acc5a13da0cda1b69620097fc150149da2f086b14ed12c914b5870" [label=""];
}

