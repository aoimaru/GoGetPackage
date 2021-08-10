[app/sources/135583993.Dockerfile]
digraph {
  "sha256:39742de0b16baa8da444fcf0bb1d254ac872f1a018be52dca1f307d2a8d11e0f" [label="local://context" shape="ellipse"];
  "sha256:bdf5ab2de7f571fda9b5f0198be240a0f9a5f6012c1d8362597525038689e4c5" [label="docker-image://docker.io/library/alpine:3.4" shape="ellipse"];
  "sha256:33b8c2c7a6e6693eaeb5a4e2b1becd60d0c26f4d8bd1b4523b2aa730354cda00" [label="/bin/sh -c apk add --update rsyslog rsyslog-tls logrotate  && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:511beb1559268632833b9ca662ed9bb9897d20b4e482e6e84ebbded3e1fc1cc9" [label="/bin/sh -c mkdir -p /var/log/remote/     && mkdir -p /var/spool/rsyslog     && chmod 644 /var/log/remote/ -R && chmod 644 /var/spool/rsyslog" shape="box"];
  "sha256:c2c4419032b6acc6ef741803f551d98f7ad8e4330079b4d5412af8ef70a32f82" [label="copy{src=/etc/rsyslog.conf, dest=/etc/rsyslog.conf}" shape="note"];
  "sha256:597b7105f9d28d1b1a2bb8521649086bfd1f831cae000e6b130ac06813367f68" [label="copy{src=/etc/logrotate.conf, dest=/etc/logrotate.conf}" shape="note"];
  "sha256:7586cb1e7c973a7cd7faf8d397dd25526427686ade9e4fd69372bffcbb04def9" [label="/bin/sh -c chmod 644 /etc/logrotate.conf" shape="box"];
  "sha256:6ad5f5e477a866553f6608f232a21c0bd27b6b231e6d4ae4c8474ce4c79c2d92" [label="/bin/sh -c chmod 644 /etc/rsyslog.conf" shape="box"];
  "sha256:21dac6befd03ceeb31cf1cdfe304a5caec9ddc5b03122bd68c01457186f61bb3" [label="copy{src=/rsyslog.d/*, dest=/etc/rsyslog.d/}" shape="note"];
  "sha256:dd4502bc652de46b9baf0f7fdc7841a44b3f31c83cd0e5ec7d62c0e9e161c531" [label="copy{src=/run-logrotate, dest=/run-logrotate}" shape="note"];
  "sha256:90e1436bdda81a6279537d0d90cbdf7c86e30c20157771554c25e8084ae408ea" [label="copy{src=/entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:5e621439f4a77b16ff981a8dd0aaf17ad23031a800b08642fb198dfc3b7cad27" [label="/bin/sh -c chmod 755 /run-logrotate" shape="box"];
  "sha256:7146979019b886a80c0ea31b6bc21adc5369ad931bbd514f4e91faa3dfa9bd72" [label="/bin/sh -c chmod 755 /entrypoint.sh" shape="box"];
  "sha256:2fd748ac979642646e987a4386a09c1580d84c6e3f20e67ce93c2620308b4dd1" [label="sha256:2fd748ac979642646e987a4386a09c1580d84c6e3f20e67ce93c2620308b4dd1" shape="plaintext"];
  "sha256:bdf5ab2de7f571fda9b5f0198be240a0f9a5f6012c1d8362597525038689e4c5" -> "sha256:33b8c2c7a6e6693eaeb5a4e2b1becd60d0c26f4d8bd1b4523b2aa730354cda00" [label=""];
  "sha256:33b8c2c7a6e6693eaeb5a4e2b1becd60d0c26f4d8bd1b4523b2aa730354cda00" -> "sha256:511beb1559268632833b9ca662ed9bb9897d20b4e482e6e84ebbded3e1fc1cc9" [label=""];
  "sha256:511beb1559268632833b9ca662ed9bb9897d20b4e482e6e84ebbded3e1fc1cc9" -> "sha256:c2c4419032b6acc6ef741803f551d98f7ad8e4330079b4d5412af8ef70a32f82" [label=""];
  "sha256:39742de0b16baa8da444fcf0bb1d254ac872f1a018be52dca1f307d2a8d11e0f" -> "sha256:c2c4419032b6acc6ef741803f551d98f7ad8e4330079b4d5412af8ef70a32f82" [label=""];
  "sha256:c2c4419032b6acc6ef741803f551d98f7ad8e4330079b4d5412af8ef70a32f82" -> "sha256:597b7105f9d28d1b1a2bb8521649086bfd1f831cae000e6b130ac06813367f68" [label=""];
  "sha256:39742de0b16baa8da444fcf0bb1d254ac872f1a018be52dca1f307d2a8d11e0f" -> "sha256:597b7105f9d28d1b1a2bb8521649086bfd1f831cae000e6b130ac06813367f68" [label=""];
  "sha256:597b7105f9d28d1b1a2bb8521649086bfd1f831cae000e6b130ac06813367f68" -> "sha256:7586cb1e7c973a7cd7faf8d397dd25526427686ade9e4fd69372bffcbb04def9" [label=""];
  "sha256:7586cb1e7c973a7cd7faf8d397dd25526427686ade9e4fd69372bffcbb04def9" -> "sha256:6ad5f5e477a866553f6608f232a21c0bd27b6b231e6d4ae4c8474ce4c79c2d92" [label=""];
  "sha256:6ad5f5e477a866553f6608f232a21c0bd27b6b231e6d4ae4c8474ce4c79c2d92" -> "sha256:21dac6befd03ceeb31cf1cdfe304a5caec9ddc5b03122bd68c01457186f61bb3" [label=""];
  "sha256:39742de0b16baa8da444fcf0bb1d254ac872f1a018be52dca1f307d2a8d11e0f" -> "sha256:21dac6befd03ceeb31cf1cdfe304a5caec9ddc5b03122bd68c01457186f61bb3" [label=""];
  "sha256:21dac6befd03ceeb31cf1cdfe304a5caec9ddc5b03122bd68c01457186f61bb3" -> "sha256:dd4502bc652de46b9baf0f7fdc7841a44b3f31c83cd0e5ec7d62c0e9e161c531" [label=""];
  "sha256:39742de0b16baa8da444fcf0bb1d254ac872f1a018be52dca1f307d2a8d11e0f" -> "sha256:dd4502bc652de46b9baf0f7fdc7841a44b3f31c83cd0e5ec7d62c0e9e161c531" [label=""];
  "sha256:dd4502bc652de46b9baf0f7fdc7841a44b3f31c83cd0e5ec7d62c0e9e161c531" -> "sha256:90e1436bdda81a6279537d0d90cbdf7c86e30c20157771554c25e8084ae408ea" [label=""];
  "sha256:39742de0b16baa8da444fcf0bb1d254ac872f1a018be52dca1f307d2a8d11e0f" -> "sha256:90e1436bdda81a6279537d0d90cbdf7c86e30c20157771554c25e8084ae408ea" [label=""];
  "sha256:90e1436bdda81a6279537d0d90cbdf7c86e30c20157771554c25e8084ae408ea" -> "sha256:5e621439f4a77b16ff981a8dd0aaf17ad23031a800b08642fb198dfc3b7cad27" [label=""];
  "sha256:5e621439f4a77b16ff981a8dd0aaf17ad23031a800b08642fb198dfc3b7cad27" -> "sha256:7146979019b886a80c0ea31b6bc21adc5369ad931bbd514f4e91faa3dfa9bd72" [label=""];
  "sha256:7146979019b886a80c0ea31b6bc21adc5369ad931bbd514f4e91faa3dfa9bd72" -> "sha256:2fd748ac979642646e987a4386a09c1580d84c6e3f20e67ce93c2620308b4dd1" [label=""];
}

