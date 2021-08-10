[app/sources/196046912.Dockerfile]
digraph {
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" [label="docker-image://docker.io/library/alpine:3.8" shape="ellipse"];
  "sha256:7dacb7ba875534ad2dd8890a5a66f7adaa7d272c69790e65c1e7ff3f990ab3ab" [label="/bin/sh -c apk add --no-cache     python3 py3-pip bash   && pip3 install --upgrade pip" shape="box"];
  "sha256:d29f1d423121dd08af2c85deb0b9896cb3041461134d51bfe8490c421c651f18" [label="/bin/sh -c apk add --no-cache clamav rsyslog wget clamav-libunrar" shape="box"];
  "sha256:fcc199c5cd1c2777ece5761334001fe1b8fc955f0a8bcc56f4c0dad4aafd944f" [label="local://context" shape="ellipse"];
  "sha256:89c07747c33cda86f59004b519214335355e8c0306da1dbce059d96cac2007a7" [label="copy{src=/conf, dest=/etc/clamav}" shape="note"];
  "sha256:6eef853ab82cd05df71e1b71b86f65207cc82c9cdccf194445ea1cc6708cec50" [label="copy{src=/start.py, dest=/start.py}" shape="note"];
  "sha256:6857402564073a60db594c65c9527e20b2efec76ef56fb2d29e33c5a415d4d8d" [label="copy{src=/health.sh, dest=/health.sh}" shape="note"];
  "sha256:5ea44e392d4f3629e6f7a21a4ad688390ee71f4188ee9025542097372b3c1891" [label="sha256:5ea44e392d4f3629e6f7a21a4ad688390ee71f4188ee9025542097372b3c1891" shape="plaintext"];
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" -> "sha256:7dacb7ba875534ad2dd8890a5a66f7adaa7d272c69790e65c1e7ff3f990ab3ab" [label=""];
  "sha256:7dacb7ba875534ad2dd8890a5a66f7adaa7d272c69790e65c1e7ff3f990ab3ab" -> "sha256:d29f1d423121dd08af2c85deb0b9896cb3041461134d51bfe8490c421c651f18" [label=""];
  "sha256:d29f1d423121dd08af2c85deb0b9896cb3041461134d51bfe8490c421c651f18" -> "sha256:89c07747c33cda86f59004b519214335355e8c0306da1dbce059d96cac2007a7" [label=""];
  "sha256:fcc199c5cd1c2777ece5761334001fe1b8fc955f0a8bcc56f4c0dad4aafd944f" -> "sha256:89c07747c33cda86f59004b519214335355e8c0306da1dbce059d96cac2007a7" [label=""];
  "sha256:89c07747c33cda86f59004b519214335355e8c0306da1dbce059d96cac2007a7" -> "sha256:6eef853ab82cd05df71e1b71b86f65207cc82c9cdccf194445ea1cc6708cec50" [label=""];
  "sha256:fcc199c5cd1c2777ece5761334001fe1b8fc955f0a8bcc56f4c0dad4aafd944f" -> "sha256:6eef853ab82cd05df71e1b71b86f65207cc82c9cdccf194445ea1cc6708cec50" [label=""];
  "sha256:6eef853ab82cd05df71e1b71b86f65207cc82c9cdccf194445ea1cc6708cec50" -> "sha256:6857402564073a60db594c65c9527e20b2efec76ef56fb2d29e33c5a415d4d8d" [label=""];
  "sha256:fcc199c5cd1c2777ece5761334001fe1b8fc955f0a8bcc56f4c0dad4aafd944f" -> "sha256:6857402564073a60db594c65c9527e20b2efec76ef56fb2d29e33c5a415d4d8d" [label=""];
  "sha256:6857402564073a60db594c65c9527e20b2efec76ef56fb2d29e33c5a415d4d8d" -> "sha256:5ea44e392d4f3629e6f7a21a4ad688390ee71f4188ee9025542097372b3c1891" [label=""];
}

