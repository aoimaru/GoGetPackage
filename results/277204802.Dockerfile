[app/sources/277204802.Dockerfile]
digraph {
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" [label="docker-image://docker.io/library/debian:stretch-slim" shape="ellipse"];
  "sha256:36ba3509c71f403d1392fa18b2de81a178f2b4b6ee87b2c35fe16ebe4c822dc5" [label="/bin/sh -c apt-get update &&     apt-get -y install --no-install-recommends         bash locales         gcc         git git-core         pandoc         python3         python3-pip         python3-venv         python3-dev         python3-gdbm         mariadb-client         unzip curl wget sudo ssh         &&     apt-get clean &&     find /var/lib/apt/lists -type f -delete" shape="box"];
  "sha256:87e3df55627a34bd09b12c4504e7945477b80538ef849c7438435138698a6289" [label="/bin/sh -c useradd ${DEPLOY_USER} --create-home --shell /bin/bash ;     echo \"${DEPLOY_USER} ALL=NOPASSWD: ALL\" >> /etc/sudoers ;     mkdir ${DIST_DIR} ; chown -R ${DEPLOY_USER}:${DEPLOY_USER} ${DIST_DIR} ;     mkdir ${LOGS_DIR} ; chown -R ${DEPLOY_USER}:${DEPLOY_USER} ${LOGS_DIR}" shape="box"];
  "sha256:6e3c0a4df5eb03406b652d870e5a4955990a5f188e481100d42240a1bed7e710" [label="/bin/sh -c sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen &&     echo 'LANG=\"en_US.UTF-8\"'>/etc/default/locale &&     dpkg-reconfigure --frontend=noninteractive locales &&     update-locale LANG=en_US.UTF-8" shape="box"];
  "sha256:8146650fb296c1ed8c71359548a9d8525aadebf54c0f1e1559c8876d3a96c01b" [label="local://context" shape="ellipse"];
  "sha256:6794c65e52a8643153149ffbe5b0389542247bc5f14cb1d05436ede8900d4027" [label="copy{src=/utils/build_grimoirelab, dest=/usr/local/bin/build_grimoirelab}" shape="note"];
  "sha256:be95ec9b6ba9f023e52f3e645380334236207d9743ae6d1c71067aaaa0ea8838" [label="/bin/sh -c chmod 755 ${DIST_SCRIPT}" shape="box"];
  "sha256:213f8a6e62956c7d5516ddfd736843fff4d48238d14d17f1627d1e165f5b7ba6" [label="mkdir{path=/home/grimoirelab}" shape="note"];
  "sha256:407bbd2c12cba3e23e960b0f1576302c6a74aa316da5890569b0f75c6101e8af" [label="copy{src=/releases/latest, dest=/release}" shape="note"];
  "sha256:2d484de377f66898e816bee266ca77b704a3c7d5bf93d15b4620465f42169995" [label="sha256:2d484de377f66898e816bee266ca77b704a3c7d5bf93d15b4620465f42169995" shape="plaintext"];
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" -> "sha256:36ba3509c71f403d1392fa18b2de81a178f2b4b6ee87b2c35fe16ebe4c822dc5" [label=""];
  "sha256:36ba3509c71f403d1392fa18b2de81a178f2b4b6ee87b2c35fe16ebe4c822dc5" -> "sha256:87e3df55627a34bd09b12c4504e7945477b80538ef849c7438435138698a6289" [label=""];
  "sha256:87e3df55627a34bd09b12c4504e7945477b80538ef849c7438435138698a6289" -> "sha256:6e3c0a4df5eb03406b652d870e5a4955990a5f188e481100d42240a1bed7e710" [label=""];
  "sha256:6e3c0a4df5eb03406b652d870e5a4955990a5f188e481100d42240a1bed7e710" -> "sha256:6794c65e52a8643153149ffbe5b0389542247bc5f14cb1d05436ede8900d4027" [label=""];
  "sha256:8146650fb296c1ed8c71359548a9d8525aadebf54c0f1e1559c8876d3a96c01b" -> "sha256:6794c65e52a8643153149ffbe5b0389542247bc5f14cb1d05436ede8900d4027" [label=""];
  "sha256:6794c65e52a8643153149ffbe5b0389542247bc5f14cb1d05436ede8900d4027" -> "sha256:be95ec9b6ba9f023e52f3e645380334236207d9743ae6d1c71067aaaa0ea8838" [label=""];
  "sha256:be95ec9b6ba9f023e52f3e645380334236207d9743ae6d1c71067aaaa0ea8838" -> "sha256:213f8a6e62956c7d5516ddfd736843fff4d48238d14d17f1627d1e165f5b7ba6" [label=""];
  "sha256:213f8a6e62956c7d5516ddfd736843fff4d48238d14d17f1627d1e165f5b7ba6" -> "sha256:407bbd2c12cba3e23e960b0f1576302c6a74aa316da5890569b0f75c6101e8af" [label=""];
  "sha256:8146650fb296c1ed8c71359548a9d8525aadebf54c0f1e1559c8876d3a96c01b" -> "sha256:407bbd2c12cba3e23e960b0f1576302c6a74aa316da5890569b0f75c6101e8af" [label=""];
  "sha256:407bbd2c12cba3e23e960b0f1576302c6a74aa316da5890569b0f75c6101e8af" -> "sha256:2d484de377f66898e816bee266ca77b704a3c7d5bf93d15b4620465f42169995" [label=""];
}

