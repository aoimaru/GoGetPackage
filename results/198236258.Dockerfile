[app/sources/198236258.Dockerfile]
digraph {
  "sha256:cc47af5d092e6703c4baceaab393c283b63709ad6553bc047906458afb4c9b0d" [label="docker-image://docker.io/library/debian:jessie-slim" shape="ellipse"];
  "sha256:e29027d329d96f6ab3b05bbb75ced9b15e12a4ca38e31c6ffc6c0a07692b0e55" [label="mkdir{path=/usr/lib/unifi}" shape="note"];
  "sha256:5d4d156ff78b2be713825e1ebc8737e4f534c37a363cfcb30b7bb88108cc4039" [label="local://context" shape="ellipse"];
  "sha256:871e22f65c42dd45212919376db9a94ea1806f1f52b1f3cfbc6f0a76125d0ee5" [label="copy{src=/root, dest=/}" shape="note"];
  "sha256:737d92f9effd8c54347c44f598af74e9b17af8fa4bfdb10ee2de475d2e6c9206" [label="/bin/sh -c set -x     && groupadd -r unifi -g $PGID     && useradd --no-log-init -r -u $PUID -g $PGID unifi     && mkdir /usr/share/man/man1     && echo \"deb http://archive.debian.org/debian jessie-backports main\"         > /etc/apt/sources.list.d/jessie-backports.list     && apt-get -o Acquire::Check-Valid-Until=false -qqy update > /dev/null     && apt-get -qqy --no-install-recommends install         binutils         curl         gosu > /dev/null     && apt-get -qqy -t jessie-backports --no-install-recommends install         ca-certificates-java         openjdk-8-jre-headless > /dev/null     && curl -sSL https://dl.ubnt.com/unifi/${VERSION}/unifi_sysvinit_all.deb -o /tmp/unifi-${VERSION}.deb     && apt-get -qqy autoremove --purge > /dev/null     && apt-get -qqy clean autoclean > /dev/null     && dpkg --force-all -i /tmp/unifi-${VERSION}.deb     && bash -c 'mkdir -p {data,logs,run,cert}'     && chown -R unifi:unifi /usr/lib/unifi     && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /var/log/*" shape="box"];
  "sha256:1120d3b1127a41cd138fc3753795b4ac7ceb07377db8e116b3ba0867e94b6ced" [label="sha256:1120d3b1127a41cd138fc3753795b4ac7ceb07377db8e116b3ba0867e94b6ced" shape="plaintext"];
  "sha256:cc47af5d092e6703c4baceaab393c283b63709ad6553bc047906458afb4c9b0d" -> "sha256:e29027d329d96f6ab3b05bbb75ced9b15e12a4ca38e31c6ffc6c0a07692b0e55" [label=""];
  "sha256:e29027d329d96f6ab3b05bbb75ced9b15e12a4ca38e31c6ffc6c0a07692b0e55" -> "sha256:871e22f65c42dd45212919376db9a94ea1806f1f52b1f3cfbc6f0a76125d0ee5" [label=""];
  "sha256:5d4d156ff78b2be713825e1ebc8737e4f534c37a363cfcb30b7bb88108cc4039" -> "sha256:871e22f65c42dd45212919376db9a94ea1806f1f52b1f3cfbc6f0a76125d0ee5" [label=""];
  "sha256:871e22f65c42dd45212919376db9a94ea1806f1f52b1f3cfbc6f0a76125d0ee5" -> "sha256:737d92f9effd8c54347c44f598af74e9b17af8fa4bfdb10ee2de475d2e6c9206" [label=""];
  "sha256:737d92f9effd8c54347c44f598af74e9b17af8fa4bfdb10ee2de475d2e6c9206" -> "sha256:1120d3b1127a41cd138fc3753795b4ac7ceb07377db8e116b3ba0867e94b6ced" [label=""];
}

