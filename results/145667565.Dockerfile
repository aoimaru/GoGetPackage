[app/sources/145667565.Dockerfile]
digraph {
  "sha256:c5428f85e47c28bfa4a84ad7a7c5a776f75b96ce87f484ba505e625604b2142c" [label="docker-image://0xacab.org:4567/leap/gitlab-buildpackage:build_jessie_amd64@sha256:5e0960b825284a1d63ba5e98cacdfd7a262b6b8e125cafb747c11e13d5b89b7b" shape="ellipse"];
  "sha256:169e89757e2b5d6d7f8790ac4120bbbfdce27ae80f0b094f0bf147290839168d" [label="local://context" shape="ellipse"];
  "sha256:11a4eb168f9afc752af887d1dfddc3db8d7cfe375bd80f0fa3c5ddd216348bb5" [label="copy{src=/files/apt/deb.nodesource.com.gpg, dest=/tmp/deb.nodesource.com.gpg}" shape="note"];
  "sha256:f2d32dedd2e886dbba4e7cd6392a5c8736f7cb068fef7a29ebd374c06383a828" [label="/bin/sh -c apt-key add /tmp/deb.nodesource.com.gpg" shape="box"];
  "sha256:be308a3e442c2103ca2965a3ee65300b7ad0311f91f0b9e2580b885cc936e728" [label="/bin/sh -c echo 'deb http://deb.nodesource.com/node_6.x jessie main' > /etc/apt/sources.list.d/node.list" shape="box"];
  "sha256:2cc3dfef0ca03a25ded8161f912015ca024f0075b2d793414fa1a39170f3eb55" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:ca45c906ac92d42ae4b8f8ef4a5c792fea6b05c06fa25a449d8f5c49005107ad" [label="/bin/sh -c apt-get -y dist-upgrade" shape="box"];
  "sha256:1368b6373931b0b146c85baade4bb2b6543c52c1e8661e08d72f2f63c3fec0ec" [label="/bin/sh -c apt-get -y install wget" shape="box"];
  "sha256:149aa0a46fda7d4320b31f31bdc6c4004589df934cc15810e23b06397dcee183" [label="/bin/sh -c wget https://github.com/pixelated/pixelated-user-agent/releases/download/1.0_beta1/pixpybuild_0.2.4-190.gbpac5d78_amd64.deb" shape="box"];
  "sha256:472929194d70e467d9904e82f749239ac3fb867c45a3a69b142a2acfda5ee798" [label="/bin/sh -c dpkg -i pixpybuild_0.2.4-190.gbpac5d78_amd64.deb || /bin/true" shape="box"];
  "sha256:558c8685f6e1a83704423615cfd8bdd4727e28c8102b3d93602252bd8295481b" [label="/bin/sh -c apt-get -y -f install" shape="box"];
  "sha256:29254d02880c7822e6489b3208386005a6d9462ab09b3f79661de4178c60300c" [label="copy{src=/files/custom-vars, dest=/usr/local/sbin/custom-vars}" shape="note"];
  "sha256:2f4f61f09281320233be176593a9c5f52792d25ab3892590f55eeaaf764ab31b" [label="sha256:2f4f61f09281320233be176593a9c5f52792d25ab3892590f55eeaaf764ab31b" shape="plaintext"];
  "sha256:c5428f85e47c28bfa4a84ad7a7c5a776f75b96ce87f484ba505e625604b2142c" -> "sha256:11a4eb168f9afc752af887d1dfddc3db8d7cfe375bd80f0fa3c5ddd216348bb5" [label=""];
  "sha256:169e89757e2b5d6d7f8790ac4120bbbfdce27ae80f0b094f0bf147290839168d" -> "sha256:11a4eb168f9afc752af887d1dfddc3db8d7cfe375bd80f0fa3c5ddd216348bb5" [label=""];
  "sha256:11a4eb168f9afc752af887d1dfddc3db8d7cfe375bd80f0fa3c5ddd216348bb5" -> "sha256:f2d32dedd2e886dbba4e7cd6392a5c8736f7cb068fef7a29ebd374c06383a828" [label=""];
  "sha256:f2d32dedd2e886dbba4e7cd6392a5c8736f7cb068fef7a29ebd374c06383a828" -> "sha256:be308a3e442c2103ca2965a3ee65300b7ad0311f91f0b9e2580b885cc936e728" [label=""];
  "sha256:be308a3e442c2103ca2965a3ee65300b7ad0311f91f0b9e2580b885cc936e728" -> "sha256:2cc3dfef0ca03a25ded8161f912015ca024f0075b2d793414fa1a39170f3eb55" [label=""];
  "sha256:2cc3dfef0ca03a25ded8161f912015ca024f0075b2d793414fa1a39170f3eb55" -> "sha256:ca45c906ac92d42ae4b8f8ef4a5c792fea6b05c06fa25a449d8f5c49005107ad" [label=""];
  "sha256:ca45c906ac92d42ae4b8f8ef4a5c792fea6b05c06fa25a449d8f5c49005107ad" -> "sha256:1368b6373931b0b146c85baade4bb2b6543c52c1e8661e08d72f2f63c3fec0ec" [label=""];
  "sha256:1368b6373931b0b146c85baade4bb2b6543c52c1e8661e08d72f2f63c3fec0ec" -> "sha256:149aa0a46fda7d4320b31f31bdc6c4004589df934cc15810e23b06397dcee183" [label=""];
  "sha256:149aa0a46fda7d4320b31f31bdc6c4004589df934cc15810e23b06397dcee183" -> "sha256:472929194d70e467d9904e82f749239ac3fb867c45a3a69b142a2acfda5ee798" [label=""];
  "sha256:472929194d70e467d9904e82f749239ac3fb867c45a3a69b142a2acfda5ee798" -> "sha256:558c8685f6e1a83704423615cfd8bdd4727e28c8102b3d93602252bd8295481b" [label=""];
  "sha256:558c8685f6e1a83704423615cfd8bdd4727e28c8102b3d93602252bd8295481b" -> "sha256:29254d02880c7822e6489b3208386005a6d9462ab09b3f79661de4178c60300c" [label=""];
  "sha256:169e89757e2b5d6d7f8790ac4120bbbfdce27ae80f0b094f0bf147290839168d" -> "sha256:29254d02880c7822e6489b3208386005a6d9462ab09b3f79661de4178c60300c" [label=""];
  "sha256:29254d02880c7822e6489b3208386005a6d9462ab09b3f79661de4178c60300c" -> "sha256:2f4f61f09281320233be176593a9c5f52792d25ab3892590f55eeaaf764ab31b" [label=""];
}

