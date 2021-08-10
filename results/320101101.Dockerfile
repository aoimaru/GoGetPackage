[app/sources/320101101.Dockerfile]
digraph {
  "sha256:3b38e90568a14d1046311aac7801a36182f4fe83477879f0c5fa9b5745aae476" [label="docker-image://docker.io/webdevops/php-nginx:latest@sha256:d767e533e0fc17296a51ed36caa4de265fc5b803707e318fc90094538b29a3b4" shape="ellipse"];
  "sha256:7d7972e425c0c73a2b1b7bd57ba075a4cb240b09ccdfc2012c81c92ff07af545" [label="local://context" shape="ellipse"];
  "sha256:81b2bc4d76ef3a576e05392493bcc1f48e2ee8036ea06677fcefd6732465797c" [label="copy{src=/conf, dest=/opt/docker/}" shape="note"];
  "sha256:759d4be9281f2c4547acfca46711895fe978ee28d259613bc68abda19027e456" [label="/bin/sh -c set -x     && apt-install         dovecot-core         dovecot-imapd     && docker-service enable postfix     && docker-service enable dovecot     && docker-run-bootstrap     && docker-image-cleanup" shape="box"];
  "sha256:1c64cadfe9da47b6563b093e0a468a88f43af1fbf84a99d50d5051cb56853507" [label="/bin/sh -c set -x     && cd /app     && rm -rf *     && wget https://github.com/roundcube/roundcubemail/releases/download/1.2.2/roundcubemail-1.2.2-complete.tar.gz     && tar xf roundcubemail-1.2.2-complete.tar.gz  --strip-components 1     && rm -f roundcubemail-1.2.2-complete.tar.gz     && ls -l      && rm -rf .git installer     && ln -s /opt/docker/etc/roundcube/plugins/webdevops_autologin/ plugins/webdevops_autologin     && ln -s /opt/docker/etc/roundcube/config.php config/config.inc.php" shape="box"];
  "sha256:42bc715934776e66943b1e420d4889544619ce4d4189e081bc184027cbda3a14" [label="sha256:42bc715934776e66943b1e420d4889544619ce4d4189e081bc184027cbda3a14" shape="plaintext"];
  "sha256:3b38e90568a14d1046311aac7801a36182f4fe83477879f0c5fa9b5745aae476" -> "sha256:81b2bc4d76ef3a576e05392493bcc1f48e2ee8036ea06677fcefd6732465797c" [label=""];
  "sha256:7d7972e425c0c73a2b1b7bd57ba075a4cb240b09ccdfc2012c81c92ff07af545" -> "sha256:81b2bc4d76ef3a576e05392493bcc1f48e2ee8036ea06677fcefd6732465797c" [label=""];
  "sha256:81b2bc4d76ef3a576e05392493bcc1f48e2ee8036ea06677fcefd6732465797c" -> "sha256:759d4be9281f2c4547acfca46711895fe978ee28d259613bc68abda19027e456" [label=""];
  "sha256:759d4be9281f2c4547acfca46711895fe978ee28d259613bc68abda19027e456" -> "sha256:1c64cadfe9da47b6563b093e0a468a88f43af1fbf84a99d50d5051cb56853507" [label=""];
  "sha256:1c64cadfe9da47b6563b093e0a468a88f43af1fbf84a99d50d5051cb56853507" -> "sha256:42bc715934776e66943b1e420d4889544619ce4d4189e081bc184027cbda3a14" [label=""];
}

