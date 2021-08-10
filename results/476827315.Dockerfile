[app/sources/476827315.Dockerfile]
digraph {
  "sha256:43d8d74c3ae2ed355502e3722c89ea31b9e7354f2538e17025c0436c34347657" [label="docker-image://docker.io/library/busybox:ubuntu-14.04" shape="ellipse"];
  "sha256:723e9f9105399866217331246b0251bee4e8f535731ee8c47295c9edbaf7ceb9" [label="mkdir{path=/app}" shape="note"];
  "sha256:c4d4ff29b19cafe198e124e8ddaac2d74bb34b0a65ba0529625d603d8129a0a2" [label="local://context" shape="ellipse"];
  "sha256:10d26c43b438ba95a4f8ef626fdb087c5ccaf9adf63f7be36f570defb77f8f0d" [label="copy{src=/influxd, dest=/app/}" shape="note"];
  "sha256:487c6545c2b4367ff95c822bec66654f8487851ab1871d12fd4d997190c5c4b9" [label="/bin/sh -c influxd config > /etc/influxdb.toml" shape="box"];
  "sha256:06eef690ad951a7d210fe99ee7e797b6632e22db00cec58077fe3a647388bdb3" [label="/bin/sh -c sed -i 's/dir = \"\\/.*influxdb/dir = \"\\/data/' /etc/influxdb.toml" shape="box"];
  "sha256:d68882ef5eea0879db7062ef99ef05a48eec66f2b553c5bb37256d2a28f2cf5c" [label="sha256:d68882ef5eea0879db7062ef99ef05a48eec66f2b553c5bb37256d2a28f2cf5c" shape="plaintext"];
  "sha256:43d8d74c3ae2ed355502e3722c89ea31b9e7354f2538e17025c0436c34347657" -> "sha256:723e9f9105399866217331246b0251bee4e8f535731ee8c47295c9edbaf7ceb9" [label=""];
  "sha256:723e9f9105399866217331246b0251bee4e8f535731ee8c47295c9edbaf7ceb9" -> "sha256:10d26c43b438ba95a4f8ef626fdb087c5ccaf9adf63f7be36f570defb77f8f0d" [label=""];
  "sha256:c4d4ff29b19cafe198e124e8ddaac2d74bb34b0a65ba0529625d603d8129a0a2" -> "sha256:10d26c43b438ba95a4f8ef626fdb087c5ccaf9adf63f7be36f570defb77f8f0d" [label=""];
  "sha256:10d26c43b438ba95a4f8ef626fdb087c5ccaf9adf63f7be36f570defb77f8f0d" -> "sha256:487c6545c2b4367ff95c822bec66654f8487851ab1871d12fd4d997190c5c4b9" [label=""];
  "sha256:487c6545c2b4367ff95c822bec66654f8487851ab1871d12fd4d997190c5c4b9" -> "sha256:06eef690ad951a7d210fe99ee7e797b6632e22db00cec58077fe3a647388bdb3" [label=""];
  "sha256:06eef690ad951a7d210fe99ee7e797b6632e22db00cec58077fe3a647388bdb3" -> "sha256:d68882ef5eea0879db7062ef99ef05a48eec66f2b553c5bb37256d2a28f2cf5c" [label=""];
}

