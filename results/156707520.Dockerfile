[app/sources/156707520.Dockerfile]
digraph {
  "sha256:1915d0fdb329fc6f0ffa64c18b305038c2c21226e2a3fce8553f8b43515794fc" [label="docker-image://docker.io/library/opensuse:13.2" shape="ellipse"];
  "sha256:0b0a19f4ca779974656824cec94f179579d6cf3c8281d62fbc38e792bb642d20" [label="/bin/sh -c zypper -n --gpg-auto-import-keys refresh" shape="box"];
  "sha256:b0378d85b5434b6ea51b9d10ff2004655baf2fc479a960b39fa45fe679e06bc4" [label="/bin/sh -c zypper -n --gpg-auto-import-keys update" shape="box"];
  "sha256:030153b074b02d6bce2827b8da8644f73cebfdba0fb6046bef6bcf3142e18276" [label="/bin/sh -c zypper -n --gpg-auto-import-keys install apache2-devel mariadb-client libmysqlclient-devel php5 php5-mcrypt php5-gd php5-mysql apache2-mod_php5 which" shape="box"];
  "sha256:4149c20c1da839391913b666b60c2afefcb8f53aea67a3b8c4bf1d2726db98dc" [label="/bin/sh -c touch /etc/apache2/sysconfig.d/include.conf" shape="box"];
  "sha256:89429a9beb01e3af578b289321f9a7e3434382af95b1bcf5d4dbeb4634ec55a9" [label="/bin/sh -c mkdir /srv/www/wordpress" shape="box"];
  "sha256:1a45ed9ee50d38e2b79cb04711176fce8b7ddf5308dd21d4dc4de42edcafe241" [label="mkdir{path=/srv/www/wordpress}" shape="note"];
  "sha256:a0790b590efacbb22ede94b705e18ebc8412143bb2f32045c84e70e5356be396" [label="local://context" shape="ellipse"];
  "sha256:f4c6bff97b95e7ca40a90bcadb2ef379e93e6315bc383d952ad2370bf17ef60a" [label="copy{src=/data, dest=/srv/www/wordpress}" shape="note"];
  "sha256:427c0aaa65866b6308b9d00d41e5bdf964d7acd4cf76bab7dfa50ce4bdaf8b36" [label="copy{src=/apache2/listen.conf, dest=/etc/apache2/listen.conf}" shape="note"];
  "sha256:af7d2bf23521585067fc06f3cdb05f8382372c642511274ee11d86b4517bf0b2" [label="copy{src=/apache2/wordpress_vhost.conf, dest=/etc/apache2/vhosts.d/}" shape="note"];
  "sha256:1fcfd4dd083d7a0b481cd3fb63448be9fbe00659d5e298c5a9f6782e313ae227" [label="/bin/sh -c echo \"LoadModule php5_module        /usr/lib64/apache2/mod_php5.so\" >> /etc/apache2/sysconfig.d/loadmodule.conf" shape="box"];
  "sha256:f0401e87cb764541e2479862dce2f907fb0e76adc813644e7defc47334bfc489" [label="/bin/sh -c echo \"variables_order = 'GPCSE'\" >> /etc/php5/cli/php.ini" shape="box"];
  "sha256:c278d882fbf997649a17ad6925beea135e61fb6e24df4ccbab60f5ddfe8fc7bd" [label="sha256:c278d882fbf997649a17ad6925beea135e61fb6e24df4ccbab60f5ddfe8fc7bd" shape="plaintext"];
  "sha256:1915d0fdb329fc6f0ffa64c18b305038c2c21226e2a3fce8553f8b43515794fc" -> "sha256:0b0a19f4ca779974656824cec94f179579d6cf3c8281d62fbc38e792bb642d20" [label=""];
  "sha256:0b0a19f4ca779974656824cec94f179579d6cf3c8281d62fbc38e792bb642d20" -> "sha256:b0378d85b5434b6ea51b9d10ff2004655baf2fc479a960b39fa45fe679e06bc4" [label=""];
  "sha256:b0378d85b5434b6ea51b9d10ff2004655baf2fc479a960b39fa45fe679e06bc4" -> "sha256:030153b074b02d6bce2827b8da8644f73cebfdba0fb6046bef6bcf3142e18276" [label=""];
  "sha256:030153b074b02d6bce2827b8da8644f73cebfdba0fb6046bef6bcf3142e18276" -> "sha256:4149c20c1da839391913b666b60c2afefcb8f53aea67a3b8c4bf1d2726db98dc" [label=""];
  "sha256:4149c20c1da839391913b666b60c2afefcb8f53aea67a3b8c4bf1d2726db98dc" -> "sha256:89429a9beb01e3af578b289321f9a7e3434382af95b1bcf5d4dbeb4634ec55a9" [label=""];
  "sha256:89429a9beb01e3af578b289321f9a7e3434382af95b1bcf5d4dbeb4634ec55a9" -> "sha256:1a45ed9ee50d38e2b79cb04711176fce8b7ddf5308dd21d4dc4de42edcafe241" [label=""];
  "sha256:1a45ed9ee50d38e2b79cb04711176fce8b7ddf5308dd21d4dc4de42edcafe241" -> "sha256:f4c6bff97b95e7ca40a90bcadb2ef379e93e6315bc383d952ad2370bf17ef60a" [label=""];
  "sha256:a0790b590efacbb22ede94b705e18ebc8412143bb2f32045c84e70e5356be396" -> "sha256:f4c6bff97b95e7ca40a90bcadb2ef379e93e6315bc383d952ad2370bf17ef60a" [label=""];
  "sha256:f4c6bff97b95e7ca40a90bcadb2ef379e93e6315bc383d952ad2370bf17ef60a" -> "sha256:427c0aaa65866b6308b9d00d41e5bdf964d7acd4cf76bab7dfa50ce4bdaf8b36" [label=""];
  "sha256:a0790b590efacbb22ede94b705e18ebc8412143bb2f32045c84e70e5356be396" -> "sha256:427c0aaa65866b6308b9d00d41e5bdf964d7acd4cf76bab7dfa50ce4bdaf8b36" [label=""];
  "sha256:427c0aaa65866b6308b9d00d41e5bdf964d7acd4cf76bab7dfa50ce4bdaf8b36" -> "sha256:af7d2bf23521585067fc06f3cdb05f8382372c642511274ee11d86b4517bf0b2" [label=""];
  "sha256:a0790b590efacbb22ede94b705e18ebc8412143bb2f32045c84e70e5356be396" -> "sha256:af7d2bf23521585067fc06f3cdb05f8382372c642511274ee11d86b4517bf0b2" [label=""];
  "sha256:af7d2bf23521585067fc06f3cdb05f8382372c642511274ee11d86b4517bf0b2" -> "sha256:1fcfd4dd083d7a0b481cd3fb63448be9fbe00659d5e298c5a9f6782e313ae227" [label=""];
  "sha256:1fcfd4dd083d7a0b481cd3fb63448be9fbe00659d5e298c5a9f6782e313ae227" -> "sha256:f0401e87cb764541e2479862dce2f907fb0e76adc813644e7defc47334bfc489" [label=""];
  "sha256:f0401e87cb764541e2479862dce2f907fb0e76adc813644e7defc47334bfc489" -> "sha256:c278d882fbf997649a17ad6925beea135e61fb6e24df4ccbab60f5ddfe8fc7bd" [label=""];
}

