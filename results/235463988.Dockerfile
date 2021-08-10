[app/sources/235463988.Dockerfile]
digraph {
  "sha256:43d8d74c3ae2ed355502e3722c89ea31b9e7354f2538e17025c0436c34347657" [label="docker-image://docker.io/library/busybox:ubuntu-14.04" shape="ellipse"];
  "sha256:723e9f9105399866217331246b0251bee4e8f535731ee8c47295c9edbaf7ceb9" [label="mkdir{path=/app}" shape="note"];
  "sha256:ecb8ff3884e541ecb55cff31f5b94cb739ee2781d8fdffa97616d81c1dec60e5" [label="local://context" shape="ellipse"];
  "sha256:2566e6f2ecc696328691d7003387f21beb01402c66d14aa92cfc553721e69aff" [label="copy{src=/influxd, dest=/app/}" shape="note"];
  "sha256:02fff91b1743e6bfdf062125229ed89be23dea4563ef98f3df026893bb97e861" [label="/bin/sh -c influxd config > /etc/influxdb.toml" shape="box"];
  "sha256:9f621837e59d1bde41e2f8e75c21d0af1d91a2e3e4fa1df88d44ffc5b33084cf" [label="/bin/sh -c sed -i 's/dir = \"\\/.*influxdb/dir = \"\\/data/' /etc/influxdb.toml" shape="box"];
  "sha256:d4a5131a18b9c77e16e041ce3a860ce8314b6345c2055d15c1c4a9a95679ceea" [label="sha256:d4a5131a18b9c77e16e041ce3a860ce8314b6345c2055d15c1c4a9a95679ceea" shape="plaintext"];
  "sha256:43d8d74c3ae2ed355502e3722c89ea31b9e7354f2538e17025c0436c34347657" -> "sha256:723e9f9105399866217331246b0251bee4e8f535731ee8c47295c9edbaf7ceb9" [label=""];
  "sha256:723e9f9105399866217331246b0251bee4e8f535731ee8c47295c9edbaf7ceb9" -> "sha256:2566e6f2ecc696328691d7003387f21beb01402c66d14aa92cfc553721e69aff" [label=""];
  "sha256:ecb8ff3884e541ecb55cff31f5b94cb739ee2781d8fdffa97616d81c1dec60e5" -> "sha256:2566e6f2ecc696328691d7003387f21beb01402c66d14aa92cfc553721e69aff" [label=""];
  "sha256:2566e6f2ecc696328691d7003387f21beb01402c66d14aa92cfc553721e69aff" -> "sha256:02fff91b1743e6bfdf062125229ed89be23dea4563ef98f3df026893bb97e861" [label=""];
  "sha256:02fff91b1743e6bfdf062125229ed89be23dea4563ef98f3df026893bb97e861" -> "sha256:9f621837e59d1bde41e2f8e75c21d0af1d91a2e3e4fa1df88d44ffc5b33084cf" [label=""];
  "sha256:9f621837e59d1bde41e2f8e75c21d0af1d91a2e3e4fa1df88d44ffc5b33084cf" -> "sha256:d4a5131a18b9c77e16e041ce3a860ce8314b6345c2055d15c1c4a9a95679ceea" [label=""];
}

