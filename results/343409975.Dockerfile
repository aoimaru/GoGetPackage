[app/sources/343409975.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:46e1db921073b315faddff1a9b758ffb541223b71653c03370a74f77f58e6574" [label="/bin/sh -c apt-get install -y nginx" shape="box"];
  "sha256:bfb42ed63407d43db7dea6b546288f9973bd92e4a888aafd84dae2734bf685e6" [label="local://context" shape="ellipse"];
  "sha256:75ff46f199304f93da87d6a31fcaa6bbbbb758ff8e286a8c9fdc29742ad26dab" [label="copy{src=/nginx.conf, dest=/etc/nginx/nginx.conf}" shape="note"];
  "sha256:a36286a5d1dd02216f36b29d672975388c76b7a77e55f1bb5f7857060bd11da8" [label="/bin/sh -c mkdir -p /var/www/site" shape="box"];
  "sha256:160536c1250fc292b9e56f0910d10e19db7b4668ba895bb48cc691206037ae39" [label="copy{src=/index.html, dest=/var/www/site/index.html}" shape="note"];
  "sha256:295b1d5cf76867695b44290c3932812a731fb09ac27377595ff0ae9522246c2f" [label="sha256:295b1d5cf76867695b44290c3932812a731fb09ac27377595ff0ae9522246c2f" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:46e1db921073b315faddff1a9b758ffb541223b71653c03370a74f77f58e6574" [label=""];
  "sha256:46e1db921073b315faddff1a9b758ffb541223b71653c03370a74f77f58e6574" -> "sha256:75ff46f199304f93da87d6a31fcaa6bbbbb758ff8e286a8c9fdc29742ad26dab" [label=""];
  "sha256:bfb42ed63407d43db7dea6b546288f9973bd92e4a888aafd84dae2734bf685e6" -> "sha256:75ff46f199304f93da87d6a31fcaa6bbbbb758ff8e286a8c9fdc29742ad26dab" [label=""];
  "sha256:75ff46f199304f93da87d6a31fcaa6bbbbb758ff8e286a8c9fdc29742ad26dab" -> "sha256:a36286a5d1dd02216f36b29d672975388c76b7a77e55f1bb5f7857060bd11da8" [label=""];
  "sha256:a36286a5d1dd02216f36b29d672975388c76b7a77e55f1bb5f7857060bd11da8" -> "sha256:160536c1250fc292b9e56f0910d10e19db7b4668ba895bb48cc691206037ae39" [label=""];
  "sha256:bfb42ed63407d43db7dea6b546288f9973bd92e4a888aafd84dae2734bf685e6" -> "sha256:160536c1250fc292b9e56f0910d10e19db7b4668ba895bb48cc691206037ae39" [label=""];
  "sha256:160536c1250fc292b9e56f0910d10e19db7b4668ba895bb48cc691206037ae39" -> "sha256:295b1d5cf76867695b44290c3932812a731fb09ac27377595ff0ae9522246c2f" [label=""];
}

