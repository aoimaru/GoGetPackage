[app/sources/152752438.Dockerfile]
digraph {
  "sha256:b2f9a302e98f136659f2ea4822689267fe9ac7ccb5fb3e5bfc3868b36258273a" [label="local://context" shape="ellipse"];
  "sha256:f175f18f8ffb9ac0911211ea1fcdce9d1b012b4580154a0fb00358ecbe1e3154" [label="docker-image://docker.io/maxexcloo/debian:latest" shape="ellipse"];
  "sha256:7541aa94deb9246416fbae6f53a3560183be3d027933cfcbd2f7f65278f11224" [label="/bin/sh -c apt-get update && \tapt-get install -y openssh-server && \tapt-get clean && \techo -n > /var/lib/apt/extended_states && \trm -rf /tmp/* /var/lib/apt/lists/* /var/tmp/*" shape="box"];
  "sha256:fc7e20649b01b227aee17dfe12d603859b8926ec9dc21a48bbebb900d027a763" [label="/bin/sh -c mkdir -p /var/run/sshd" shape="box"];
  "sha256:a082615ade73d7550e300100b7c9b9e397d4dfa35cbfb1306c9d2dca744e6c6a" [label="copy{src=/supervisord.conf, dest=/etc/supervisor/conf.d/sshd.conf}" shape="note"];
  "sha256:e625a0c1533e292409ea06e4805d13c039e7099e44bb853370f0b800ba95925c" [label="sha256:e625a0c1533e292409ea06e4805d13c039e7099e44bb853370f0b800ba95925c" shape="plaintext"];
  "sha256:f175f18f8ffb9ac0911211ea1fcdce9d1b012b4580154a0fb00358ecbe1e3154" -> "sha256:7541aa94deb9246416fbae6f53a3560183be3d027933cfcbd2f7f65278f11224" [label=""];
  "sha256:7541aa94deb9246416fbae6f53a3560183be3d027933cfcbd2f7f65278f11224" -> "sha256:fc7e20649b01b227aee17dfe12d603859b8926ec9dc21a48bbebb900d027a763" [label=""];
  "sha256:fc7e20649b01b227aee17dfe12d603859b8926ec9dc21a48bbebb900d027a763" -> "sha256:a082615ade73d7550e300100b7c9b9e397d4dfa35cbfb1306c9d2dca744e6c6a" [label=""];
  "sha256:b2f9a302e98f136659f2ea4822689267fe9ac7ccb5fb3e5bfc3868b36258273a" -> "sha256:a082615ade73d7550e300100b7c9b9e397d4dfa35cbfb1306c9d2dca744e6c6a" [label=""];
  "sha256:a082615ade73d7550e300100b7c9b9e397d4dfa35cbfb1306c9d2dca744e6c6a" -> "sha256:e625a0c1533e292409ea06e4805d13c039e7099e44bb853370f0b800ba95925c" [label=""];
}

