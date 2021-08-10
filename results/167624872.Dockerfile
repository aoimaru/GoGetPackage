[app/sources/167624872.Dockerfile]
digraph {
  "sha256:34281b56e8d6189aa6eaf5f75c0b995129c0bb66ae530d803a43d386acfc2f97" [label="docker-image://docker.io/library/ruby:2.0" shape="ellipse"];
  "sha256:3141ded5c4b073708391a602d30d94b3caee55abfc5a0922345812d0ab029f95" [label="/bin/sh -c bundle config --global frozen 1" shape="box"];
  "sha256:b80ecae699cac8f47d6f842b77e50e03a018bb8492eba28b754f827878c18e5c" [label="/bin/sh -c mkdir -p /usr/src/app" shape="box"];
  "sha256:c862bae929ad9ee8d970d11b8408e1512852e83601bbe48c55ac5baea64ba9c1" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:5fb4e99290c51a7357fb139215d0a138270047c46bbd95e8ff4655b0d03871a2" [label="local://context" shape="ellipse"];
  "sha256:bd91783ea1715de6d339659a3de213c489670065633fa6330880d3961d7786e0" [label="copy{src=/Gemfile, dest=/usr/src/app/}" shape="note"];
  "sha256:8f26a3ac797881dc69eb5e2e6fe46ff2fe53b7a2fca538223c076aaabae8f519" [label="copy{src=/Gemfile.lock, dest=/usr/src/app/}" shape="note"];
  "sha256:743934a70f2629ae8dc79af8aecd75ca8a25bb04bb1459a3ca9e246830bfd6e3" [label="/bin/sh -c bundle install" shape="box"];
  "sha256:d315c40abdf83ab036a4a2018b305d1e22e1839facd48a2f0c2bd138a8fc68d6" [label="copy{src=/, dest=/usr/src/app}" shape="note"];
  "sha256:35328614822915fb2c2d1f3ed7c26a60e0b2dba9a29f710365efb52f585c677d" [label="copy{src=/deploy/env, dest=/usr/src/app/.env}" shape="note"];
  "sha256:b5d076bfe84c6fc1c23aa714dad406472f48f0e562a7bde4ba1e815f8eed22bd" [label="sha256:b5d076bfe84c6fc1c23aa714dad406472f48f0e562a7bde4ba1e815f8eed22bd" shape="plaintext"];
  "sha256:34281b56e8d6189aa6eaf5f75c0b995129c0bb66ae530d803a43d386acfc2f97" -> "sha256:3141ded5c4b073708391a602d30d94b3caee55abfc5a0922345812d0ab029f95" [label=""];
  "sha256:3141ded5c4b073708391a602d30d94b3caee55abfc5a0922345812d0ab029f95" -> "sha256:b80ecae699cac8f47d6f842b77e50e03a018bb8492eba28b754f827878c18e5c" [label=""];
  "sha256:b80ecae699cac8f47d6f842b77e50e03a018bb8492eba28b754f827878c18e5c" -> "sha256:c862bae929ad9ee8d970d11b8408e1512852e83601bbe48c55ac5baea64ba9c1" [label=""];
  "sha256:c862bae929ad9ee8d970d11b8408e1512852e83601bbe48c55ac5baea64ba9c1" -> "sha256:bd91783ea1715de6d339659a3de213c489670065633fa6330880d3961d7786e0" [label=""];
  "sha256:5fb4e99290c51a7357fb139215d0a138270047c46bbd95e8ff4655b0d03871a2" -> "sha256:bd91783ea1715de6d339659a3de213c489670065633fa6330880d3961d7786e0" [label=""];
  "sha256:bd91783ea1715de6d339659a3de213c489670065633fa6330880d3961d7786e0" -> "sha256:8f26a3ac797881dc69eb5e2e6fe46ff2fe53b7a2fca538223c076aaabae8f519" [label=""];
  "sha256:5fb4e99290c51a7357fb139215d0a138270047c46bbd95e8ff4655b0d03871a2" -> "sha256:8f26a3ac797881dc69eb5e2e6fe46ff2fe53b7a2fca538223c076aaabae8f519" [label=""];
  "sha256:8f26a3ac797881dc69eb5e2e6fe46ff2fe53b7a2fca538223c076aaabae8f519" -> "sha256:743934a70f2629ae8dc79af8aecd75ca8a25bb04bb1459a3ca9e246830bfd6e3" [label=""];
  "sha256:743934a70f2629ae8dc79af8aecd75ca8a25bb04bb1459a3ca9e246830bfd6e3" -> "sha256:d315c40abdf83ab036a4a2018b305d1e22e1839facd48a2f0c2bd138a8fc68d6" [label=""];
  "sha256:5fb4e99290c51a7357fb139215d0a138270047c46bbd95e8ff4655b0d03871a2" -> "sha256:d315c40abdf83ab036a4a2018b305d1e22e1839facd48a2f0c2bd138a8fc68d6" [label=""];
  "sha256:d315c40abdf83ab036a4a2018b305d1e22e1839facd48a2f0c2bd138a8fc68d6" -> "sha256:35328614822915fb2c2d1f3ed7c26a60e0b2dba9a29f710365efb52f585c677d" [label=""];
  "sha256:5fb4e99290c51a7357fb139215d0a138270047c46bbd95e8ff4655b0d03871a2" -> "sha256:35328614822915fb2c2d1f3ed7c26a60e0b2dba9a29f710365efb52f585c677d" [label=""];
  "sha256:35328614822915fb2c2d1f3ed7c26a60e0b2dba9a29f710365efb52f585c677d" -> "sha256:b5d076bfe84c6fc1c23aa714dad406472f48f0e562a7bde4ba1e815f8eed22bd" [label=""];
}

