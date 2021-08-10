[app/sources/357201881.Dockerfile]
digraph {
  "sha256:8c1f75b41cdacf69b881fd9c3ffa1377c0836cbd225756bcd7a90f5df73ae244" [label="local://context" shape="ellipse"];
  "sha256:57f6260d49f2c499e3b4981497b6c2a9abe5c377157373abc2904f3a33849f13" [label="docker-image://docker.io/library/ubuntu:15.04" shape="ellipse"];
  "sha256:5e357bf093d75fed3d73930969d56da137f6fad68b46eb4854df737667502f5a" [label="/bin/sh -c sed -i -e 's/^deb-src/# deb-src/' /etc/apt/sources.list && apt-get update && \tapt-get install -y --no-install-recommends wget curl poppler-utils && \tapt-get install -y php5-cli && \twget -O wkhtmltox.deb http://download.gna.org/wkhtmltopdf/0.12/0.12.2.1/wkhtmltox-0.12.2.1_linux-trusty-amd64.deb && dpkg -i wkhtmltox.deb || true && \tapt-get -y -f install && \trm wkhtmltox.deb &&     rm -rf /var/lib/apt/lists/* && rm -rf /usr/share/doc/* && rm -rf /usr/share/man/* && rm -rf /usr/share/locale/*" shape="box"];
  "sha256:b33058241c7f494604f043613761e058c73718e3bb9688b33ac1d20405740806" [label="copy{src=/pdf_service.php, dest=/var/www/index.php}" shape="note"];
  "sha256:fdb4b726e7817a885e7a9ec4290a0b3bf2293026b08f8516020d67f1264eb390" [label="copy{src=/MTCORSVA.TTF, dest=/usr/local/share/fonts/MTCORSVA.TTF}" shape="note"];
  "sha256:6ee6e5f612667a0363eb58822b995dc0724377b2fc269617276e8925d0f664a3" [label="copy{src=/php.ini, dest=/etc/php5/cli/php.ini}" shape="note"];
  "sha256:778cee6b6906ba834d1c616bc203951d1e77258cc7d5d24e928e2b43a1be6799" [label="copy{src=/bootstrap.min.css, dest=/tmp}" shape="note"];
  "sha256:7fe92327eb2a2def2cacfa7de90435085149d504c61b058ed10cf54172e65979" [label="copy{src=/bootstrap.min.js, dest=/tmp}" shape="note"];
  "sha256:12cbd3889fe8b0863d424668c1059302edb03f572dea78574aa7b4b5d446e908" [label="sha256:12cbd3889fe8b0863d424668c1059302edb03f572dea78574aa7b4b5d446e908" shape="plaintext"];
  "sha256:57f6260d49f2c499e3b4981497b6c2a9abe5c377157373abc2904f3a33849f13" -> "sha256:5e357bf093d75fed3d73930969d56da137f6fad68b46eb4854df737667502f5a" [label=""];
  "sha256:5e357bf093d75fed3d73930969d56da137f6fad68b46eb4854df737667502f5a" -> "sha256:b33058241c7f494604f043613761e058c73718e3bb9688b33ac1d20405740806" [label=""];
  "sha256:8c1f75b41cdacf69b881fd9c3ffa1377c0836cbd225756bcd7a90f5df73ae244" -> "sha256:b33058241c7f494604f043613761e058c73718e3bb9688b33ac1d20405740806" [label=""];
  "sha256:b33058241c7f494604f043613761e058c73718e3bb9688b33ac1d20405740806" -> "sha256:fdb4b726e7817a885e7a9ec4290a0b3bf2293026b08f8516020d67f1264eb390" [label=""];
  "sha256:8c1f75b41cdacf69b881fd9c3ffa1377c0836cbd225756bcd7a90f5df73ae244" -> "sha256:fdb4b726e7817a885e7a9ec4290a0b3bf2293026b08f8516020d67f1264eb390" [label=""];
  "sha256:fdb4b726e7817a885e7a9ec4290a0b3bf2293026b08f8516020d67f1264eb390" -> "sha256:6ee6e5f612667a0363eb58822b995dc0724377b2fc269617276e8925d0f664a3" [label=""];
  "sha256:8c1f75b41cdacf69b881fd9c3ffa1377c0836cbd225756bcd7a90f5df73ae244" -> "sha256:6ee6e5f612667a0363eb58822b995dc0724377b2fc269617276e8925d0f664a3" [label=""];
  "sha256:6ee6e5f612667a0363eb58822b995dc0724377b2fc269617276e8925d0f664a3" -> "sha256:778cee6b6906ba834d1c616bc203951d1e77258cc7d5d24e928e2b43a1be6799" [label=""];
  "sha256:8c1f75b41cdacf69b881fd9c3ffa1377c0836cbd225756bcd7a90f5df73ae244" -> "sha256:778cee6b6906ba834d1c616bc203951d1e77258cc7d5d24e928e2b43a1be6799" [label=""];
  "sha256:778cee6b6906ba834d1c616bc203951d1e77258cc7d5d24e928e2b43a1be6799" -> "sha256:7fe92327eb2a2def2cacfa7de90435085149d504c61b058ed10cf54172e65979" [label=""];
  "sha256:8c1f75b41cdacf69b881fd9c3ffa1377c0836cbd225756bcd7a90f5df73ae244" -> "sha256:7fe92327eb2a2def2cacfa7de90435085149d504c61b058ed10cf54172e65979" [label=""];
  "sha256:7fe92327eb2a2def2cacfa7de90435085149d504c61b058ed10cf54172e65979" -> "sha256:12cbd3889fe8b0863d424668c1059302edb03f572dea78574aa7b4b5d446e908" [label=""];
}

