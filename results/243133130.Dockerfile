[app/sources/243133130.Dockerfile]
digraph {
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:2d601f8c5cc4d63123276398bc7b7058b449f784597c99edd6f692a20c42d12b" [label="/bin/sh -c apt-get update -y     && apt-get install -y python-dev python-pip python-setuptools git \tpkg-config libzmq3-dev     && pip install -U pytest jupyter     && git clone https://github.com/Anaconda-Platform/nb_config_manager.git     && cd nb_config_manager     && python setup.py install &&  py.test     && apt-get purge -y git     && apt-get -y autoremove && cd .. && rm -rf nb_config_manager" shape="box"];
  "sha256:466d49149734d96a60e486fc9494bba7a1fa5ef47d6ab597969f5ee63dd423ad" [label="sha256:466d49149734d96a60e486fc9494bba7a1fa5ef47d6ab597969f5ee63dd423ad" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:2d601f8c5cc4d63123276398bc7b7058b449f784597c99edd6f692a20c42d12b" [label=""];
  "sha256:2d601f8c5cc4d63123276398bc7b7058b449f784597c99edd6f692a20c42d12b" -> "sha256:466d49149734d96a60e486fc9494bba7a1fa5ef47d6ab597969f5ee63dd423ad" [label=""];
}

