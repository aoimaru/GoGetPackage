[app/sources/219497989.Dockerfile]
digraph {
  "sha256:5d8e2aec31158c2705cd9d29bc6c55e0a7c55e3bf7397c70ad85278ce1d08a83" [label="docker-image://docker.io/phusion/baseimage:0.9.16" shape="ellipse"];
  "sha256:a90c7274e5e6aa487a1a1d0085a0904225f391da63aaf1418ce51b22594dcb79" [label="local://context" shape="ellipse"];
  "sha256:94a2b091fcfec8590b2a059bc0716bdec5a5c0f68ee1df4368cfab445be185b6" [label="copy{src=/src, dest=/root/}" shape="note"];
  "sha256:b221267a5792ad847aa6dbc13e7049acf698a5be9f21f8d3f8a6bc53ef467dd8" [label="/bin/sh -c mkdir -p /etc/service/apache && mv /root/apache.sh /etc/service/apache/run && mv /root/firstrun.sh /etc/my_init.d/firstrun.sh && chmod +x /etc/service/apache/run && chmod +x /etc/my_init.d/firstrun.sh && apt-get update && apt-get install -y wget apache2 php5 php5-sqlite && a2enmod php5 && a2enmod rewrite && sed -i \"s/short_open_tag = Off/short_open_tag = On/\" /etc/php5/apache2/php.ini && sed -i \"s/error_reporting = .*$/error_reporting = E_ERROR | E_WARNING | E_PARSE/\" /etc/php5/apache2/php.ini && mv /root/apache-config.conf /etc/apache2/sites-enabled/000-default.conf" shape="box"];
  "sha256:5993e639b6d30c79bdc99305be5897efc11b9d505bac3103a90b22d79aad21fb" [label="sha256:5993e639b6d30c79bdc99305be5897efc11b9d505bac3103a90b22d79aad21fb" shape="plaintext"];
  "sha256:5d8e2aec31158c2705cd9d29bc6c55e0a7c55e3bf7397c70ad85278ce1d08a83" -> "sha256:94a2b091fcfec8590b2a059bc0716bdec5a5c0f68ee1df4368cfab445be185b6" [label=""];
  "sha256:a90c7274e5e6aa487a1a1d0085a0904225f391da63aaf1418ce51b22594dcb79" -> "sha256:94a2b091fcfec8590b2a059bc0716bdec5a5c0f68ee1df4368cfab445be185b6" [label=""];
  "sha256:94a2b091fcfec8590b2a059bc0716bdec5a5c0f68ee1df4368cfab445be185b6" -> "sha256:b221267a5792ad847aa6dbc13e7049acf698a5be9f21f8d3f8a6bc53ef467dd8" [label=""];
  "sha256:b221267a5792ad847aa6dbc13e7049acf698a5be9f21f8d3f8a6bc53ef467dd8" -> "sha256:5993e639b6d30c79bdc99305be5897efc11b9d505bac3103a90b22d79aad21fb" [label=""];
}

