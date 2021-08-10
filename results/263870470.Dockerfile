[app/sources/263870470.Dockerfile]
digraph {
  "sha256:e1fac64d8957b79eb5a654e56673f67270e344fd8902746bdf2d84604858ddfe" [label="local://context" shape="ellipse"];
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" [label="docker-image://docker.io/library/alpine:3.8" shape="ellipse"];
  "sha256:c175323b3bf973d0a2936016bb607afb05311a6820e64101ba5e45fdd5b99ef5" [label="copy{src=/start.sh, dest=/usr/bin/start.sh}" shape="note"];
  "sha256:d89f5f016ce665892972890f396b2da426783dd8dfb5d9d1f1c68cdc88044e00" [label="/bin/sh -c echo \"http://dl-cdn.alpinelinux.org/alpine/latest-stable/main\" >> /etc/apk/repositories &&     apk update &&     apk upgrade &&     apk add --update \tbash \tgit \tpython3 \tpy3-argparse \tpy3-tz \tpy3-flask \tpy3-pygments \tpython3-tkinter \tsqlite-libs \tpy3-pip && git clone https://github.com/SystemRage/py-kms.git /home/py-kms && git clone https://github.com/coleifer/sqlite-web.git /tmp/sqlite_web && mv /tmp/sqlite_web/sqlite_web /home/ && rm -rf /tmp/sqlite_web && pip3 install peewee tzlocal && chmod a+x /usr/bin/start.sh && apk del git py3-pip" shape="box"];
  "sha256:6f45de5eb8dc471179f8be7828f638d4dd2fa85a8341e3640aed6f881479f648" [label="mkdir{path=/home/py-kms/py-kms}" shape="note"];
  "sha256:d44ae17aed619208f9c53820688db9cac91fb24b0f22db3acee820f95469be3b" [label="sha256:d44ae17aed619208f9c53820688db9cac91fb24b0f22db3acee820f95469be3b" shape="plaintext"];
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" -> "sha256:c175323b3bf973d0a2936016bb607afb05311a6820e64101ba5e45fdd5b99ef5" [label=""];
  "sha256:e1fac64d8957b79eb5a654e56673f67270e344fd8902746bdf2d84604858ddfe" -> "sha256:c175323b3bf973d0a2936016bb607afb05311a6820e64101ba5e45fdd5b99ef5" [label=""];
  "sha256:c175323b3bf973d0a2936016bb607afb05311a6820e64101ba5e45fdd5b99ef5" -> "sha256:d89f5f016ce665892972890f396b2da426783dd8dfb5d9d1f1c68cdc88044e00" [label=""];
  "sha256:d89f5f016ce665892972890f396b2da426783dd8dfb5d9d1f1c68cdc88044e00" -> "sha256:6f45de5eb8dc471179f8be7828f638d4dd2fa85a8341e3640aed6f881479f648" [label=""];
  "sha256:6f45de5eb8dc471179f8be7828f638d4dd2fa85a8341e3640aed6f881479f648" -> "sha256:d44ae17aed619208f9c53820688db9cac91fb24b0f22db3acee820f95469be3b" [label=""];
}

