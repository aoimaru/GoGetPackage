[app/sources/423983005.Dockerfile]
digraph {
  "sha256:618f71083a18f77808a2f680b4de7d756a1ed95d8c3eadca6752f917d312f0fc" [label="local://context" shape="ellipse"];
  "sha256:982b52ceafa6329084469d387f4835ca9cef380f861832ac0342da48647a8c9c" [label="docker-image://docker.io/library/nginx:stable" shape="ellipse"];
  "sha256:663bb1a7d2ffe68ba33d52340c0ce715a791c39fbe77f0cc811a76b314ebe27d" [label="/bin/sh -c set -x \t&& apt-get update \t&& apt-get install --no-install-recommends --no-install-suggests -y \t\t${BUILD_DEPS} \t\t${RUN_DEPS} \t\t&& git clone https://github.com/devilbox/vhost-gen \t&& cd vhost-gen \t&& git checkout \"${VHOST_GEN_GIT_REF}\" \t&& make install \t&& cd .. \t&& rm -rf vhost*gen* \t\t&& wget --no-check-certificate -O /usr/bin/ca-gen https://raw.githubusercontent.com/devilbox/cert-gen/${CERT_GEN_GIT_REF}/bin/ca-gen \t&& wget --no-check-certificate -O /usr/bin/cert-gen https://raw.githubusercontent.com/devilbox/cert-gen/${CERT_GEN_GIT_REF}/bin/cert-gen \t&& chmod +x /usr/bin/ca-gen \t&& chmod +x /usr/bin/cert-gen \t\t&& wget --no-check-certificate -O /usr/bin/watcherd https://raw.githubusercontent.com/devilbox/watcherd/master/watcherd \t&& chmod +x /usr/bin/watcherd \t\t&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps \t\t${BUILD_DEPS} \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:b3927c6f2ffcc64cf7966192bbb292e6963c16e8c3f6b4d56410abc95e69c20b" [label="/bin/sh -c set -x \t&& mkdir -p /etc/httpd-custom.d \t&& mkdir -p /etc/httpd/conf.d \t&& mkdir -p /etc/httpd/vhost.d \t&& mkdir -p /var/www/default/htdocs \t&& mkdir -p /shared/httpd \t&& chmod 0775 /shared/httpd \t&& chown ${MY_USER}:${MY_GROUP} /shared/httpd" shape="box"];
  "sha256:b455929fa532770f2ff0b5b439e40b82cca44cf6f0ebc3012884b913cab644e2" [label="/bin/sh -c chown www-data /var/www/default/htdocs/" shape="box"];
  "sha256:32121b67acabedf0149767253a71e8ccb3c4decd5805918c7c2329262fd2ca4a" [label="copy{src=/data/nginx/nginx.conf, dest=/etc/nginx/nginx.conf}" shape="note"];
  "sha256:4bdadb3526f11bea3b69906fc69b5f9f4464eeec952853dc21461ec5ccb50f43" [label="copy{src=/data/vhost-gen/main.yml, dest=/etc/vhost-gen/main.yml}" shape="note"];
  "sha256:c6b6992dc4d89c3776a924ce9a79bfc968743c8042fecb500948ac9622801fde" [label="copy{src=/data/vhost-gen/mass.yml, dest=/etc/vhost-gen/mass.yml}" shape="note"];
  "sha256:e02cef8cf9649d391c7c2ec6080ca6529976f43634bf86068c23f2abfcee36f6" [label="copy{src=/data/vhost-gen/templates-main, dest=/etc/vhost-gen/templates-main}" shape="note"];
  "sha256:958c5949120919538af5d38d0a3b530e4c8363ac5e0931798616e89a1b20da96" [label="copy{src=/data/create-vhost.sh, dest=/usr/local/bin/create-vhost.sh}" shape="note"];
  "sha256:eabd5e21b5760d6cb20bb2e4368d6d36a999d4fd2adbd924973edbf4345415f1" [label="copy{src=/data/docker-entrypoint.d, dest=/docker-entrypoint.d}" shape="note"];
  "sha256:0f36e6507162a15dcc2c374ad7dc424b6db4213fdd951546133f0be36ea5c06d" [label="copy{src=/data/docker-entrypoint.sh, dest=/docker-entrypoint.sh}" shape="note"];
  "sha256:03c95669c760c350a1041d07958adeaae36167543afc9ed3fdd91ff0665333fe" [label="sha256:03c95669c760c350a1041d07958adeaae36167543afc9ed3fdd91ff0665333fe" shape="plaintext"];
  "sha256:982b52ceafa6329084469d387f4835ca9cef380f861832ac0342da48647a8c9c" -> "sha256:663bb1a7d2ffe68ba33d52340c0ce715a791c39fbe77f0cc811a76b314ebe27d" [label=""];
  "sha256:663bb1a7d2ffe68ba33d52340c0ce715a791c39fbe77f0cc811a76b314ebe27d" -> "sha256:b3927c6f2ffcc64cf7966192bbb292e6963c16e8c3f6b4d56410abc95e69c20b" [label=""];
  "sha256:b3927c6f2ffcc64cf7966192bbb292e6963c16e8c3f6b4d56410abc95e69c20b" -> "sha256:b455929fa532770f2ff0b5b439e40b82cca44cf6f0ebc3012884b913cab644e2" [label=""];
  "sha256:b455929fa532770f2ff0b5b439e40b82cca44cf6f0ebc3012884b913cab644e2" -> "sha256:32121b67acabedf0149767253a71e8ccb3c4decd5805918c7c2329262fd2ca4a" [label=""];
  "sha256:618f71083a18f77808a2f680b4de7d756a1ed95d8c3eadca6752f917d312f0fc" -> "sha256:32121b67acabedf0149767253a71e8ccb3c4decd5805918c7c2329262fd2ca4a" [label=""];
  "sha256:32121b67acabedf0149767253a71e8ccb3c4decd5805918c7c2329262fd2ca4a" -> "sha256:4bdadb3526f11bea3b69906fc69b5f9f4464eeec952853dc21461ec5ccb50f43" [label=""];
  "sha256:618f71083a18f77808a2f680b4de7d756a1ed95d8c3eadca6752f917d312f0fc" -> "sha256:4bdadb3526f11bea3b69906fc69b5f9f4464eeec952853dc21461ec5ccb50f43" [label=""];
  "sha256:4bdadb3526f11bea3b69906fc69b5f9f4464eeec952853dc21461ec5ccb50f43" -> "sha256:c6b6992dc4d89c3776a924ce9a79bfc968743c8042fecb500948ac9622801fde" [label=""];
  "sha256:618f71083a18f77808a2f680b4de7d756a1ed95d8c3eadca6752f917d312f0fc" -> "sha256:c6b6992dc4d89c3776a924ce9a79bfc968743c8042fecb500948ac9622801fde" [label=""];
  "sha256:c6b6992dc4d89c3776a924ce9a79bfc968743c8042fecb500948ac9622801fde" -> "sha256:e02cef8cf9649d391c7c2ec6080ca6529976f43634bf86068c23f2abfcee36f6" [label=""];
  "sha256:618f71083a18f77808a2f680b4de7d756a1ed95d8c3eadca6752f917d312f0fc" -> "sha256:e02cef8cf9649d391c7c2ec6080ca6529976f43634bf86068c23f2abfcee36f6" [label=""];
  "sha256:e02cef8cf9649d391c7c2ec6080ca6529976f43634bf86068c23f2abfcee36f6" -> "sha256:958c5949120919538af5d38d0a3b530e4c8363ac5e0931798616e89a1b20da96" [label=""];
  "sha256:618f71083a18f77808a2f680b4de7d756a1ed95d8c3eadca6752f917d312f0fc" -> "sha256:958c5949120919538af5d38d0a3b530e4c8363ac5e0931798616e89a1b20da96" [label=""];
  "sha256:958c5949120919538af5d38d0a3b530e4c8363ac5e0931798616e89a1b20da96" -> "sha256:eabd5e21b5760d6cb20bb2e4368d6d36a999d4fd2adbd924973edbf4345415f1" [label=""];
  "sha256:618f71083a18f77808a2f680b4de7d756a1ed95d8c3eadca6752f917d312f0fc" -> "sha256:eabd5e21b5760d6cb20bb2e4368d6d36a999d4fd2adbd924973edbf4345415f1" [label=""];
  "sha256:eabd5e21b5760d6cb20bb2e4368d6d36a999d4fd2adbd924973edbf4345415f1" -> "sha256:0f36e6507162a15dcc2c374ad7dc424b6db4213fdd951546133f0be36ea5c06d" [label=""];
  "sha256:618f71083a18f77808a2f680b4de7d756a1ed95d8c3eadca6752f917d312f0fc" -> "sha256:0f36e6507162a15dcc2c374ad7dc424b6db4213fdd951546133f0be36ea5c06d" [label=""];
  "sha256:0f36e6507162a15dcc2c374ad7dc424b6db4213fdd951546133f0be36ea5c06d" -> "sha256:03c95669c760c350a1041d07958adeaae36167543afc9ed3fdd91ff0665333fe" [label=""];
}

