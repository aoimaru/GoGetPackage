[app/sources/157807599.Dockerfile]
digraph {
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" [label="docker-image://docker.io/library/debian:latest" shape="ellipse"];
  "sha256:3adcbd24290128f04def60a6666e67baec2991c18bc39a19abafbeb057b3a2da" [label="/bin/sh -c apt-get update   && apt-get install -y subversion build-essential libncurses5-dev zlib1g-dev   gawk git ccache gettext libssl-dev xsltproc zip wget mercurial gettext unzip   zlib1g-dev file python intltool libglib2.0-dev libnl-3-dev libnl-genl-3-dev   && useradd -m ${RUN_USER}   && mkdir -p /builddir/save" shape="box"];
  "sha256:8637b7cfea223bcb9701278049c01f4aca7f9a611618f99923b8b1d1a356154e" [label="local://context" shape="ellipse"];
  "sha256:308a1c0175948b8f7b6a728cbd32fc9cdaaa7e1acf844b93867004f5a77451ff" [label="copy{src=/files/build.sh, dest=/builddir}" shape="note"];
  "sha256:c1b0741cbc6cf1ff8d5f43ec55c2b12fec7cfac813d8ddf6ebff76e08d5136d7" [label="/bin/sh -c chown -R ${RUN_USER}:${RUN_GROUP} /builddir   && apt-get autoclean && apt-get --purge -y autoremove   && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:387e3d333fdd7f33b796868d61122b799726253a20e5bd4fe6560a597281dbb9" [label="mkdir{path=/builddir}" shape="note"];
  "sha256:15b17fb002821f329b5a38783a5ab6949494c080c3af261816d420b2327c3c61" [label="sha256:15b17fb002821f329b5a38783a5ab6949494c080c3af261816d420b2327c3c61" shape="plaintext"];
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" -> "sha256:3adcbd24290128f04def60a6666e67baec2991c18bc39a19abafbeb057b3a2da" [label=""];
  "sha256:3adcbd24290128f04def60a6666e67baec2991c18bc39a19abafbeb057b3a2da" -> "sha256:308a1c0175948b8f7b6a728cbd32fc9cdaaa7e1acf844b93867004f5a77451ff" [label=""];
  "sha256:8637b7cfea223bcb9701278049c01f4aca7f9a611618f99923b8b1d1a356154e" -> "sha256:308a1c0175948b8f7b6a728cbd32fc9cdaaa7e1acf844b93867004f5a77451ff" [label=""];
  "sha256:308a1c0175948b8f7b6a728cbd32fc9cdaaa7e1acf844b93867004f5a77451ff" -> "sha256:c1b0741cbc6cf1ff8d5f43ec55c2b12fec7cfac813d8ddf6ebff76e08d5136d7" [label=""];
  "sha256:c1b0741cbc6cf1ff8d5f43ec55c2b12fec7cfac813d8ddf6ebff76e08d5136d7" -> "sha256:387e3d333fdd7f33b796868d61122b799726253a20e5bd4fe6560a597281dbb9" [label=""];
  "sha256:387e3d333fdd7f33b796868d61122b799726253a20e5bd4fe6560a597281dbb9" -> "sha256:15b17fb002821f329b5a38783a5ab6949494c080c3af261816d420b2327c3c61" [label=""];
}

