[app/sources/481063961.Dockerfile]
digraph {
  "sha256:0a43f4a1c7b23501b64dd91e7150e3a961e8986c623e9167e4ac3c7e39986c6f" [label="docker-image://snowplow-docker-registry.bintray.io/snowplow/base-debian:0.1.0" shape="ellipse"];
  "sha256:cbe596dbd61cec5d9598769fdd9cff351008170ceacb3fd3604098f1bc9479c4" [label="/bin/sh -c mkdir -p /tmp/build &&     cd /tmp/build &&     wget -q http://dl.bintray.com/snowplow/snowplow-generic/${ARCHIVE} &&     unzip -d ${SNOWPLOW_BIN_PATH} ${ARCHIVE} &&     cd /tmp &&     rm -rf /tmp/build" shape="box"];
  "sha256:17422a3fce68741681d6358463b9327e95ce0b8989f27f972bcc4b492b804371" [label="local://context" shape="ellipse"];
  "sha256:faa61b7bf0389ac95910daeb583fccaef4a6ec2d52e8605be88786d4e0ad9dbf" [label="copy{src=/docker-entrypoint.sh, dest=/usr/local/bin/docker-entrypoint.sh}" shape="note"];
  "sha256:65ec8127f4083f90eab00a679c1838d5d7295607c6168f3bdedaf7125bbefacf" [label="sha256:65ec8127f4083f90eab00a679c1838d5d7295607c6168f3bdedaf7125bbefacf" shape="plaintext"];
  "sha256:0a43f4a1c7b23501b64dd91e7150e3a961e8986c623e9167e4ac3c7e39986c6f" -> "sha256:cbe596dbd61cec5d9598769fdd9cff351008170ceacb3fd3604098f1bc9479c4" [label=""];
  "sha256:cbe596dbd61cec5d9598769fdd9cff351008170ceacb3fd3604098f1bc9479c4" -> "sha256:faa61b7bf0389ac95910daeb583fccaef4a6ec2d52e8605be88786d4e0ad9dbf" [label=""];
  "sha256:17422a3fce68741681d6358463b9327e95ce0b8989f27f972bcc4b492b804371" -> "sha256:faa61b7bf0389ac95910daeb583fccaef4a6ec2d52e8605be88786d4e0ad9dbf" [label=""];
  "sha256:faa61b7bf0389ac95910daeb583fccaef4a6ec2d52e8605be88786d4e0ad9dbf" -> "sha256:65ec8127f4083f90eab00a679c1838d5d7295607c6168f3bdedaf7125bbefacf" [label=""];
}

