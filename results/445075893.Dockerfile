[app/sources/445075893.Dockerfile]
digraph {
  "sha256:aeb34ead0c1318d430000e93f964b332a5b6f9eca43198ed73d1950f9cc29097" [label="local://context" shape="ellipse"];
  "sha256:92db9ed74c22f31ef48f8840cbbe07cccec4bced5268c8577fc142bc625b3a12" [label="docker-image://docker.io/library/ubuntu:bionic-20181204" shape="ellipse"];
  "sha256:5b23c7d95b303c04611905c1e5b3ef2f699f228bcc3e81506e350599408ccf51" [label="/bin/sh -c apt-get update  && DEBIAN_FRONTEND=noninteractive apt-get install -y wget gnupg  && wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add -  && echo 'deb http://apt.postgresql.org/pub/repos/apt/ bionic-pgdg main' >> /etc/apt/sources.list" shape="box"];
  "sha256:cd6891f6e0e7bf85929c5e4c5693c4ac6ad572d140aff646f3b8bbf4f594644d" [label="copy{src=/etc/apt/trusted.gpg, dest=/etc/apt/trusted.gpg}" shape="note"];
  "sha256:2b3fc6f95a7b367270a1efed9d613e3dd22c2f7c5186abae462369e4a8ac93df" [label="copy{src=/etc/apt/sources.list, dest=/etc/apt/sources.list}" shape="note"];
  "sha256:a5a17baabdafc18bea2ee1e0769b505243d19567ad265024e498a39735f81f52" [label="/bin/sh -c apt-get update  && DEBIAN_FRONTEND=noninteractive apt-get install -y acl sudo       postgresql-${PG_VERSION} postgresql-client-${PG_VERSION} postgresql-contrib-${PG_VERSION}  && ln -sf ${PG_DATADIR}/postgresql.conf /etc/postgresql/${PG_VERSION}/main/postgresql.conf  && ln -sf ${PG_DATADIR}/pg_hba.conf /etc/postgresql/${PG_VERSION}/main/pg_hba.conf  && ln -sf ${PG_DATADIR}/pg_ident.conf /etc/postgresql/${PG_VERSION}/main/pg_ident.conf  && rm -rf ${PG_HOME}  && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:5ba25bd28616acb6361b83f70a79a89599e5814bb7f5bab48fa7b68cd2fcd53a" [label="copy{src=/runtime, dest=/etc/docker-postgresql/}" shape="note"];
  "sha256:d6798a8c9288d5d90064af278ef6b44b543f47c76a995488e0ff6a61d279267b" [label="copy{src=/entrypoint.sh, dest=/sbin/entrypoint.sh}" shape="note"];
  "sha256:eda1919d3516dcaba7b1a8be2d90cabd79e8b670216d3a2020535bdb498446c8" [label="/bin/sh -c chmod 755 /sbin/entrypoint.sh" shape="box"];
  "sha256:8e70d6a00faa9583efc5e190e6787ced689deb213724f9f113836564412e0c82" [label="mkdir{path=/var/lib/postgresql}" shape="note"];
  "sha256:c683758ab47c79ecebb807160c9b3681e89cc1c7f8a94519bc9975f2a5ede2e4" [label="sha256:c683758ab47c79ecebb807160c9b3681e89cc1c7f8a94519bc9975f2a5ede2e4" shape="plaintext"];
  "sha256:92db9ed74c22f31ef48f8840cbbe07cccec4bced5268c8577fc142bc625b3a12" -> "sha256:5b23c7d95b303c04611905c1e5b3ef2f699f228bcc3e81506e350599408ccf51" [label=""];
  "sha256:92db9ed74c22f31ef48f8840cbbe07cccec4bced5268c8577fc142bc625b3a12" -> "sha256:cd6891f6e0e7bf85929c5e4c5693c4ac6ad572d140aff646f3b8bbf4f594644d" [label=""];
  "sha256:5b23c7d95b303c04611905c1e5b3ef2f699f228bcc3e81506e350599408ccf51" -> "sha256:cd6891f6e0e7bf85929c5e4c5693c4ac6ad572d140aff646f3b8bbf4f594644d" [label=""];
  "sha256:cd6891f6e0e7bf85929c5e4c5693c4ac6ad572d140aff646f3b8bbf4f594644d" -> "sha256:2b3fc6f95a7b367270a1efed9d613e3dd22c2f7c5186abae462369e4a8ac93df" [label=""];
  "sha256:5b23c7d95b303c04611905c1e5b3ef2f699f228bcc3e81506e350599408ccf51" -> "sha256:2b3fc6f95a7b367270a1efed9d613e3dd22c2f7c5186abae462369e4a8ac93df" [label=""];
  "sha256:2b3fc6f95a7b367270a1efed9d613e3dd22c2f7c5186abae462369e4a8ac93df" -> "sha256:a5a17baabdafc18bea2ee1e0769b505243d19567ad265024e498a39735f81f52" [label=""];
  "sha256:a5a17baabdafc18bea2ee1e0769b505243d19567ad265024e498a39735f81f52" -> "sha256:5ba25bd28616acb6361b83f70a79a89599e5814bb7f5bab48fa7b68cd2fcd53a" [label=""];
  "sha256:aeb34ead0c1318d430000e93f964b332a5b6f9eca43198ed73d1950f9cc29097" -> "sha256:5ba25bd28616acb6361b83f70a79a89599e5814bb7f5bab48fa7b68cd2fcd53a" [label=""];
  "sha256:5ba25bd28616acb6361b83f70a79a89599e5814bb7f5bab48fa7b68cd2fcd53a" -> "sha256:d6798a8c9288d5d90064af278ef6b44b543f47c76a995488e0ff6a61d279267b" [label=""];
  "sha256:aeb34ead0c1318d430000e93f964b332a5b6f9eca43198ed73d1950f9cc29097" -> "sha256:d6798a8c9288d5d90064af278ef6b44b543f47c76a995488e0ff6a61d279267b" [label=""];
  "sha256:d6798a8c9288d5d90064af278ef6b44b543f47c76a995488e0ff6a61d279267b" -> "sha256:eda1919d3516dcaba7b1a8be2d90cabd79e8b670216d3a2020535bdb498446c8" [label=""];
  "sha256:eda1919d3516dcaba7b1a8be2d90cabd79e8b670216d3a2020535bdb498446c8" -> "sha256:8e70d6a00faa9583efc5e190e6787ced689deb213724f9f113836564412e0c82" [label=""];
  "sha256:8e70d6a00faa9583efc5e190e6787ced689deb213724f9f113836564412e0c82" -> "sha256:c683758ab47c79ecebb807160c9b3681e89cc1c7f8a94519bc9975f2a5ede2e4" [label=""];
}

