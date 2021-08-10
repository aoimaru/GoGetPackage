[app/sources/320101858.Dockerfile]
digraph {
  "sha256:b33671b306f30367af7f45c10cb3b737dab50b89b08894cfc5226254ec2514bb" [label="docker-image://docker.io/webdevops/php:centos-7-php56@sha256:27f2c38fdc321ef724ca1566d56242e123988e6c22dc19f438c11a0e1c39e96f" shape="ellipse"];
  "sha256:6946cf480c4316882611497c2ecdc2dd012033f643a031392d1764a93702e8fe" [label="local://context" shape="ellipse"];
  "sha256:6e10aff595655f40b9568156e8f6cdb222cdd8d5ed3cab345d4b3ecd2b28807a" [label="copy{src=/conf, dest=/opt/docker/}" shape="note"];
  "sha256:1cac87f38fca634be2917e50cc3287573ac23a1378559086bcf2e802add8ccff" [label="/bin/sh -c set -x     && yum-install         httpd         mod_ssl \t&& sed -ri ' \t\ts!^(\\s*CustomLog)\\s+\\S+!\\1 /proc/self/fd/1!g; \t\ts!^(\\s*ErrorLog)\\s+\\S+!\\1 /proc/self/fd/2!g; \t\t' /etc/httpd/conf/httpd.conf /etc/httpd/conf.d/ssl.conf     && docker-run-bootstrap     && docker-image-cleanup" shape="box"];
  "sha256:9d599e95f63104c8fa9bda62a92206396c4710b01d8ea25c992083b89dbb4a27" [label="sha256:9d599e95f63104c8fa9bda62a92206396c4710b01d8ea25c992083b89dbb4a27" shape="plaintext"];
  "sha256:b33671b306f30367af7f45c10cb3b737dab50b89b08894cfc5226254ec2514bb" -> "sha256:6e10aff595655f40b9568156e8f6cdb222cdd8d5ed3cab345d4b3ecd2b28807a" [label=""];
  "sha256:6946cf480c4316882611497c2ecdc2dd012033f643a031392d1764a93702e8fe" -> "sha256:6e10aff595655f40b9568156e8f6cdb222cdd8d5ed3cab345d4b3ecd2b28807a" [label=""];
  "sha256:6e10aff595655f40b9568156e8f6cdb222cdd8d5ed3cab345d4b3ecd2b28807a" -> "sha256:1cac87f38fca634be2917e50cc3287573ac23a1378559086bcf2e802add8ccff" [label=""];
  "sha256:1cac87f38fca634be2917e50cc3287573ac23a1378559086bcf2e802add8ccff" -> "sha256:9d599e95f63104c8fa9bda62a92206396c4710b01d8ea25c992083b89dbb4a27" [label=""];
}

