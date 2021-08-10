[app/sources/196640300.Dockerfile]
digraph {
  "sha256:5449f8b020daa84b27d94c95f11ce0636f834c12811962efef1a835946c99c9f" [label="docker-image://docker.io/library/openjdk:7-jre-alpine" shape="ellipse"];
  "sha256:c5a305a963fd4571685ca795244b91fcfcb2695999ab56fd015d183c73a43932" [label="/bin/sh -c apk add --no-cache curl &&     mkdir -p /opt/spotlight &&     cd /opt/spotlight &&     curl -O \"http://$RELEASE_SERVER/spotlight/$RELEASE_FILENAME\" &&     curl -O \"http://$RELEASE_SERVER/2016-04/it/model/$LANGUAGE_MODEL\" &&     tar xvf $LANGUAGE_MODEL  &&     rm  $LANGUAGE_MODEL &&     apk del curl" shape="box"];
  "sha256:3998d2a7fca0ad7710e55e904e817d79b64520b22a42ccb82475f90305c58fd4" [label="local://context" shape="ellipse"];
  "sha256:578ce60c89392ceb6e559be7dda12c60cf11097bed8ea715fb9c5ad98bcf3480" [label="copy{src=/spotlight.sh, dest=/bin/spotlight.sh}" shape="note"];
  "sha256:9b460838ecab78c268df9313e242c6d848c21f545677662a3db9fa09e360c220" [label="/bin/sh -c chmod +x /bin/spotlight.sh" shape="box"];
  "sha256:63288a4ced9953a3c2c099309bafe126b1765f353cdd99e5cb1cbeccc3da7bf0" [label="sha256:63288a4ced9953a3c2c099309bafe126b1765f353cdd99e5cb1cbeccc3da7bf0" shape="plaintext"];
  "sha256:5449f8b020daa84b27d94c95f11ce0636f834c12811962efef1a835946c99c9f" -> "sha256:c5a305a963fd4571685ca795244b91fcfcb2695999ab56fd015d183c73a43932" [label=""];
  "sha256:c5a305a963fd4571685ca795244b91fcfcb2695999ab56fd015d183c73a43932" -> "sha256:578ce60c89392ceb6e559be7dda12c60cf11097bed8ea715fb9c5ad98bcf3480" [label=""];
  "sha256:3998d2a7fca0ad7710e55e904e817d79b64520b22a42ccb82475f90305c58fd4" -> "sha256:578ce60c89392ceb6e559be7dda12c60cf11097bed8ea715fb9c5ad98bcf3480" [label=""];
  "sha256:578ce60c89392ceb6e559be7dda12c60cf11097bed8ea715fb9c5ad98bcf3480" -> "sha256:9b460838ecab78c268df9313e242c6d848c21f545677662a3db9fa09e360c220" [label=""];
  "sha256:9b460838ecab78c268df9313e242c6d848c21f545677662a3db9fa09e360c220" -> "sha256:63288a4ced9953a3c2c099309bafe126b1765f353cdd99e5cb1cbeccc3da7bf0" [label=""];
}

