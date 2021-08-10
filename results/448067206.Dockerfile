[app/sources/448067206.Dockerfile]
digraph {
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:6e1463e86ca2f4a0d7335b4ba7a15e934f0bc58e47b2e4f562a080dfe814c5bf" [label="/bin/sh -c mkdir -p /home/webapp" shape="box"];
  "sha256:65a1eb8b74cbbabfb69bd9263addfaef62c4b96ef97ac07f29c3cfb6462a2750" [label="/bin/sh -c groupadd -r webapp && useradd -r -g webapp webapp" shape="box"];
  "sha256:cd757ad39f59f41dc3376985971fe58510ebf83fcb62ce21fc9b406e1477be25" [label="/bin/sh -c echo 'APT::Get::Assume-Yes \"true\";' > /etc/apt/apt.conf.d/90assumeyes" shape="box"];
  "sha256:afc28a9de27674452f67e0680fa5cbbd6bc9d07bb065737c2ce16c76f8d19319" [label="/bin/sh -c apt-get update && apt-get install     -qy     -o APT::Install-Recommends=false     -o APT::Install-Suggests=false     curl     git     gnupg     libldap2-dev     libsasl2-dev     libssl-dev     libxml2-dev     libxslt1-dev     python-pip     python-virtualenv     virtualenvwrapper     libmagic-dev     libmagickwand-dev     libmysqlclient20     && apt-get clean" shape="box"];
  "sha256:51d835d960df5489318cebcaab8323b602e26b8b153b3f44781fb34de6b49960" [label="/bin/sh -c curl -sL https://deb.nodesource.com/setup_10.x | bash -" shape="box"];
  "sha256:6e31ef0bac4965877bdc39c8fc0142db515540b24128d72b348a06c3d89a4f97" [label="/bin/sh -c apt-get install -y nodejs" shape="box"];
  "sha256:7f25ceb9e8d82e198e47dda7c42ffbf2d0b5e88c7efe7fd00988d447506062ec" [label="/bin/sh -c mkdir /appenv" shape="box"];
  "sha256:647a5d3b8bc91cc29afb7add1737bd207a37a80bdeadd07371136673c8c33e05" [label="/bin/sh -c chown -R webapp:webapp /appenv" shape="box"];
  "sha256:583d96d5c23244b0fc49e4ea8a747c24fc0b34eeeec22363af2c5d1595b2526b" [label="/bin/sh -c chown -R webapp:webapp /home/webapp" shape="box"];
  "sha256:b7b7173ddca80fe8157e63fd6ce3b1ec75cd0ea82584542ddbfd178124b65a4a" [label="/bin/sh -c virtualenv --system-site-packages /appenv" shape="box"];
  "sha256:4c071359600af6f33443fa96209ec1c0407c1bcce39f6f5f6a92178ba84efb41" [label="/bin/sh -c . /appenv/bin/activate; pip install -U pip wheel" shape="box"];
  "sha256:47c67debf3a4ea1afbdce705162af4d5988a5cdc9818307b82bdb9a6e1673681" [label="local://context" shape="ellipse"];
  "sha256:34c1eb473de74661aff4da06cf2186cdc35732581aab07de6c8c0a9231ead324" [label="copy{src=/, dest=/home/webapp/}" shape="note"];
  "sha256:6f40afe05890edc1430a62b2468cb6e1c712bb78ccb5f86d6e951e9db1158dd4" [label="sha256:6f40afe05890edc1430a62b2468cb6e1c712bb78ccb5f86d6e951e9db1158dd4" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:6e1463e86ca2f4a0d7335b4ba7a15e934f0bc58e47b2e4f562a080dfe814c5bf" [label=""];
  "sha256:6e1463e86ca2f4a0d7335b4ba7a15e934f0bc58e47b2e4f562a080dfe814c5bf" -> "sha256:65a1eb8b74cbbabfb69bd9263addfaef62c4b96ef97ac07f29c3cfb6462a2750" [label=""];
  "sha256:65a1eb8b74cbbabfb69bd9263addfaef62c4b96ef97ac07f29c3cfb6462a2750" -> "sha256:cd757ad39f59f41dc3376985971fe58510ebf83fcb62ce21fc9b406e1477be25" [label=""];
  "sha256:cd757ad39f59f41dc3376985971fe58510ebf83fcb62ce21fc9b406e1477be25" -> "sha256:afc28a9de27674452f67e0680fa5cbbd6bc9d07bb065737c2ce16c76f8d19319" [label=""];
  "sha256:afc28a9de27674452f67e0680fa5cbbd6bc9d07bb065737c2ce16c76f8d19319" -> "sha256:51d835d960df5489318cebcaab8323b602e26b8b153b3f44781fb34de6b49960" [label=""];
  "sha256:51d835d960df5489318cebcaab8323b602e26b8b153b3f44781fb34de6b49960" -> "sha256:6e31ef0bac4965877bdc39c8fc0142db515540b24128d72b348a06c3d89a4f97" [label=""];
  "sha256:6e31ef0bac4965877bdc39c8fc0142db515540b24128d72b348a06c3d89a4f97" -> "sha256:7f25ceb9e8d82e198e47dda7c42ffbf2d0b5e88c7efe7fd00988d447506062ec" [label=""];
  "sha256:7f25ceb9e8d82e198e47dda7c42ffbf2d0b5e88c7efe7fd00988d447506062ec" -> "sha256:647a5d3b8bc91cc29afb7add1737bd207a37a80bdeadd07371136673c8c33e05" [label=""];
  "sha256:647a5d3b8bc91cc29afb7add1737bd207a37a80bdeadd07371136673c8c33e05" -> "sha256:583d96d5c23244b0fc49e4ea8a747c24fc0b34eeeec22363af2c5d1595b2526b" [label=""];
  "sha256:583d96d5c23244b0fc49e4ea8a747c24fc0b34eeeec22363af2c5d1595b2526b" -> "sha256:b7b7173ddca80fe8157e63fd6ce3b1ec75cd0ea82584542ddbfd178124b65a4a" [label=""];
  "sha256:b7b7173ddca80fe8157e63fd6ce3b1ec75cd0ea82584542ddbfd178124b65a4a" -> "sha256:4c071359600af6f33443fa96209ec1c0407c1bcce39f6f5f6a92178ba84efb41" [label=""];
  "sha256:4c071359600af6f33443fa96209ec1c0407c1bcce39f6f5f6a92178ba84efb41" -> "sha256:34c1eb473de74661aff4da06cf2186cdc35732581aab07de6c8c0a9231ead324" [label=""];
  "sha256:47c67debf3a4ea1afbdce705162af4d5988a5cdc9818307b82bdb9a6e1673681" -> "sha256:34c1eb473de74661aff4da06cf2186cdc35732581aab07de6c8c0a9231ead324" [label=""];
  "sha256:34c1eb473de74661aff4da06cf2186cdc35732581aab07de6c8c0a9231ead324" -> "sha256:6f40afe05890edc1430a62b2468cb6e1c712bb78ccb5f86d6e951e9db1158dd4" [label=""];
}

