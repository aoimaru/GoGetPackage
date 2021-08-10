[app/sources/202214223.Dockerfile]
digraph {
  "sha256:7febb222c4a10f3e766f79962e36c31461fc205939763dc68f21b61ecf69dac6" [label="docker-image://docker.io/library/photon:2.0" shape="ellipse"];
  "sha256:c737b9f42261ea122b46db8f110457152710e78c2f15e4eb82805889bcff9136" [label="/bin/sh -c tdnf distro-sync -y     && tdnf remove -y toybox     && tdnf install -y sed shadow procps-ng gawk gzip sudo net-tools glibc-i18n >> /dev/null    && tdnf install -y python2 python2-devel python-pip gcc PyYAML python-jinja2     linux-api-headers glibc-devel binutils zlib-devel openssl-devel postgresql python-psycopg2 >> /dev/null     && pip install alembic     && mkdir /docker-entrypoint-initdb.d /docker-entrypoint-updatedb.d     && chmod 777 /docker-entrypoint-initdb.d /docker-entrypoint-updatedb.d     && mkdir -p /harbor-migration     && touch /etc/localtime.bak     && groupadd -r postgres --gid=999     && useradd -r -g postgres --uid=999 postgres     && mkdir -p /run/postgresql     && chown -R postgres:postgres /run/postgresql     && chmod 2777 /run/postgresql     && mkdir -p \"$PGDATA\" && chown -R postgres:postgres \"$PGDATA\" && chmod 777 \"$PGDATA\"     && sed -i \"s|#listen_addresses = 'localhost'.*|listen_addresses = '*'|g\" /usr/share/postgresql/postgresql.conf.sample     && sed -i \"s|#unix_socket_directories = '/tmp'.*|unix_socket_directories = '/run/postgresql'|g\" /usr/share/postgresql/postgresql.conf.sample     && touch /usr/share/locale/locale.alias     && locale-gen.sh en_US.UTF-8     && tdnf clean all" shape="box"];
  "sha256:2010314a723eee93462391bd6253a2715ad473727edd77b80a2cce39ca6f0a35" [label="mkdir{path=/harbor-migration}" shape="note"];
  "sha256:afc5bddeb1d7aa843206af8d205bec1b2bfdf010a1585ac22b259c09455918ff" [label="local://context" shape="ellipse"];
  "sha256:12703a05154ebef1ed0c738446bbca6a0f70984454cfc3345d0f4801501025b7" [label="copy{src=/, dest=/harbor-migration/}" shape="note"];
  "sha256:0a3bbc06691e36c559d6a3c5fa147c7fc7636ed93316b721bed942a8b973a106" [label="sha256:0a3bbc06691e36c559d6a3c5fa147c7fc7636ed93316b721bed942a8b973a106" shape="plaintext"];
  "sha256:7febb222c4a10f3e766f79962e36c31461fc205939763dc68f21b61ecf69dac6" -> "sha256:c737b9f42261ea122b46db8f110457152710e78c2f15e4eb82805889bcff9136" [label=""];
  "sha256:c737b9f42261ea122b46db8f110457152710e78c2f15e4eb82805889bcff9136" -> "sha256:2010314a723eee93462391bd6253a2715ad473727edd77b80a2cce39ca6f0a35" [label=""];
  "sha256:2010314a723eee93462391bd6253a2715ad473727edd77b80a2cce39ca6f0a35" -> "sha256:12703a05154ebef1ed0c738446bbca6a0f70984454cfc3345d0f4801501025b7" [label=""];
  "sha256:afc5bddeb1d7aa843206af8d205bec1b2bfdf010a1585ac22b259c09455918ff" -> "sha256:12703a05154ebef1ed0c738446bbca6a0f70984454cfc3345d0f4801501025b7" [label=""];
  "sha256:12703a05154ebef1ed0c738446bbca6a0f70984454cfc3345d0f4801501025b7" -> "sha256:0a3bbc06691e36c559d6a3c5fa147c7fc7636ed93316b721bed942a8b973a106" [label=""];
}

