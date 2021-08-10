[app/sources/446162112.Dockerfile]
digraph {
  "sha256:ccc3370c59341e92262409e073bc5dd76ae6eeae9e6e89931b9553bbf7f0d31b" [label="docker-image://docker.io/nlothian/python-nltk:latest" shape="ellipse"];
  "sha256:fed5dfa812528745ccf1c32c9d468f9cfa201ac28ebaab58a666eea549db8e2c" [label="/bin/sh -c mkdir -p /var/local/acuitra" shape="box"];
  "sha256:75a76135c52ab759b4d177f09929b184665b0c07b1ae5d72f3a8207436e846e9" [label="/bin/sh -c git init /var/local/acuitra/" shape="box"];
  "sha256:8903fcf7cbb5abb7590cdc708b9a71deed6d79b8ee8c77aaf8ff7fd921026755" [label="/bin/sh -c cd /var/local/acuitra;git remote add -f origin https://github.com/nlothian/Acuitra.git" shape="box"];
  "sha256:d418203b4ae6287720e893b7483b4862f539a67cfc560ccf72f3589b0f94e4d2" [label="/bin/sh -c cd /var/local/acuitra;git config core.sparseCheckout true" shape="box"];
  "sha256:be8435876ee1cacc7a9a0eff003de77deb94aeefdc7ee8642819419f5399da82" [label="/bin/sh -c cd /var/local/acuitra;echo services/named-entity-service/*> .git/info/sparse-checkout" shape="box"];
  "sha256:233f613bf49a6701b71d274f2ccf87d4cd7361269e205f3f22b2c7aeffd7e9c5" [label="/bin/sh -c cd /var/local/acuitra;git checkout master" shape="box"];
  "sha256:b9a63677fd208136b2321745ce6148c50274113411dab092ceec46d0a6808944" [label="sha256:b9a63677fd208136b2321745ce6148c50274113411dab092ceec46d0a6808944" shape="plaintext"];
  "sha256:ccc3370c59341e92262409e073bc5dd76ae6eeae9e6e89931b9553bbf7f0d31b" -> "sha256:fed5dfa812528745ccf1c32c9d468f9cfa201ac28ebaab58a666eea549db8e2c" [label=""];
  "sha256:fed5dfa812528745ccf1c32c9d468f9cfa201ac28ebaab58a666eea549db8e2c" -> "sha256:75a76135c52ab759b4d177f09929b184665b0c07b1ae5d72f3a8207436e846e9" [label=""];
  "sha256:75a76135c52ab759b4d177f09929b184665b0c07b1ae5d72f3a8207436e846e9" -> "sha256:8903fcf7cbb5abb7590cdc708b9a71deed6d79b8ee8c77aaf8ff7fd921026755" [label=""];
  "sha256:8903fcf7cbb5abb7590cdc708b9a71deed6d79b8ee8c77aaf8ff7fd921026755" -> "sha256:d418203b4ae6287720e893b7483b4862f539a67cfc560ccf72f3589b0f94e4d2" [label=""];
  "sha256:d418203b4ae6287720e893b7483b4862f539a67cfc560ccf72f3589b0f94e4d2" -> "sha256:be8435876ee1cacc7a9a0eff003de77deb94aeefdc7ee8642819419f5399da82" [label=""];
  "sha256:be8435876ee1cacc7a9a0eff003de77deb94aeefdc7ee8642819419f5399da82" -> "sha256:233f613bf49a6701b71d274f2ccf87d4cd7361269e205f3f22b2c7aeffd7e9c5" [label=""];
  "sha256:233f613bf49a6701b71d274f2ccf87d4cd7361269e205f3f22b2c7aeffd7e9c5" -> "sha256:b9a63677fd208136b2321745ce6148c50274113411dab092ceec46d0a6808944" [label=""];
}

