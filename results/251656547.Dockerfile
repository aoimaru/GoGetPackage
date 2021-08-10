[app/sources/251656547.Dockerfile]
digraph {
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" [label="docker-image://docker.io/library/debian:stretch-slim" shape="ellipse"];
  "sha256:643cc0a9c2ef6fed9a4fca674518c8f5f74330766cbe0794dadb073d623cab68" [label="/bin/sh -c useradd ${DEPLOY_USER} --create-home --shell /bin/bash" shape="box"];
  "sha256:ee0985559ecdae6e249ead5b068de7273b43aa15a2f313bd6db24ae04836222b" [label="/bin/sh -c apt-get update &&     apt-get -y install --no-install-recommends         bash locales         gcc         git git-core         python3         python3-pip         python3-venv         python3-dev         python3-gdbm         mariadb-client         unzip curl wget sudo ssh         &&     apt-get clean &&     find /var/lib/apt/lists -type f -delete" shape="box"];
  "sha256:253b45563c610cecf7ceef1e64488a8da1916bbb031b2408cc04bd2492ae9e0f" [label="/bin/sh -c echo \"${DEPLOY_USER} ALL=NOPASSWD: ALL\" >> /etc/sudoers" shape="box"];
  "sha256:f16c6d0dbebdce4435fe3f3644de7b061c6969da66f32ff040bded6168612525" [label="/bin/sh -c mkdir -p ${DEPLOY_USER_DIR}/logs ; chown -R ${DEPLOY_USER}:${DEPLOY_USER} ${DEPLOY_USER_DIR}/logs" shape="box"];
  "sha256:e3847ac3976fa142c1bea5d8c717305ca2a5254b121d8f7bf3220fa29ba57f4c" [label="/bin/sh -c sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen &&     echo 'LANG=\"en_US.UTF-8\"'>/etc/default/locale &&     dpkg-reconfigure --frontend=noninteractive locales &&     update-locale LANG=en_US.UTF-8" shape="box"];
  "sha256:97b4a233ed33594af219f372ffb266c7c0ebf839d28fa0c7754424db270c756d" [label="local://context" shape="ellipse"];
  "sha256:0318524fa489823f6738b3e3a88ca511dc2bc7c8d465d03f121e3b670163f5a8" [label="copy{src=/stage, dest=/home/bitergia/stage}" shape="note"];
  "sha256:5fd81f271586dedcc402654564d29ec6aa01b968639048a2b01bb4eea09491c1" [label="/bin/sh -c chmod 755 ${DEPLOY_USER_DIR}/stage" shape="box"];
  "sha256:8535700105e1593b1f5cac0014cc4d1060dd4baf4930b6a010ce1957456c718b" [label="mkdir{path=/home/bitergia}" shape="note"];
  "sha256:f00e6b49663e69e7f29608fb9fe1d3005e02cd6754d122e9c0786835197086f5" [label="sha256:f00e6b49663e69e7f29608fb9fe1d3005e02cd6754d122e9c0786835197086f5" shape="plaintext"];
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" -> "sha256:643cc0a9c2ef6fed9a4fca674518c8f5f74330766cbe0794dadb073d623cab68" [label=""];
  "sha256:643cc0a9c2ef6fed9a4fca674518c8f5f74330766cbe0794dadb073d623cab68" -> "sha256:ee0985559ecdae6e249ead5b068de7273b43aa15a2f313bd6db24ae04836222b" [label=""];
  "sha256:ee0985559ecdae6e249ead5b068de7273b43aa15a2f313bd6db24ae04836222b" -> "sha256:253b45563c610cecf7ceef1e64488a8da1916bbb031b2408cc04bd2492ae9e0f" [label=""];
  "sha256:253b45563c610cecf7ceef1e64488a8da1916bbb031b2408cc04bd2492ae9e0f" -> "sha256:f16c6d0dbebdce4435fe3f3644de7b061c6969da66f32ff040bded6168612525" [label=""];
  "sha256:f16c6d0dbebdce4435fe3f3644de7b061c6969da66f32ff040bded6168612525" -> "sha256:e3847ac3976fa142c1bea5d8c717305ca2a5254b121d8f7bf3220fa29ba57f4c" [label=""];
  "sha256:e3847ac3976fa142c1bea5d8c717305ca2a5254b121d8f7bf3220fa29ba57f4c" -> "sha256:0318524fa489823f6738b3e3a88ca511dc2bc7c8d465d03f121e3b670163f5a8" [label=""];
  "sha256:97b4a233ed33594af219f372ffb266c7c0ebf839d28fa0c7754424db270c756d" -> "sha256:0318524fa489823f6738b3e3a88ca511dc2bc7c8d465d03f121e3b670163f5a8" [label=""];
  "sha256:0318524fa489823f6738b3e3a88ca511dc2bc7c8d465d03f121e3b670163f5a8" -> "sha256:5fd81f271586dedcc402654564d29ec6aa01b968639048a2b01bb4eea09491c1" [label=""];
  "sha256:5fd81f271586dedcc402654564d29ec6aa01b968639048a2b01bb4eea09491c1" -> "sha256:8535700105e1593b1f5cac0014cc4d1060dd4baf4930b6a010ce1957456c718b" [label=""];
  "sha256:8535700105e1593b1f5cac0014cc4d1060dd4baf4930b6a010ce1957456c718b" -> "sha256:f00e6b49663e69e7f29608fb9fe1d3005e02cd6754d122e9c0786835197086f5" [label=""];
}

