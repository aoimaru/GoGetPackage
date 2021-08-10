[app/sources/349384510.Dockerfile]
digraph {
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" [label="docker-image://docker.io/library/fedora:latest" shape="ellipse"];
  "sha256:758795f4bbd9678c7962df2327dc04ade046a3c01182ea1bacecd9e9ad9bd7d9" [label="/bin/sh -c yum -y install ed iproute python-dbus PyYAML yum-utils pyOpenSSL python-cryptography python-lxml java-1.8.0-openjdk java-1.8.0-openjdk-devel httpd-tools libselinux-python python-httplib2 python-jinja2 python-keyczar python-paramiko python-passlib python-setuptools sshpass rsync" shape="box"];
  "sha256:6e0e50a09a4a135395def72250f3d2f5e2d9a9488a10fe94c3946efe2adee4f8" [label="/bin/sh -c chmod 770 /etc" shape="box"];
  "sha256:5a4052e41bfda3f2b79fec0d9cf1a38efa2a516a93b61e4469b94f9d489a89be" [label="/bin/sh -c adduser --system -s /bin/bash -u 1234321 -g 0 ansible" shape="box"];
  "sha256:46b7e1ac2efe63f1337ae9bc9337630bddfde10c7d044cdda43c9560096cf8e8" [label="/bin/sh -c chmod 664 /etc/passwd /etc/group" shape="box"];
  "sha256:471959cd9e75ede2e3b0c90ad78233210297cdba1591d2d4873241b62797f757" [label="sha256:471959cd9e75ede2e3b0c90ad78233210297cdba1591d2d4873241b62797f757" shape="plaintext"];
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" -> "sha256:758795f4bbd9678c7962df2327dc04ade046a3c01182ea1bacecd9e9ad9bd7d9" [label=""];
  "sha256:758795f4bbd9678c7962df2327dc04ade046a3c01182ea1bacecd9e9ad9bd7d9" -> "sha256:6e0e50a09a4a135395def72250f3d2f5e2d9a9488a10fe94c3946efe2adee4f8" [label=""];
  "sha256:6e0e50a09a4a135395def72250f3d2f5e2d9a9488a10fe94c3946efe2adee4f8" -> "sha256:5a4052e41bfda3f2b79fec0d9cf1a38efa2a516a93b61e4469b94f9d489a89be" [label=""];
  "sha256:5a4052e41bfda3f2b79fec0d9cf1a38efa2a516a93b61e4469b94f9d489a89be" -> "sha256:46b7e1ac2efe63f1337ae9bc9337630bddfde10c7d044cdda43c9560096cf8e8" [label=""];
  "sha256:46b7e1ac2efe63f1337ae9bc9337630bddfde10c7d044cdda43c9560096cf8e8" -> "sha256:471959cd9e75ede2e3b0c90ad78233210297cdba1591d2d4873241b62797f757" [label=""];
}

