[app/sources/248153157.Dockerfile]
digraph {
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" [label="docker-image://docker.io/library/alpine:3.9" shape="ellipse"];
  "sha256:9bde703ced831411a9449cd108c9f333367078136a52a19e0e2494c0f6c08ef2" [label="/bin/sh -c set -eux &&     addgroup zabbix &&     adduser -S             -D -G zabbix             -h /var/lib/zabbix/             -H         zabbix &&     mkdir -p /etc/zabbix &&     mkdir -p /etc/zabbix/web &&     chown --quiet -R zabbix:root /etc/zabbix &&     apk update &&     apk add ${APK_FLAGS_PERSISTENT}             apache2             bash             curl             php7-apache2             php7-bcmath             php7-ctype             php7-gd             php7-gettext             php7-json             php7-ldap             php7-pgsql             php7-mbstring             php7-session             php7-simplexml             php7-sockets             php7-xmlreader             php7-xmlwriter             postgresql-client &&     apk add ${APK_FLAGS_PERSISTENT} --no-scripts apache2-ssl &&     rm -rf /var/cache/apk/*" shape="box"];
  "sha256:d318db9dbabd2e1331d64c5fc8fb92901f4113bcc7c8776bd40feddadd803b87" [label="/bin/sh -c set -eux &&     apk add ${APK_FLAGS_DEV} --virtual build-dependencies             gettext             git &&     cd /usr/share/ &&     git clone ${ZBX_SOURCES} --branch ${ZBX_VERSION} --depth 1 --single-branch zabbix-${ZBX_VERSION} &&     mkdir /usr/share/zabbix/ &&     cp -R /usr/share/zabbix-${ZBX_VERSION}/frontends/php/* /usr/share/zabbix/ &&     rm -rf /usr/share/zabbix-${ZBX_VERSION}/ &&     cd /usr/share/zabbix/ &&     rm -f conf/zabbix.conf.php &&     rm -rf tests &&     ./locale/make_mo.sh &&     chown --quiet -R apache:apache /usr/share/zabbix/ &&     apk del ${APK_FLAGS_COMMON} --purge             build-dependencies &&     rm -rf /var/cache/apk/*" shape="box"];
  "sha256:b33725ee254f7d9bdae98794b4209c7079931981b70c61d7692df1d47668544a" [label="mkdir{path=/usr/share/zabbix}" shape="note"];
  "sha256:01ae05d0a22cfc2e10951595e884720bb2c830f17ed9ccacd7147bafb278d7fc" [label="local://context" shape="ellipse"];
  "sha256:b6518515152856890a2519a62219adaadd73c0da12d4eec2a5f7cf42ba834904" [label="copy{src=/conf/etc/zabbix/apache.conf, dest=/etc/zabbix/}" shape="note"];
  "sha256:3acaef73580ca8d55bc8f64088986898efeebded30ad4fe5ed18aa4461da4f3e" [label="copy{src=/conf/etc/zabbix/apache_ssl.conf, dest=/etc/zabbix/}" shape="note"];
  "sha256:e84330c2c147ecbcaaeff5106080fe8fa18e233e9b77a4ae8b81fd290b1fecdb" [label="copy{src=/conf/etc/zabbix/web/zabbix.conf.php, dest=/etc/zabbix/web/}" shape="note"];
  "sha256:4db888e5255e4d3abd4b60da71db9a2a6fb07b9d0f7a833d50e8105f88eb222e" [label="copy{src=/conf/etc/php7/conf.d/99-zabbix.ini, dest=/etc/php7/conf.d/}" shape="note"];
  "sha256:fc8fffc819dab1b91124969cffcf3e3a63cf0d19030c6c9387e96e83fb14e37d" [label="copy{src=/docker-entrypoint.sh, dest=/usr/bin/}" shape="note"];
  "sha256:efb2c2d41d4c0bf9ec221563a75047043149bd3e22b27b526c5c23f336b4a022" [label="sha256:efb2c2d41d4c0bf9ec221563a75047043149bd3e22b27b526c5c23f336b4a022" shape="plaintext"];
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" -> "sha256:9bde703ced831411a9449cd108c9f333367078136a52a19e0e2494c0f6c08ef2" [label=""];
  "sha256:9bde703ced831411a9449cd108c9f333367078136a52a19e0e2494c0f6c08ef2" -> "sha256:d318db9dbabd2e1331d64c5fc8fb92901f4113bcc7c8776bd40feddadd803b87" [label=""];
  "sha256:d318db9dbabd2e1331d64c5fc8fb92901f4113bcc7c8776bd40feddadd803b87" -> "sha256:b33725ee254f7d9bdae98794b4209c7079931981b70c61d7692df1d47668544a" [label=""];
  "sha256:b33725ee254f7d9bdae98794b4209c7079931981b70c61d7692df1d47668544a" -> "sha256:b6518515152856890a2519a62219adaadd73c0da12d4eec2a5f7cf42ba834904" [label=""];
  "sha256:01ae05d0a22cfc2e10951595e884720bb2c830f17ed9ccacd7147bafb278d7fc" -> "sha256:b6518515152856890a2519a62219adaadd73c0da12d4eec2a5f7cf42ba834904" [label=""];
  "sha256:b6518515152856890a2519a62219adaadd73c0da12d4eec2a5f7cf42ba834904" -> "sha256:3acaef73580ca8d55bc8f64088986898efeebded30ad4fe5ed18aa4461da4f3e" [label=""];
  "sha256:01ae05d0a22cfc2e10951595e884720bb2c830f17ed9ccacd7147bafb278d7fc" -> "sha256:3acaef73580ca8d55bc8f64088986898efeebded30ad4fe5ed18aa4461da4f3e" [label=""];
  "sha256:3acaef73580ca8d55bc8f64088986898efeebded30ad4fe5ed18aa4461da4f3e" -> "sha256:e84330c2c147ecbcaaeff5106080fe8fa18e233e9b77a4ae8b81fd290b1fecdb" [label=""];
  "sha256:01ae05d0a22cfc2e10951595e884720bb2c830f17ed9ccacd7147bafb278d7fc" -> "sha256:e84330c2c147ecbcaaeff5106080fe8fa18e233e9b77a4ae8b81fd290b1fecdb" [label=""];
  "sha256:e84330c2c147ecbcaaeff5106080fe8fa18e233e9b77a4ae8b81fd290b1fecdb" -> "sha256:4db888e5255e4d3abd4b60da71db9a2a6fb07b9d0f7a833d50e8105f88eb222e" [label=""];
  "sha256:01ae05d0a22cfc2e10951595e884720bb2c830f17ed9ccacd7147bafb278d7fc" -> "sha256:4db888e5255e4d3abd4b60da71db9a2a6fb07b9d0f7a833d50e8105f88eb222e" [label=""];
  "sha256:4db888e5255e4d3abd4b60da71db9a2a6fb07b9d0f7a833d50e8105f88eb222e" -> "sha256:fc8fffc819dab1b91124969cffcf3e3a63cf0d19030c6c9387e96e83fb14e37d" [label=""];
  "sha256:01ae05d0a22cfc2e10951595e884720bb2c830f17ed9ccacd7147bafb278d7fc" -> "sha256:fc8fffc819dab1b91124969cffcf3e3a63cf0d19030c6c9387e96e83fb14e37d" [label=""];
  "sha256:fc8fffc819dab1b91124969cffcf3e3a63cf0d19030c6c9387e96e83fb14e37d" -> "sha256:efb2c2d41d4c0bf9ec221563a75047043149bd3e22b27b526c5c23f336b4a022" [label=""];
}

