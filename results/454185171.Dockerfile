[app/sources/454185171.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:4c1ba9004fa3ca5c87c96579cca423a293ea7e21085c380c69a024cf5d32c99a" [label="/bin/sh -c apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 67ECE5605BCF1346" shape="box"];
  "sha256:470c0ed77cf2826ffbe3ba4c3f9c6558547ca3340da241446616b2ba18982fba" [label="/bin/sh -c echo \"deb http://deb.i2p2.no/ trusty main\" >> /etc/apt/sources.list.d/i2p.list" shape="box"];
  "sha256:552d525dd2aae2c3c3707fa7d6ea985256c2be2233e0e797fc7e5669d71079a7" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:85e19f27a7a94717a03440d04070575288ea2432662588e18a4f364738ec4976" [label="/bin/sh -c apt-get -y --force-yes install i2p" shape="box"];
  "sha256:b2a86e25f83d692534bec9ea9e1d28231f6c38146964a7381faaf79b6203a5d6" [label="/bin/sh -c sed -i s/RUN_DAEMON=\\\"false\\\"/RUN_DAEMON=\\\"true\\\"/ /etc/default/i2p" shape="box"];
  "sha256:220ed23add633395d6ccea5ed915d8d5044e628df8a066e6fc5567c3160f1503" [label="/bin/sh -c /etc/init.d/i2p start" shape="box"];
  "sha256:5e7a091f208b8d0ac95c6b294a23e1b05cc836b5119a3ef5d380ff7eebaa9c22" [label="/bin/sh -c echo \"i2cp.tcp.bindAllInterfaces=true\" >> /var/lib/i2p/i2p-config/router.config" shape="box"];
  "sha256:82bdb5eb2090967ed18b6270e9d354e1b7521bc59a140ad3a40f6c27cba4482f" [label="/bin/sh -c sed -i s/::1,127.0.0.1/0.0.0.0/ /var/lib/i2p/i2p-config/clients.config" shape="box"];
  "sha256:0343a5c19d5b3e8380fc7ec45b4c3915e6293a2f462c77e89f5db959297aeeb7" [label="sha256:0343a5c19d5b3e8380fc7ec45b4c3915e6293a2f462c77e89f5db959297aeeb7" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:4c1ba9004fa3ca5c87c96579cca423a293ea7e21085c380c69a024cf5d32c99a" [label=""];
  "sha256:4c1ba9004fa3ca5c87c96579cca423a293ea7e21085c380c69a024cf5d32c99a" -> "sha256:470c0ed77cf2826ffbe3ba4c3f9c6558547ca3340da241446616b2ba18982fba" [label=""];
  "sha256:470c0ed77cf2826ffbe3ba4c3f9c6558547ca3340da241446616b2ba18982fba" -> "sha256:552d525dd2aae2c3c3707fa7d6ea985256c2be2233e0e797fc7e5669d71079a7" [label=""];
  "sha256:552d525dd2aae2c3c3707fa7d6ea985256c2be2233e0e797fc7e5669d71079a7" -> "sha256:85e19f27a7a94717a03440d04070575288ea2432662588e18a4f364738ec4976" [label=""];
  "sha256:85e19f27a7a94717a03440d04070575288ea2432662588e18a4f364738ec4976" -> "sha256:b2a86e25f83d692534bec9ea9e1d28231f6c38146964a7381faaf79b6203a5d6" [label=""];
  "sha256:b2a86e25f83d692534bec9ea9e1d28231f6c38146964a7381faaf79b6203a5d6" -> "sha256:220ed23add633395d6ccea5ed915d8d5044e628df8a066e6fc5567c3160f1503" [label=""];
  "sha256:220ed23add633395d6ccea5ed915d8d5044e628df8a066e6fc5567c3160f1503" -> "sha256:5e7a091f208b8d0ac95c6b294a23e1b05cc836b5119a3ef5d380ff7eebaa9c22" [label=""];
  "sha256:5e7a091f208b8d0ac95c6b294a23e1b05cc836b5119a3ef5d380ff7eebaa9c22" -> "sha256:82bdb5eb2090967ed18b6270e9d354e1b7521bc59a140ad3a40f6c27cba4482f" [label=""];
  "sha256:82bdb5eb2090967ed18b6270e9d354e1b7521bc59a140ad3a40f6c27cba4482f" -> "sha256:0343a5c19d5b3e8380fc7ec45b4c3915e6293a2f462c77e89f5db959297aeeb7" [label=""];
}

