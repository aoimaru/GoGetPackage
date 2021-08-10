[app/sources/355513639.Dockerfile]
digraph {
  "sha256:77484d07de9bb147328db787951087997689fb871a2f165aecb7fb1d0e435763" [label="docker-image://docker.io/lsiobase/nginx:3.9@sha256:8ada513182e5481e30a9318f93c89bc747bd008ee9d7cd1a696990d3f130b9a9" shape="ellipse"];
  "sha256:94609885e2ed2935ac1ea09145786892764f669dd4527a03c352c3ed4d589635" [label="/bin/sh -c echo \"**** install packages ****\" &&  apk add --no-cache --upgrade \tcurl \tgit \tgrep \tphp7-apcu \tphp7-curl \tphp7-dom \tphp7-gd \tphp7-iconv \tphp7-intl \tphp7-ldap \tphp7-mcrypt \tphp7-mysqli \tphp7-mysqlnd \tphp7-pcntl \tphp7-pdo_mysql \tphp7-pdo_pgsql \tphp7-pgsql \tphp7-posix \ttar &&  echo \"**** install software ****\" &&  mkdir -p \t/var/www/html/ &&  if [ -z ${TT_RSS_VERSION+x} ]; then  \tTT_RSS_VERSION=$(git ls-remote --tags https://git.tt-rss.org/fox/tt-rss.git \t| sort -t '/' -k 3 -V \t| grep -Ev '{}|-' \t| awk '/./{line=$0} END{print line}' \t| awk -F / '{print $3}');  fi &&  curl -o \t/tmp/ttrss.tar.gz -L \t\"https://git.tt-rss.org/git/tt-rss/archive/${TT_RSS_VERSION}.tar.gz\" &&  tar xf  /tmp/ttrss.tar.gz -C \t/var/www/html/ --strip-components=1 &&  echo \"**** link php7 to php ****\" &&  ln -sf /usr/bin/php7 /usr/bin/php &&  echo \"**** cleanup ****\" &&  rm -rf \t/tmp/*" shape="box"];
  "sha256:b8af2c9e03817db3efbbb3c3fa96d0742bf01979ddbbcaf7ab7569df7245fccd" [label="local://context" shape="ellipse"];
  "sha256:8bb6a13c7f8eb66a3f8a0f893d95a6c8b44baaf390b76d59338e4a3a32afe7bc" [label="copy{src=/root, dest=/}" shape="note"];
  "sha256:aabb6cdd6a6d901b31daf56fb523fee89a79b3f1d5482d3802e3c643cc0a9061" [label="sha256:aabb6cdd6a6d901b31daf56fb523fee89a79b3f1d5482d3802e3c643cc0a9061" shape="plaintext"];
  "sha256:77484d07de9bb147328db787951087997689fb871a2f165aecb7fb1d0e435763" -> "sha256:94609885e2ed2935ac1ea09145786892764f669dd4527a03c352c3ed4d589635" [label=""];
  "sha256:94609885e2ed2935ac1ea09145786892764f669dd4527a03c352c3ed4d589635" -> "sha256:8bb6a13c7f8eb66a3f8a0f893d95a6c8b44baaf390b76d59338e4a3a32afe7bc" [label=""];
  "sha256:b8af2c9e03817db3efbbb3c3fa96d0742bf01979ddbbcaf7ab7569df7245fccd" -> "sha256:8bb6a13c7f8eb66a3f8a0f893d95a6c8b44baaf390b76d59338e4a3a32afe7bc" [label=""];
  "sha256:8bb6a13c7f8eb66a3f8a0f893d95a6c8b44baaf390b76d59338e4a3a32afe7bc" -> "sha256:aabb6cdd6a6d901b31daf56fb523fee89a79b3f1d5482d3802e3c643cc0a9061" [label=""];
}

