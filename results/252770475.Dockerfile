[app/sources/252770475.Dockerfile]
digraph {
  "sha256:c01fb18adc761ff93163f0c58446f70875c6049bd95a5cfb51deed439cfb2282" [label="docker-image://docker.io/library/ruby:2.3.3" shape="ellipse"];
  "sha256:83448ab2d1c320cc7c7977d0d896dc897dcf0eabaddfbb4d9f07e947598db69c" [label="/bin/sh -c apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs" shape="box"];
  "sha256:b0c2e550a4a186c422c73ba4a333085c47234d4d823293489345ff18e9b42f1d" [label="/bin/sh -c mkdir /root/.ssh && echo \"StrictHostKeyChecking no\" > /root/.ssh/config" shape="box"];
  "sha256:f874463ae0894aa1ab5256d30d5d32655b9b927488c404f5377f01d1b4dbf9c8" [label="/bin/sh -c mkdir /app" shape="box"];
  "sha256:289854dfc3a13cfa353f0bf12f1e2045e8aa0bbbc935a8faabde90cf78e74da4" [label="local://context" shape="ellipse"];
  "sha256:dee3d6121b1e7a5781720e857112ee09c2e6274dcca01763caa7a0bfe78c9fbd" [label="copy{src=/install.sh, dest=/tmp/install.sh}" shape="note"];
  "sha256:877bbdad2daa55ef588a05ba660bd014433787fec08575e87a86a63f66b05b0c" [label="mkdir{path=/app}" shape="note"];
  "sha256:900a3dc8e7072fba8d171f5d109297d0ccafd3df8c260822a0477e70bd64ec53" [label="sha256:900a3dc8e7072fba8d171f5d109297d0ccafd3df8c260822a0477e70bd64ec53" shape="plaintext"];
  "sha256:c01fb18adc761ff93163f0c58446f70875c6049bd95a5cfb51deed439cfb2282" -> "sha256:83448ab2d1c320cc7c7977d0d896dc897dcf0eabaddfbb4d9f07e947598db69c" [label=""];
  "sha256:83448ab2d1c320cc7c7977d0d896dc897dcf0eabaddfbb4d9f07e947598db69c" -> "sha256:b0c2e550a4a186c422c73ba4a333085c47234d4d823293489345ff18e9b42f1d" [label=""];
  "sha256:b0c2e550a4a186c422c73ba4a333085c47234d4d823293489345ff18e9b42f1d" -> "sha256:f874463ae0894aa1ab5256d30d5d32655b9b927488c404f5377f01d1b4dbf9c8" [label=""];
  "sha256:f874463ae0894aa1ab5256d30d5d32655b9b927488c404f5377f01d1b4dbf9c8" -> "sha256:dee3d6121b1e7a5781720e857112ee09c2e6274dcca01763caa7a0bfe78c9fbd" [label=""];
  "sha256:289854dfc3a13cfa353f0bf12f1e2045e8aa0bbbc935a8faabde90cf78e74da4" -> "sha256:dee3d6121b1e7a5781720e857112ee09c2e6274dcca01763caa7a0bfe78c9fbd" [label=""];
  "sha256:dee3d6121b1e7a5781720e857112ee09c2e6274dcca01763caa7a0bfe78c9fbd" -> "sha256:877bbdad2daa55ef588a05ba660bd014433787fec08575e87a86a63f66b05b0c" [label=""];
  "sha256:877bbdad2daa55ef588a05ba660bd014433787fec08575e87a86a63f66b05b0c" -> "sha256:900a3dc8e7072fba8d171f5d109297d0ccafd3df8c260822a0477e70bd64ec53" [label=""];
}

