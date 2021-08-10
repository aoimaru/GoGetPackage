[app/sources/462032832.Dockerfile]
digraph {
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:8385571b48b7ffa646cfee501da69b75dc25eeb18dbf01ef256d84bac801ffa9" [label="/bin/bash -o pipefail -c apt-get update         && apt-get install --no-install-recommends -y         apt-utils         ca-certificates         lsb-release         pigz         python3-pip         python3-setuptools         curl         jq         gnupg     && pip3 install --no-cache-dir awscli --upgrade     && echo \"deb http://apt.postgresql.org/pub/repos/apt/ $(lsb_release -cs)-pgdg main\" > /etc/apt/sources.list.d/pgdg.list     && cat /etc/apt/sources.list.d/pgdg.list     && curl --silent https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add -     && apt-get update     && apt-get install --no-install-recommends -y          postgresql-client-11          postgresql-client-10          postgresql-client-9.6         postgresql-client-9.5     && apt-get clean     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:7c14bff892240293799ea93605e4a9e32ba45ef34f1c069d59204955ad55d91e" [label="local://context" shape="ellipse"];
  "sha256:31e68f55005985dc03371769341c30e7b210ee212f1b236c187b9dad5c1fc216" [label="copy{src=/dump.sh, dest=/}" shape="note"];
  "sha256:cd269b2305ab4acd2112975bc11a6af0d55600cb92089c2b8cad99d66c6a7cbd" [label="sha256:cd269b2305ab4acd2112975bc11a6af0d55600cb92089c2b8cad99d66c6a7cbd" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:8385571b48b7ffa646cfee501da69b75dc25eeb18dbf01ef256d84bac801ffa9" [label=""];
  "sha256:8385571b48b7ffa646cfee501da69b75dc25eeb18dbf01ef256d84bac801ffa9" -> "sha256:31e68f55005985dc03371769341c30e7b210ee212f1b236c187b9dad5c1fc216" [label=""];
  "sha256:7c14bff892240293799ea93605e4a9e32ba45ef34f1c069d59204955ad55d91e" -> "sha256:31e68f55005985dc03371769341c30e7b210ee212f1b236c187b9dad5c1fc216" [label=""];
  "sha256:31e68f55005985dc03371769341c30e7b210ee212f1b236c187b9dad5c1fc216" -> "sha256:cd269b2305ab4acd2112975bc11a6af0d55600cb92089c2b8cad99d66c6a7cbd" [label=""];
}

