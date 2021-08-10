[app/sources/282282511.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:12a9049e409cbaae9fe1d04eac148ca45efc08eac4a25625b23ad936a970be34" [label="/bin/sh -c sed -i 's/archive.ubuntu.com/mirrors.aliyun.com/' /etc/apt/sources.list &&     sed -i 's/security.ubuntu.com/mirrors.aliyun.com/' /etc/apt/sources.list" shape="box"];
  "sha256:5a3237609708595307765910ee6c95fd0cb45cc7f212f75e7aa37465d10f3b39" [label="/bin/sh -c apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/*     && localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8" shape="box"];
  "sha256:428525e988471b46e88d0c1507b377fbfbae1bf02d0388f52922b2ed957ca09a" [label="/bin/sh -c echo \"${TIMEZONE}\" > /etc/timezone     && echo \"$LANG UTF-8\" > /etc/locale.gen     && apt-get update -q     && DEBIAN_FRONTEND=noninteractive apt-get install -yq apt-utils dialog tzdata     && ln -sf /usr/share/zoneinfo/${TIMEZONE} /etc/localtime     && update-locale LANG=$LANG     && locale-gen $LANG     && DEBIAN_FRONTEND=noninteractive dpkg-reconfigure locales" shape="box"];
  "sha256:c6f66b901707c1e6e7d534ab8fdc54a39dc9ab83e91437ac8559adbaa6f75d8b" [label="/bin/sh -c apt-get dist-upgrade -y" shape="box"];
  "sha256:00c97c63ec5264f0685f9d7d07f2dba1e24b7060581b5df98d2125bd4c9bc61d" [label="/bin/sh -c apt-get update && apt-get install -y wget php-ldap     --no-install-recommends && rm -r /var/lib/apt/lists/*" shape="box"];
  "sha256:e415250ed98d1e79bd0aaa9722f2d8080c1e56db62efea888daf55f5fdbf90e5" [label="/bin/sh -c wget ${ZENTAO_URL} -O zbox.tar.gz && mv zbox.tar.gz /tmp" shape="box"];
  "sha256:ecdd3c3dc1676679d990dc29693465a9015fd96c7a45ccc7f5161fe49f14ab0f" [label="local://context" shape="ellipse"];
  "sha256:2c24e6a7ea39ab50544ba40cac8d0e138db92eabca8cb538d47ac685cdad373d" [label="copy{src=/docker-entrypoint, dest=/usr/local/bin/docker-entrypoint}" shape="note"];
  "sha256:9913f617785689e7fb79d79c36fb09a6b3fc6e9f0ae1fafeef9e55c5fb8eb15e" [label="/bin/sh -c chmod +x           /usr/local/bin/docker-entrypoint" shape="box"];
  "sha256:bb377bbfcda8cf9351725adad04470210c47073dbc76effefe48af18f38ddf65" [label="sha256:bb377bbfcda8cf9351725adad04470210c47073dbc76effefe48af18f38ddf65" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:12a9049e409cbaae9fe1d04eac148ca45efc08eac4a25625b23ad936a970be34" [label=""];
  "sha256:12a9049e409cbaae9fe1d04eac148ca45efc08eac4a25625b23ad936a970be34" -> "sha256:5a3237609708595307765910ee6c95fd0cb45cc7f212f75e7aa37465d10f3b39" [label=""];
  "sha256:5a3237609708595307765910ee6c95fd0cb45cc7f212f75e7aa37465d10f3b39" -> "sha256:428525e988471b46e88d0c1507b377fbfbae1bf02d0388f52922b2ed957ca09a" [label=""];
  "sha256:428525e988471b46e88d0c1507b377fbfbae1bf02d0388f52922b2ed957ca09a" -> "sha256:c6f66b901707c1e6e7d534ab8fdc54a39dc9ab83e91437ac8559adbaa6f75d8b" [label=""];
  "sha256:c6f66b901707c1e6e7d534ab8fdc54a39dc9ab83e91437ac8559adbaa6f75d8b" -> "sha256:00c97c63ec5264f0685f9d7d07f2dba1e24b7060581b5df98d2125bd4c9bc61d" [label=""];
  "sha256:00c97c63ec5264f0685f9d7d07f2dba1e24b7060581b5df98d2125bd4c9bc61d" -> "sha256:e415250ed98d1e79bd0aaa9722f2d8080c1e56db62efea888daf55f5fdbf90e5" [label=""];
  "sha256:e415250ed98d1e79bd0aaa9722f2d8080c1e56db62efea888daf55f5fdbf90e5" -> "sha256:2c24e6a7ea39ab50544ba40cac8d0e138db92eabca8cb538d47ac685cdad373d" [label=""];
  "sha256:ecdd3c3dc1676679d990dc29693465a9015fd96c7a45ccc7f5161fe49f14ab0f" -> "sha256:2c24e6a7ea39ab50544ba40cac8d0e138db92eabca8cb538d47ac685cdad373d" [label=""];
  "sha256:2c24e6a7ea39ab50544ba40cac8d0e138db92eabca8cb538d47ac685cdad373d" -> "sha256:9913f617785689e7fb79d79c36fb09a6b3fc6e9f0ae1fafeef9e55c5fb8eb15e" [label=""];
  "sha256:9913f617785689e7fb79d79c36fb09a6b3fc6e9f0ae1fafeef9e55c5fb8eb15e" -> "sha256:bb377bbfcda8cf9351725adad04470210c47073dbc76effefe48af18f38ddf65" [label=""];
}

