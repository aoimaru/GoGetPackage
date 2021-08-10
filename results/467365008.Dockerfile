[app/sources/467365008.Dockerfile]
digraph {
  "sha256:9e4e6667be5d406ed8d42e84c6658bde9f7d4e35d1294f79534c3725ca38a022" [label="docker-image://docker.io/arm32v7/influxdb:latest" shape="ellipse"];
  "sha256:1c7f0061665d2d2a63a79fbf56ef56f0ac3944c27537fa825b73e0257e3a4c4e" [label="/bin/sh -c echo \"LABEL=influxdb /mnt/influxdb ext4 rw,relatime,discard,data=ordered 0 2\"  >> /etc/fstab" shape="box"];
  "sha256:893a4b1acb8436ef8a13ee4778fb5797ee4dc82de435ca25bca61f60748776d6" [label="local://context" shape="ellipse"];
  "sha256:68f8ee5eda4159f32795a6218acd8ffbe76ed299398ca3c63e36e48b01722d50" [label="copy{src=/my_entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:3212ebb8b216010fffa6f45e1465b0061dd59e0c2098e68a5ae519854829b2ea" [label="/bin/sh -c chmod +x /entrypoint.sh" shape="box"];
  "sha256:84c7e9152049f2a7598185c0afcd424cc4442539f380019524246a1290b66885" [label="copy{src=/influxdb.conf, dest=/etc/influxdb}" shape="note"];
  "sha256:4a6b0fff4327a276cf0933840806304dada72830ed7545f45655517d8795688f" [label="sha256:4a6b0fff4327a276cf0933840806304dada72830ed7545f45655517d8795688f" shape="plaintext"];
  "sha256:9e4e6667be5d406ed8d42e84c6658bde9f7d4e35d1294f79534c3725ca38a022" -> "sha256:1c7f0061665d2d2a63a79fbf56ef56f0ac3944c27537fa825b73e0257e3a4c4e" [label=""];
  "sha256:1c7f0061665d2d2a63a79fbf56ef56f0ac3944c27537fa825b73e0257e3a4c4e" -> "sha256:68f8ee5eda4159f32795a6218acd8ffbe76ed299398ca3c63e36e48b01722d50" [label=""];
  "sha256:893a4b1acb8436ef8a13ee4778fb5797ee4dc82de435ca25bca61f60748776d6" -> "sha256:68f8ee5eda4159f32795a6218acd8ffbe76ed299398ca3c63e36e48b01722d50" [label=""];
  "sha256:68f8ee5eda4159f32795a6218acd8ffbe76ed299398ca3c63e36e48b01722d50" -> "sha256:3212ebb8b216010fffa6f45e1465b0061dd59e0c2098e68a5ae519854829b2ea" [label=""];
  "sha256:3212ebb8b216010fffa6f45e1465b0061dd59e0c2098e68a5ae519854829b2ea" -> "sha256:84c7e9152049f2a7598185c0afcd424cc4442539f380019524246a1290b66885" [label=""];
  "sha256:893a4b1acb8436ef8a13ee4778fb5797ee4dc82de435ca25bca61f60748776d6" -> "sha256:84c7e9152049f2a7598185c0afcd424cc4442539f380019524246a1290b66885" [label=""];
  "sha256:84c7e9152049f2a7598185c0afcd424cc4442539f380019524246a1290b66885" -> "sha256:4a6b0fff4327a276cf0933840806304dada72830ed7545f45655517d8795688f" [label=""];
}

