[app/sources/237774737.Dockerfile]
digraph {
  "sha256:db34ed19540d0eeb2d1279b4a522be8c83ea6ff4d106c69636163eadc5232da3" [label="docker-image://docker.io/lsiobase/nginx:arm64v8-3.9" shape="ellipse"];
  "sha256:e4c72e7ff51759251f4e5c457978a4a2bdd0f1bb3c46a353a3a1239333e9889b" [label="/bin/sh -c echo \"**** install runtime packages ****\" && apk add --no-cache --upgrade \tcurl \tphp7-curl \tphp7-ldap \tphp7-pdo_sqlite \tphp7-sqlite3 \tphp7-zip && echo \"**** fetch organizr ****\" && mkdir -p\t/var/www/html && if [ -z ${ORGANIZR_COMMIT+x} ]; then \tORGANIZR_COMMIT=$(curl -sX GET \"https://api.github.com/repos/causefx/Organizr/branches/v1-master\" \t| awk '/sha/{print $4;exit}' FS='[\"\"]'); fi && curl -o \t/tmp/organizr.tar.gz -L \t\"https://github.com/causefx/Organizr/archive/${ORGANIZR_COMMIT}.tar.gz\" && tar xf \t/tmp/organizr.tar.gz -C \t/var/www/html/ --strip-components=1 && echo \"**** cleanup ****\" && rm -rf \t/root/.composer" shape="box"];
  "sha256:30c5978ee28d0a304e6f24b8c24a81b403a073efcda23645735bae0b383e2256" [label="local://context" shape="ellipse"];
  "sha256:0828737541b1a781ab3ef32d34a3300dc7ca9faf49aa9b98b8d17036ec719a8c" [label="copy{src=/root, dest=/}" shape="note"];
  "sha256:2c907c87357020d1f4e7c7bfc31ea69a0e667feac5a9f10858ae3fae759bcb9b" [label="sha256:2c907c87357020d1f4e7c7bfc31ea69a0e667feac5a9f10858ae3fae759bcb9b" shape="plaintext"];
  "sha256:db34ed19540d0eeb2d1279b4a522be8c83ea6ff4d106c69636163eadc5232da3" -> "sha256:e4c72e7ff51759251f4e5c457978a4a2bdd0f1bb3c46a353a3a1239333e9889b" [label=""];
  "sha256:e4c72e7ff51759251f4e5c457978a4a2bdd0f1bb3c46a353a3a1239333e9889b" -> "sha256:0828737541b1a781ab3ef32d34a3300dc7ca9faf49aa9b98b8d17036ec719a8c" [label=""];
  "sha256:30c5978ee28d0a304e6f24b8c24a81b403a073efcda23645735bae0b383e2256" -> "sha256:0828737541b1a781ab3ef32d34a3300dc7ca9faf49aa9b98b8d17036ec719a8c" [label=""];
  "sha256:0828737541b1a781ab3ef32d34a3300dc7ca9faf49aa9b98b8d17036ec719a8c" -> "sha256:2c907c87357020d1f4e7c7bfc31ea69a0e667feac5a9f10858ae3fae759bcb9b" [label=""];
}

