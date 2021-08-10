[app/sources/252776787.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:9153841a6eb7e83e0ad972b2e988b0ef77cd4ba14433980ee846807625a8fdf8" [label="/bin/sh -c apt-get update && apt-get install -y curl locales python-imaging python-pip python-setuptools sqlite3" shape="box"];
  "sha256:bb3252504bfb05f879f8717b9b67d63c3a9805b09c3018e9cb82228ee7e832c9" [label="/bin/sh -c locale-gen en_US.UTF-8 en_GB.UTF-8 fr_CH.UTF-8" shape="box"];
  "sha256:97a324826d3f52baf8bdde433e4f8b20fcfa6a0a5d005bd315bfd18d3b8bb98d" [label="/bin/sh -c cp /usr/share/zoneinfo/Europe/Zurich /etc/localtime" shape="box"];
  "sha256:b6217fc3f3c0fb8fa5f66fc505e22576a0ec04ac72cb7ebbcc18e7f0e93fcc16" [label="/bin/sh -c echo \"Europe/Zurich\" > /etc/timezone" shape="box"];
  "sha256:533b576eb07c3f0f03add327e83916c2c2eb0c37fa522a8d04293dfed2f5014b" [label="local://context" shape="ellipse"];
  "sha256:ae596c78a2fa2dfe3002046d8b6efb2b032fb62d1ea5f13d44cc90188293ac60" [label="copy{src=/media/burkionline-cloud-logo.png, dest=/tmp/burkionline-cloud-logo.png}" shape="note"];
  "sha256:13bd6fab6bd4d288a37e674622887bc29abcc6a656c0942163c8e553bdcd903d" [label="/bin/sh -c mkdir /var/log/supervisor" shape="box"];
  "sha256:7aecd388d6ae207b1bc764c879cb1b53788aac0cfb15c21f65442550c34309f1" [label="/bin/sh -c pip install supervisor" shape="box"];
  "sha256:871b4cc6491513def456b397b2f534c02da5af9d8135a48574c0c9c16c0d35bd" [label="copy{src=/configs/supervisord.conf, dest=/etc/supervisord.conf}" shape="note"];
  "sha256:dbd78ac10c3ba895c44c27943ff74d15b05815b957bbf62d15288d27fed3475d" [label="copy{src=/scripts/start.sh, dest=/opt/start.sh}" shape="note"];
  "sha256:4ccc4480c26505140a674b2b4d19e8933266501af705612cbae0fefb5df75168" [label="/bin/sh -c chmod 755 /opt/start.sh" shape="box"];
  "sha256:0cb5faa74a57475dbaddf62e8ef84fb8db3a2432dafab57760aa1c6cae646776" [label="sha256:0cb5faa74a57475dbaddf62e8ef84fb8db3a2432dafab57760aa1c6cae646776" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:9153841a6eb7e83e0ad972b2e988b0ef77cd4ba14433980ee846807625a8fdf8" [label=""];
  "sha256:9153841a6eb7e83e0ad972b2e988b0ef77cd4ba14433980ee846807625a8fdf8" -> "sha256:bb3252504bfb05f879f8717b9b67d63c3a9805b09c3018e9cb82228ee7e832c9" [label=""];
  "sha256:bb3252504bfb05f879f8717b9b67d63c3a9805b09c3018e9cb82228ee7e832c9" -> "sha256:97a324826d3f52baf8bdde433e4f8b20fcfa6a0a5d005bd315bfd18d3b8bb98d" [label=""];
  "sha256:97a324826d3f52baf8bdde433e4f8b20fcfa6a0a5d005bd315bfd18d3b8bb98d" -> "sha256:b6217fc3f3c0fb8fa5f66fc505e22576a0ec04ac72cb7ebbcc18e7f0e93fcc16" [label=""];
  "sha256:b6217fc3f3c0fb8fa5f66fc505e22576a0ec04ac72cb7ebbcc18e7f0e93fcc16" -> "sha256:ae596c78a2fa2dfe3002046d8b6efb2b032fb62d1ea5f13d44cc90188293ac60" [label=""];
  "sha256:533b576eb07c3f0f03add327e83916c2c2eb0c37fa522a8d04293dfed2f5014b" -> "sha256:ae596c78a2fa2dfe3002046d8b6efb2b032fb62d1ea5f13d44cc90188293ac60" [label=""];
  "sha256:ae596c78a2fa2dfe3002046d8b6efb2b032fb62d1ea5f13d44cc90188293ac60" -> "sha256:13bd6fab6bd4d288a37e674622887bc29abcc6a656c0942163c8e553bdcd903d" [label=""];
  "sha256:13bd6fab6bd4d288a37e674622887bc29abcc6a656c0942163c8e553bdcd903d" -> "sha256:7aecd388d6ae207b1bc764c879cb1b53788aac0cfb15c21f65442550c34309f1" [label=""];
  "sha256:7aecd388d6ae207b1bc764c879cb1b53788aac0cfb15c21f65442550c34309f1" -> "sha256:871b4cc6491513def456b397b2f534c02da5af9d8135a48574c0c9c16c0d35bd" [label=""];
  "sha256:533b576eb07c3f0f03add327e83916c2c2eb0c37fa522a8d04293dfed2f5014b" -> "sha256:871b4cc6491513def456b397b2f534c02da5af9d8135a48574c0c9c16c0d35bd" [label=""];
  "sha256:871b4cc6491513def456b397b2f534c02da5af9d8135a48574c0c9c16c0d35bd" -> "sha256:dbd78ac10c3ba895c44c27943ff74d15b05815b957bbf62d15288d27fed3475d" [label=""];
  "sha256:533b576eb07c3f0f03add327e83916c2c2eb0c37fa522a8d04293dfed2f5014b" -> "sha256:dbd78ac10c3ba895c44c27943ff74d15b05815b957bbf62d15288d27fed3475d" [label=""];
  "sha256:dbd78ac10c3ba895c44c27943ff74d15b05815b957bbf62d15288d27fed3475d" -> "sha256:4ccc4480c26505140a674b2b4d19e8933266501af705612cbae0fefb5df75168" [label=""];
  "sha256:4ccc4480c26505140a674b2b4d19e8933266501af705612cbae0fefb5df75168" -> "sha256:0cb5faa74a57475dbaddf62e8ef84fb8db3a2432dafab57760aa1c6cae646776" [label=""];
}

