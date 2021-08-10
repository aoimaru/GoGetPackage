[app/sources/256069996.Dockerfile]
digraph {
  "sha256:20fd0f57032ffdcc3a8c8d0a0504b02ee2a2a7f278ce084851b21c0fe75408b7" [label="docker-image://docker.io/library/mariadb:10.3" shape="ellipse"];
  "sha256:37a9460acd7117f6f0055465d414d5f4396e831f987266451481bf53714e546b" [label="/bin/sh -c set -ex && apt-get update && apt-get -y install gettext-base && apt-get clean && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:c26bb60983f54aeb8404feb40693d4bcef75f758f091568a309554da5952a1c9" [label="local://context" shape="ellipse"];
  "sha256:ec4c31f14dc494c4649644c050a7adcab5a746d429e2740dd30f3ec1ed43d1d9" [label="copy{src=/initdb.d/*, dest=/docker-entrypoint-initdb.d/}" shape="note"];
  "sha256:758427330462e90abc1934462142420c86fd468376dd371b62d1c3b94292bac5" [label="/bin/sh -c chown -R mysql:mysql /docker-entrypoint-initdb.d/" shape="box"];
  "sha256:151bd5e3ca1bf0daf517e83096b9946715a9d48fb66c3b40c87a010ce6628319" [label="copy{src=/51-server.cnf, dest=/etc/mysql/conf.d/51-server.cnf}" shape="note"];
  "sha256:d48a5c7a61b2ba016c540a0e995f12cfd89231c3e6a753227566f6bface7855c" [label="sha256:d48a5c7a61b2ba016c540a0e995f12cfd89231c3e6a753227566f6bface7855c" shape="plaintext"];
  "sha256:20fd0f57032ffdcc3a8c8d0a0504b02ee2a2a7f278ce084851b21c0fe75408b7" -> "sha256:37a9460acd7117f6f0055465d414d5f4396e831f987266451481bf53714e546b" [label=""];
  "sha256:37a9460acd7117f6f0055465d414d5f4396e831f987266451481bf53714e546b" -> "sha256:ec4c31f14dc494c4649644c050a7adcab5a746d429e2740dd30f3ec1ed43d1d9" [label=""];
  "sha256:c26bb60983f54aeb8404feb40693d4bcef75f758f091568a309554da5952a1c9" -> "sha256:ec4c31f14dc494c4649644c050a7adcab5a746d429e2740dd30f3ec1ed43d1d9" [label=""];
  "sha256:ec4c31f14dc494c4649644c050a7adcab5a746d429e2740dd30f3ec1ed43d1d9" -> "sha256:758427330462e90abc1934462142420c86fd468376dd371b62d1c3b94292bac5" [label=""];
  "sha256:758427330462e90abc1934462142420c86fd468376dd371b62d1c3b94292bac5" -> "sha256:151bd5e3ca1bf0daf517e83096b9946715a9d48fb66c3b40c87a010ce6628319" [label=""];
  "sha256:c26bb60983f54aeb8404feb40693d4bcef75f758f091568a309554da5952a1c9" -> "sha256:151bd5e3ca1bf0daf517e83096b9946715a9d48fb66c3b40c87a010ce6628319" [label=""];
  "sha256:151bd5e3ca1bf0daf517e83096b9946715a9d48fb66c3b40c87a010ce6628319" -> "sha256:d48a5c7a61b2ba016c540a0e995f12cfd89231c3e6a753227566f6bface7855c" [label=""];
}

