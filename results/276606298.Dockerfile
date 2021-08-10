[app/sources/276606298.Dockerfile]
digraph {
  "sha256:82b0ab03c43981bd408deb7b1ca062dc5dfd19197f06be715ff118e626d39630" [label="docker-image://docker.io/library/alpine:3.5" shape="ellipse"];
  "sha256:a9f0be3e7ea87a40c80f34a1c533a5ace92e06d3b59cc57f8b45e75f8ebce1ff" [label="/bin/sh -c apk --no-cache upgrade" shape="box"];
  "sha256:620154971d9e215a08d356bab0fc584e2948def7555ae77f4c907158ee502310" [label="/bin/sh -c apk add --no-cache     apache2 git php7 php7-ctype php7-session php7-apache2 php7-xml     php7-json php7-pdo php7-pdo_mysql php7-curl php7-ldap php7-mcrypt php7-iconv     php7-xml php7-xsl php7-gd php7-zip php7-soap php7-mbstring php7-zlib     php7-mysqli php7-sockets php7-xmlreader perl mysql-client tar curl imagemagick-dev     python openssl git libffi-dev py-pip python-dev build-base openssl-dev dcron &&     apk add apache2-ssl --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/v3.6/main" shape="box"];
  "sha256:bfee60c38f1f35c97c0b985f075daf7d91d4e15d0fd31a4b3eb0d5e647ec89eb" [label="/bin/sh -c git clone https://github.com/openemr/openemr.git --branch rel-500 --depth 1     && rm -rf openemr/.git     && chmod 666 openemr/sites/default/sqlconf.php     && chmod 666 openemr/interface/modules/zend_modules/config/application.config.php     && chown -R apache openemr/     && mv openemr /var/www/localhost/htdocs/     && git clone https://github.com/letsencrypt/letsencrypt /opt/certbot     && pip install --upgrade pip     && pip install -e /opt/certbot/acme -e /opt/certbot     && mkdir -p /etc/ssl/certs /etc/ssl/private     && apk del --no-cache git build-base libffi-dev python-dev" shape="box"];
  "sha256:0d8dfc5096cc8fc44f4a60c6564a73eb02499c4f51a0746d4871ebe38a2c8be8" [label="mkdir{path=/var/www/localhost/htdocs/openemr}" shape="note"];
  "sha256:44a1579bdacb659f2f7a82badbb486e908020861f6d8b0dd431f21298898d59f" [label="local://context" shape="ellipse"];
  "sha256:79316ca12aadfb2ac00e7ea6f623cf03692490391fae669dac640046dbc65d27" [label="copy{src=/php.ini, dest=/etc/php7/php.ini}" shape="note"];
  "sha256:6d532e6c9a7e1b87b1cfca30f220b05accfe3b09e8ce8c72ea51c76652a6492f" [label="copy{src=/openemr.conf, dest=/etc/apache2/conf.d/}" shape="note"];
  "sha256:9622607b0f7400622c7bdea39ea62cce114c18008ea3a50a1261a0d42356e56e" [label="copy{src=/run_openemr.sh, dest=/var/www/localhost/htdocs/openemr/},copy{src=/autoconfig.sh, dest=/var/www/localhost/htdocs/openemr/},copy{src=/auto_configure.php, dest=/var/www/localhost/htdocs/openemr/}" shape="note"];
  "sha256:b52ea4e59a5b6704f31609792e36430ecaee9f2b70fbd508ad7d4c7b1e8931da" [label="copy{src=/utilities/unlock_admin.php, dest=/root/},copy{src=/utilities/unlock_admin.sh, dest=/root/}" shape="note"];
  "sha256:e8dc5239223a3542d0dcbc60447ce0b86be60c349667bcf61aa0f571f52e8aed" [label="/bin/sh -c chmod 500 run_openemr.sh autoconfig.sh /root/unlock_admin.sh     && chmod 000 auto_configure.php /root/unlock_admin.php     && ln -s /usr/bin/php7 /usr/bin/php" shape="box"];
  "sha256:735cced60d70253c8c9c1bc601213cdd3795f7ddaea2788cd2b946394b45a64d" [label="/bin/sh -c mkdir -p /run/apache2" shape="box"];
  "sha256:019038afb678060c7026fb79b0e66bf1a1a19f5ac5b47da0b4865a44775b71a6" [label="sha256:019038afb678060c7026fb79b0e66bf1a1a19f5ac5b47da0b4865a44775b71a6" shape="plaintext"];
  "sha256:82b0ab03c43981bd408deb7b1ca062dc5dfd19197f06be715ff118e626d39630" -> "sha256:a9f0be3e7ea87a40c80f34a1c533a5ace92e06d3b59cc57f8b45e75f8ebce1ff" [label=""];
  "sha256:a9f0be3e7ea87a40c80f34a1c533a5ace92e06d3b59cc57f8b45e75f8ebce1ff" -> "sha256:620154971d9e215a08d356bab0fc584e2948def7555ae77f4c907158ee502310" [label=""];
  "sha256:620154971d9e215a08d356bab0fc584e2948def7555ae77f4c907158ee502310" -> "sha256:bfee60c38f1f35c97c0b985f075daf7d91d4e15d0fd31a4b3eb0d5e647ec89eb" [label=""];
  "sha256:bfee60c38f1f35c97c0b985f075daf7d91d4e15d0fd31a4b3eb0d5e647ec89eb" -> "sha256:0d8dfc5096cc8fc44f4a60c6564a73eb02499c4f51a0746d4871ebe38a2c8be8" [label=""];
  "sha256:0d8dfc5096cc8fc44f4a60c6564a73eb02499c4f51a0746d4871ebe38a2c8be8" -> "sha256:79316ca12aadfb2ac00e7ea6f623cf03692490391fae669dac640046dbc65d27" [label=""];
  "sha256:44a1579bdacb659f2f7a82badbb486e908020861f6d8b0dd431f21298898d59f" -> "sha256:79316ca12aadfb2ac00e7ea6f623cf03692490391fae669dac640046dbc65d27" [label=""];
  "sha256:79316ca12aadfb2ac00e7ea6f623cf03692490391fae669dac640046dbc65d27" -> "sha256:6d532e6c9a7e1b87b1cfca30f220b05accfe3b09e8ce8c72ea51c76652a6492f" [label=""];
  "sha256:44a1579bdacb659f2f7a82badbb486e908020861f6d8b0dd431f21298898d59f" -> "sha256:6d532e6c9a7e1b87b1cfca30f220b05accfe3b09e8ce8c72ea51c76652a6492f" [label=""];
  "sha256:6d532e6c9a7e1b87b1cfca30f220b05accfe3b09e8ce8c72ea51c76652a6492f" -> "sha256:9622607b0f7400622c7bdea39ea62cce114c18008ea3a50a1261a0d42356e56e" [label=""];
  "sha256:44a1579bdacb659f2f7a82badbb486e908020861f6d8b0dd431f21298898d59f" -> "sha256:9622607b0f7400622c7bdea39ea62cce114c18008ea3a50a1261a0d42356e56e" [label=""];
  "sha256:9622607b0f7400622c7bdea39ea62cce114c18008ea3a50a1261a0d42356e56e" -> "sha256:b52ea4e59a5b6704f31609792e36430ecaee9f2b70fbd508ad7d4c7b1e8931da" [label=""];
  "sha256:44a1579bdacb659f2f7a82badbb486e908020861f6d8b0dd431f21298898d59f" -> "sha256:b52ea4e59a5b6704f31609792e36430ecaee9f2b70fbd508ad7d4c7b1e8931da" [label=""];
  "sha256:b52ea4e59a5b6704f31609792e36430ecaee9f2b70fbd508ad7d4c7b1e8931da" -> "sha256:e8dc5239223a3542d0dcbc60447ce0b86be60c349667bcf61aa0f571f52e8aed" [label=""];
  "sha256:e8dc5239223a3542d0dcbc60447ce0b86be60c349667bcf61aa0f571f52e8aed" -> "sha256:735cced60d70253c8c9c1bc601213cdd3795f7ddaea2788cd2b946394b45a64d" [label=""];
  "sha256:735cced60d70253c8c9c1bc601213cdd3795f7ddaea2788cd2b946394b45a64d" -> "sha256:019038afb678060c7026fb79b0e66bf1a1a19f5ac5b47da0b4865a44775b71a6" [label=""];
}

