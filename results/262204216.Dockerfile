[app/sources/262204216.Dockerfile]
digraph {
  "sha256:e30812f5143dde4a7c37d86630569edeb80abb4760b510c649e872581f07c557" [label="docker-image://docker.io/eboraas/apache-php:latest@sha256:6f3d39b2aac69a45ffac146b8f1851c1c580ee753475c82222fb2dbd1e00c673" shape="ellipse"];
  "sha256:89b37e40abc8977d4435bb1da01bb6ba4b1142e6abd58f001926b7e672dcc201" [label="local://context" shape="ellipse"];
  "sha256:7491fddf997dff55f6325eeb066801f1eccb442cf5a9cbc73f451c69b61c364c" [label="copy{src=/src, dest=/var/www/html/}" shape="note"];
  "sha256:ba349018ca2b37f151e32420e806310828f5adeed9391d22554a66497df2605d" [label="/bin/sh -c rm /var/www/html/index.html     && chmod -R 655 /var/www/html     && chmod -R 777 /var/www/html/upload     && chmod 655  /var/www/html/upload/index.html" shape="box"];
  "sha256:fd8aff33847a89bd2c4fb5c494afe1d8a1860c2ac90411ff923a257ce59fe939" [label="sha256:fd8aff33847a89bd2c4fb5c494afe1d8a1860c2ac90411ff923a257ce59fe939" shape="plaintext"];
  "sha256:e30812f5143dde4a7c37d86630569edeb80abb4760b510c649e872581f07c557" -> "sha256:7491fddf997dff55f6325eeb066801f1eccb442cf5a9cbc73f451c69b61c364c" [label=""];
  "sha256:89b37e40abc8977d4435bb1da01bb6ba4b1142e6abd58f001926b7e672dcc201" -> "sha256:7491fddf997dff55f6325eeb066801f1eccb442cf5a9cbc73f451c69b61c364c" [label=""];
  "sha256:7491fddf997dff55f6325eeb066801f1eccb442cf5a9cbc73f451c69b61c364c" -> "sha256:ba349018ca2b37f151e32420e806310828f5adeed9391d22554a66497df2605d" [label=""];
  "sha256:ba349018ca2b37f151e32420e806310828f5adeed9391d22554a66497df2605d" -> "sha256:fd8aff33847a89bd2c4fb5c494afe1d8a1860c2ac90411ff923a257ce59fe939" [label=""];
}

