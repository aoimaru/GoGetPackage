[app/sources/291181346.Dockerfile]
digraph {
  "sha256:3d908b2cfc7f2c8fe7ccc103701f9a9d2960ae0ecec884467a7e45d04c6db996" [label="docker-image://docker.io/library/node:10.11.0-jessie" shape="ellipse"];
  "sha256:86acaa8d8395e263d1e4331955d587d59e327b29d8af65315c12074b4c647ecc" [label="/bin/sh -c echo 'APT::Get::Assume-Yes \"true\";' > /etc/apt/apt.conf.d/90circleci   && echo 'DPkg::Options \"--force-confnew\";' >> /etc/apt/apt.conf.d/90circleci" shape="box"];
  "sha256:dccce259fc3ebd78d32821386d94a9eec02e838b26b8497c675271a4aa090235" [label="/bin/sh -c apt-get update   && mkdir -p /usr/share/man/man1   && apt-get install -y     git mercurial xvfb     locales sudo openssh-client ca-certificates tar gzip parallel     net-tools netcat unzip zip bzip2 gnupg curl wget" shape="box"];
  "sha256:1dec365874d87866a768ea3eb2ca509193dbe1607a6e3e9230a4de66c6c56823" [label="/bin/sh -c ln -sf /usr/share/zoneinfo/Etc/UTC /etc/localtime" shape="box"];
  "sha256:7600473ca2c079bce7fcc7318d3885e39d61ae21be4bdd1fd61f300340fcf156" [label="/bin/sh -c locale-gen C.UTF-8 || true" shape="box"];
  "sha256:9d745feb19c9b97b5ef90ef0071dafb6448a66c8a505dec68bb631e702e5a3d9" [label="/bin/sh -c JQ_URL=\"https://circle-downloads.s3.amazonaws.com/circleci-images/cache/linux-amd64/jq-latest\"   && curl --silent --show-error --location --fail --retry 3 --output /usr/bin/jq $JQ_URL   && chmod +x /usr/bin/jq   && jq --version" shape="box"];
  "sha256:1eccd9361c4bf73c85f71d103929a9a7aa1ff6a2c822f3fe2839e27d577cee87" [label="/bin/sh -c set -ex   && export DOCKER_VERSION=$(curl --silent --fail --retry 3 https://download.docker.com/linux/static/stable/x86_64/ | grep -o -e 'docker-[.0-9]*-ce\\.tgz' | sort -r | head -n 1)   && DOCKER_URL=\"https://download.docker.com/linux/static/stable/x86_64/${DOCKER_VERSION}\"   && echo Docker URL: $DOCKER_URL   && curl --silent --show-error --location --fail --retry 3 --output /tmp/docker.tgz \"${DOCKER_URL}\"   && ls -lha /tmp/docker.tgz   && tar -xz -C /tmp -f /tmp/docker.tgz   && mv /tmp/docker/* /usr/bin   && rm -rf /tmp/docker /tmp/docker.tgz   && which docker   && (docker version || true)" shape="box"];
  "sha256:eabc50dc3f536f86a56b60ed30760bb94e3aef928acb3938ed336f4e939ad771" [label="/bin/sh -c COMPOSE_URL=\"https://circle-downloads.s3.amazonaws.com/circleci-images/cache/linux-amd64/docker-compose-latest\"   && curl --silent --show-error --location --fail --retry 3 --output /usr/bin/docker-compose $COMPOSE_URL   && chmod +x /usr/bin/docker-compose   && docker-compose version" shape="box"];
  "sha256:241ce528219aa4426aa27bcff472c8db152aa921a94b4c2f56d2b1ec7e4f62f3" [label="/bin/sh -c DOCKERIZE_URL=\"https://circle-downloads.s3.amazonaws.com/circleci-images/cache/linux-amd64/dockerize-latest.tar.gz\"   && curl --silent --show-error --location --fail --retry 3 --output /tmp/dockerize-linux-amd64.tar.gz $DOCKERIZE_URL   && tar -C /usr/local/bin -xzvf /tmp/dockerize-linux-amd64.tar.gz   && rm -rf /tmp/dockerize-linux-amd64.tar.gz   && dockerize --version" shape="box"];
  "sha256:54da5aedf17df64a76f6bd34dc38dd64d2ea0590f146fa5cdca309c1ff8f315f" [label="/bin/sh -c groupadd --gid 3434 circleci   && useradd --uid 3434 --gid circleci --shell /bin/bash --create-home circleci   && echo 'circleci ALL=NOPASSWD: ALL' >> /etc/sudoers.d/50-circleci   && echo 'Defaults    env_keep += \"DEBIAN_FRONTEND\"' >> /etc/sudoers.d/env_keep" shape="box"];
  "sha256:e31ce24ee47e898814b5c89d5edc467c80e9c467fddce1652a9bfd419df64963" [label="sha256:e31ce24ee47e898814b5c89d5edc467c80e9c467fddce1652a9bfd419df64963" shape="plaintext"];
  "sha256:3d908b2cfc7f2c8fe7ccc103701f9a9d2960ae0ecec884467a7e45d04c6db996" -> "sha256:86acaa8d8395e263d1e4331955d587d59e327b29d8af65315c12074b4c647ecc" [label=""];
  "sha256:86acaa8d8395e263d1e4331955d587d59e327b29d8af65315c12074b4c647ecc" -> "sha256:dccce259fc3ebd78d32821386d94a9eec02e838b26b8497c675271a4aa090235" [label=""];
  "sha256:dccce259fc3ebd78d32821386d94a9eec02e838b26b8497c675271a4aa090235" -> "sha256:1dec365874d87866a768ea3eb2ca509193dbe1607a6e3e9230a4de66c6c56823" [label=""];
  "sha256:1dec365874d87866a768ea3eb2ca509193dbe1607a6e3e9230a4de66c6c56823" -> "sha256:7600473ca2c079bce7fcc7318d3885e39d61ae21be4bdd1fd61f300340fcf156" [label=""];
  "sha256:7600473ca2c079bce7fcc7318d3885e39d61ae21be4bdd1fd61f300340fcf156" -> "sha256:9d745feb19c9b97b5ef90ef0071dafb6448a66c8a505dec68bb631e702e5a3d9" [label=""];
  "sha256:9d745feb19c9b97b5ef90ef0071dafb6448a66c8a505dec68bb631e702e5a3d9" -> "sha256:1eccd9361c4bf73c85f71d103929a9a7aa1ff6a2c822f3fe2839e27d577cee87" [label=""];
  "sha256:1eccd9361c4bf73c85f71d103929a9a7aa1ff6a2c822f3fe2839e27d577cee87" -> "sha256:eabc50dc3f536f86a56b60ed30760bb94e3aef928acb3938ed336f4e939ad771" [label=""];
  "sha256:eabc50dc3f536f86a56b60ed30760bb94e3aef928acb3938ed336f4e939ad771" -> "sha256:241ce528219aa4426aa27bcff472c8db152aa921a94b4c2f56d2b1ec7e4f62f3" [label=""];
  "sha256:241ce528219aa4426aa27bcff472c8db152aa921a94b4c2f56d2b1ec7e4f62f3" -> "sha256:54da5aedf17df64a76f6bd34dc38dd64d2ea0590f146fa5cdca309c1ff8f315f" [label=""];
  "sha256:54da5aedf17df64a76f6bd34dc38dd64d2ea0590f146fa5cdca309c1ff8f315f" -> "sha256:e31ce24ee47e898814b5c89d5edc467c80e9c467fddce1652a9bfd419df64963" [label=""];
}

