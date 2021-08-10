[app/sources/252799839.Dockerfile]
digraph {
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" [label="docker-image://docker.io/library/alpine:3.7" shape="ellipse"];
  "sha256:457ecbcec74055b0a1fc843e9083703bc56ca6667ed7daa3aa3c06a4627c4225" [label="/bin/sh -c apk add --update --no-cache openldap openldap-backend-all openldap-clients openldap-mqtt openldap-overlay-all openldap-passwd-pbkdf2" shape="box"];
  "sha256:623c24edc431202e245f1822a1f4ebfcb26dabbf2016cac4c66c284841c7b1af" [label="local://context" shape="ellipse"];
  "sha256:a8adb070aa7288be3be3ef75b9892e33308a184586d90e42ed4ffdd535d546ec" [label="copy{src=/source/openldap, dest=/etc/openldap}" shape="note"];
  "sha256:eab2569bd831decd1aa85276c4e1fbdb3c05e7b367332d416597b9165dd2ca41" [label="sha256:eab2569bd831decd1aa85276c4e1fbdb3c05e7b367332d416597b9165dd2ca41" shape="plaintext"];
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" -> "sha256:457ecbcec74055b0a1fc843e9083703bc56ca6667ed7daa3aa3c06a4627c4225" [label=""];
  "sha256:457ecbcec74055b0a1fc843e9083703bc56ca6667ed7daa3aa3c06a4627c4225" -> "sha256:a8adb070aa7288be3be3ef75b9892e33308a184586d90e42ed4ffdd535d546ec" [label=""];
  "sha256:623c24edc431202e245f1822a1f4ebfcb26dabbf2016cac4c66c284841c7b1af" -> "sha256:a8adb070aa7288be3be3ef75b9892e33308a184586d90e42ed4ffdd535d546ec" [label=""];
  "sha256:a8adb070aa7288be3be3ef75b9892e33308a184586d90e42ed4ffdd535d546ec" -> "sha256:eab2569bd831decd1aa85276c4e1fbdb3c05e7b367332d416597b9165dd2ca41" [label=""];
}

