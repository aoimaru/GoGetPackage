[app/sources/205519404.Dockerfile]
digraph {
  "sha256:58995561be374ea12cb0dfdc0f8497a528cb0dc42f22607175e3eaaddff3d293" [label="docker-image://docker.io/phalconphp/build:ubuntu-trusty" shape="ellipse"];
  "sha256:1fcfb667ed6a467be25a28b17527105b4d5ab100c87ab573db048bafbefe18f5" [label="/bin/sh -c LC_ALL=en_US.UTF-8 apt-add-repository -y ppa:ondrej/php     && apt-get clean -y     && apt-get update -y     && apt-get upgrade -y     && apt-get install --no-install-recommends -yq         php7.3-dev         php7.3-common         php7.3-cli     && apt-get autoremove -y     && apt-get clean -y     && rm -rf /tmp/* /var/tmp/*     && find /var/cache/apt/archives /var/lib/apt/lists -not -name lock -type f -delete     && find /var/cache -type f -delete     && find /var/log -type f | while read f; do echo -n '' > ${f}; done" shape="box"];
  "sha256:f4045805892c01996ddc5e8ac387855cb91046585a5050ad5f455298fddadc79" [label="sha256:f4045805892c01996ddc5e8ac387855cb91046585a5050ad5f455298fddadc79" shape="plaintext"];
  "sha256:58995561be374ea12cb0dfdc0f8497a528cb0dc42f22607175e3eaaddff3d293" -> "sha256:1fcfb667ed6a467be25a28b17527105b4d5ab100c87ab573db048bafbefe18f5" [label=""];
  "sha256:1fcfb667ed6a467be25a28b17527105b4d5ab100c87ab573db048bafbefe18f5" -> "sha256:f4045805892c01996ddc5e8ac387855cb91046585a5050ad5f455298fddadc79" [label=""];
}

