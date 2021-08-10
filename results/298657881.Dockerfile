[app/sources/298657881.Dockerfile]
digraph {
  "sha256:7ead942e8846f29e3cf2f3ba1b920e6cb1e25f72008e1c555ede65abd1182761" [label="docker-image://docker.io/lsiobase/ubuntu:arm32v7-bionic" shape="ellipse"];
  "sha256:d7f408dd1553ce08d90451c35cc638be1673bcd9e3bda4660ea893a6375b845f" [label="/bin/sh -c echo \"**** install build packages ****\" &&  apt-get update &&  apt-get install -y \tg++ \tgcc \tgit \tlibffi-dev \tlibjpeg-dev \tlibxml2-dev \tlibxslt1-dev \tpython-pip \tzlib1g-dev &&  echo \"**** install runtime packages ****\" &&  apt-get install -y \timagemagick \tpython-minimal \tunrar &&  echo \"**** install calibre-web ****\" &&  if [ -z ${CALIBREWEB_RELEASE+x} ]; then \tCALIBREWEB_RELEASE=$(curl -sX GET \"https://api.github.com/repos/janeczku/calibre-web/releases/latest\" \t| awk '/tag_name/{print $4;exit}' FS='[\"\"]');  fi &&  curl -o  /tmp/calibre-web.tar.gz -L \thttps://github.com/janeczku/calibre-web/archive/${CALIBREWEB_RELEASE}.tar.gz &&  mkdir -p \t/app/calibre-web &&  tar xf  /tmp/calibre-web.tar.gz -C \t/app/calibre-web --strip-components=1 &&  cd /app/calibre-web &&  pip install --no-cache-dir -U -r \trequirements.txt &&  pip install --no-cache-dir -U -r \toptional-requirements.txt &&  echo \"**** cleanup ****\" &&  apt-get -y purge \tg++ \tgcc \tgit \tlibffi-dev \tlibjpeg-dev \tlibxml2-dev \tlibxslt1-dev \tpython-pip \tzlib1g-dev &&  apt-get -y autoremove &&  rm -rf \t/tmp/* \t/var/lib/apt/lists/* \t/var/tmp/*" shape="box"];
  "sha256:734d516067e84f3eeac9b4a51611ad7a98c9d4d6eb564ebf74d65032269135a3" [label="local://context" shape="ellipse"];
  "sha256:7894db727f9097c56bd2bcc0ea65b2174af456550dda09c28aab1f4c193e2a40" [label="copy{src=/root, dest=/}" shape="note"];
  "sha256:4459d34e5d21610fb87079f2089310cbd6bb55603f3debd25302b1f1f65b1956" [label="sha256:4459d34e5d21610fb87079f2089310cbd6bb55603f3debd25302b1f1f65b1956" shape="plaintext"];
  "sha256:7ead942e8846f29e3cf2f3ba1b920e6cb1e25f72008e1c555ede65abd1182761" -> "sha256:d7f408dd1553ce08d90451c35cc638be1673bcd9e3bda4660ea893a6375b845f" [label=""];
  "sha256:d7f408dd1553ce08d90451c35cc638be1673bcd9e3bda4660ea893a6375b845f" -> "sha256:7894db727f9097c56bd2bcc0ea65b2174af456550dda09c28aab1f4c193e2a40" [label=""];
  "sha256:734d516067e84f3eeac9b4a51611ad7a98c9d4d6eb564ebf74d65032269135a3" -> "sha256:7894db727f9097c56bd2bcc0ea65b2174af456550dda09c28aab1f4c193e2a40" [label=""];
  "sha256:7894db727f9097c56bd2bcc0ea65b2174af456550dda09c28aab1f4c193e2a40" -> "sha256:4459d34e5d21610fb87079f2089310cbd6bb55603f3debd25302b1f1f65b1956" [label=""];
}

