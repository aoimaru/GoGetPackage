[app/sources/333097319.Dockerfile]
digraph {
  "sha256:bfafe27a467f211f6a900705f01c3d6c2dc228c47143086d9733783fa706486d" [label="local://context" shape="ellipse"];
  "sha256:305ee1e685275e955d7a2984c9e35f7d50fcaf8bcf1c552446072ada35bbc2a9" [label="docker-image://docker.io/jenkins/jenkins:latest@sha256:b16702b350fc92c9ee5b29fa69f96dd3b20ee10d8c6bd0a5bb08a3001bd166ed" shape="ellipse"];
  "sha256:e1355cbbe00a462f97f4921763b1eca65cf29e190a22a52cfa9a0f45f2b60243" [label="/bin/sh -c curl -fSL \"https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-$DOCKER_VERSION\" -o /usr/local/bin/docker-standalone     && echo \"${DOCKER_SHA256}  /usr/local/bin/docker-standalone\" | sha256sum -c -     && chmod +x /usr/local/bin/docker-standalone" shape="box"];
  "sha256:d9d7a39ed0bcc5e3a09abb93a8e3521e435d2d5850a22f2ca515c56fc08888c0" [label="/bin/sh -c apt-get update     && apt-get install -y sudo     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:788e9e67572ccbe5af79d481369a98bc4d14ee4521b552927808e37ce5d61a88" [label="/bin/sh -c echo \"jenkins ALL=NOPASSWD: /usr/local/bin/docker-standalone *\" >> /etc/sudoers" shape="box"];
  "sha256:ff39547d11491cd13442db59938d855c0be0315a5834d46dcf2053fefdd4f87a" [label="copy{src=/docker, dest=/usr/bin/docker}" shape="note"];
  "sha256:2785df2a0067ecd8fb0ff64d120fa8785e61f2c2a71b75eb990a59fe1d8e9acd" [label="sha256:2785df2a0067ecd8fb0ff64d120fa8785e61f2c2a71b75eb990a59fe1d8e9acd" shape="plaintext"];
  "sha256:305ee1e685275e955d7a2984c9e35f7d50fcaf8bcf1c552446072ada35bbc2a9" -> "sha256:e1355cbbe00a462f97f4921763b1eca65cf29e190a22a52cfa9a0f45f2b60243" [label=""];
  "sha256:e1355cbbe00a462f97f4921763b1eca65cf29e190a22a52cfa9a0f45f2b60243" -> "sha256:d9d7a39ed0bcc5e3a09abb93a8e3521e435d2d5850a22f2ca515c56fc08888c0" [label=""];
  "sha256:d9d7a39ed0bcc5e3a09abb93a8e3521e435d2d5850a22f2ca515c56fc08888c0" -> "sha256:788e9e67572ccbe5af79d481369a98bc4d14ee4521b552927808e37ce5d61a88" [label=""];
  "sha256:788e9e67572ccbe5af79d481369a98bc4d14ee4521b552927808e37ce5d61a88" -> "sha256:ff39547d11491cd13442db59938d855c0be0315a5834d46dcf2053fefdd4f87a" [label=""];
  "sha256:bfafe27a467f211f6a900705f01c3d6c2dc228c47143086d9733783fa706486d" -> "sha256:ff39547d11491cd13442db59938d855c0be0315a5834d46dcf2053fefdd4f87a" [label=""];
  "sha256:ff39547d11491cd13442db59938d855c0be0315a5834d46dcf2053fefdd4f87a" -> "sha256:2785df2a0067ecd8fb0ff64d120fa8785e61f2c2a71b75eb990a59fe1d8e9acd" [label=""];
}

