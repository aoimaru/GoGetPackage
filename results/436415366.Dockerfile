[app/sources/436415366.Dockerfile]
digraph {
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:cbe9d929ffdd86a17195d44ef52a152249929067a02d312251d7bf4c8a53c02e" [label="/bin/sh -c mkdir -p /root/.ssh && chown root:root /root/.ssh && chmod 755 /root/.ssh" shape="box"];
  "sha256:f55c5df64b7008d6cef6a095a1511d612f9750e0bb251de62488522f40e414c8" [label="/bin/sh -c echo 'ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEA6NF8iallvQVp22WDkTkyrtvp9eWW6A8YVr+kz4TjGYe7gHzIw+niNltGEFHzD8+v1I2YJ6oXevct1YeS0o9HZyN1Q9qgCgzUFtdOKLv6IedplqoPkcmF0aYet2PkEDo3MlTBckFXPITAMzF8dJSIFo9D8HfdOV0IAdx4O7PtixWKn5y2hMNG0zQPyUecp4pzC6kivAIhyfHilFR61RGL+GPXQ2MWZWFYbAGjyiYJnAmCP3NOTd0jMZEnDkbUvxhMmBYSdETk1rRgm+R4LOzFUGaHqHDLKLX+FIPKcF96hrucXzcWyLbIbEgE98OHlnVYCzRdK8jlqm8tehUc9c9WhQ== vagrant insecure public key' > /root/.ssh/authorized_keys" shape="box"];
  "sha256:3f4b46dee826b118b30d157094f8195e5e56891b2321ccb2f135fba5cbf67880" [label="/bin/sh -c chmod 0644 /root/.ssh/authorized_keys && chown root:root /root/.ssh/authorized_keys" shape="box"];
  "sha256:b9ad91a53013cf4bb742ac2949940c26238c03388e61598c64af14f8ed123c21" [label="/bin/sh -c apt-get update && apt-get install -y openssh-server" shape="box"];
  "sha256:60b41919fd1d03ce58473b75baf445b969f1ff47adbfa960fce0f4c5e7979082" [label="/bin/sh -c mkdir /var/run/sshd" shape="box"];
  "sha256:0c426f3f4e7ca81d280ccc351ce6d344b0c2b41cb506c1ff5d1d7a9158c42ddd" [label="sha256:0c426f3f4e7ca81d280ccc351ce6d344b0c2b41cb506c1ff5d1d7a9158c42ddd" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:cbe9d929ffdd86a17195d44ef52a152249929067a02d312251d7bf4c8a53c02e" [label=""];
  "sha256:cbe9d929ffdd86a17195d44ef52a152249929067a02d312251d7bf4c8a53c02e" -> "sha256:f55c5df64b7008d6cef6a095a1511d612f9750e0bb251de62488522f40e414c8" [label=""];
  "sha256:f55c5df64b7008d6cef6a095a1511d612f9750e0bb251de62488522f40e414c8" -> "sha256:3f4b46dee826b118b30d157094f8195e5e56891b2321ccb2f135fba5cbf67880" [label=""];
  "sha256:3f4b46dee826b118b30d157094f8195e5e56891b2321ccb2f135fba5cbf67880" -> "sha256:b9ad91a53013cf4bb742ac2949940c26238c03388e61598c64af14f8ed123c21" [label=""];
  "sha256:b9ad91a53013cf4bb742ac2949940c26238c03388e61598c64af14f8ed123c21" -> "sha256:60b41919fd1d03ce58473b75baf445b969f1ff47adbfa960fce0f4c5e7979082" [label=""];
  "sha256:60b41919fd1d03ce58473b75baf445b969f1ff47adbfa960fce0f4c5e7979082" -> "sha256:0c426f3f4e7ca81d280ccc351ce6d344b0c2b41cb506c1ff5d1d7a9158c42ddd" [label=""];
}

