[app/sources/275270630.Dockerfile]
digraph {
  "sha256:adcfc523d1ecf6f1fbc73aec0450678796eb8f64a976decb712a0c18b1b3214c" [label="local://context" shape="ellipse"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:0b5e527a51ff0d35d048f898d4b65cd1516eb1dde72e2a63850960bed6881567" [label="/bin/sh -c apt-get -qq -o Dpkg::Use-Pty=0 update &&     apt-get -qq -o Dpkg::Use-Pty=0 install -y --no-install-recommends     libboost-filesystem1.55     libboost-iostreams1.55     libboost-program-options1.55     libboost-system1.55     libboost-thread1.55     libssl1.0.0     libmysqlclient18     netcat     tzdata  < /dev/null > /dev/null  && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:a12c4bdfe9845fa3b448fcf1b31e48fa1fef71856396e6ce25b81a9eb1613771" [label="/bin/sh -c ln -sf /usr/share/zoneinfo/${timezone} /etc/localtime" shape="box"];
  "sha256:bade83c0f1aea9dcc958f8eb89c796329dca5a672eafe4f5d1cbbe6ab24992fb" [label="mkdir{path=/opt/trinitycore/bin}" shape="note"];
  "sha256:05bba408398549d7b1254b10b2fb7b3d6fb9ee7d0f6b4d975359cb8f64cd376a" [label="https://raw.githubusercontent.com/timothystewart6/wait-for-it/master/wait-for-it.sh" shape="ellipse"];
  "sha256:2796b2727cbf1578dba1ef423ce4ecf9dd3867e1673abb00eb735c183ed2f12c" [label="copy{src=/wait-for-it.sh, dest=/opt/trinitycore/bin/wait-for-it.sh}" shape="note"];
  "sha256:f522b20187e93a6b1d39ef4059e616814fa0ac4df24c95aadca0b548277ac6dc" [label="copy{src=/authserver.sh, dest=/opt/trinitycore/bin/authserver.sh}" shape="note"];
  "sha256:f64dc9fa095a29c6ac9ab28907d9db26d19b21f37e8b08ed0b4734a263368dba" [label="copy{src=/authserver, dest=/opt/trinitycore/bin/authserver}" shape="note"];
  "sha256:276cd27cb164db69ca72bf36a2ec0cad84fc41c0c5c8414e8d2c5b4f254b1da7" [label="copy{src=/etc, dest=/opt/trinitycore/etc}" shape="note"];
  "sha256:0f907d493a0955fbbab0b066f84e068c850da440ffc51521fbcd6e9a954f3293" [label="/bin/sh -c chmod +x \"${install_prefix}/bin\"/*" shape="box"];
  "sha256:727cb3dcec127eba0a9a4e2016dc71af905f8e97b2e0371746e0fe06807ebfd1" [label="sha256:727cb3dcec127eba0a9a4e2016dc71af905f8e97b2e0371746e0fe06807ebfd1" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:0b5e527a51ff0d35d048f898d4b65cd1516eb1dde72e2a63850960bed6881567" [label=""];
  "sha256:0b5e527a51ff0d35d048f898d4b65cd1516eb1dde72e2a63850960bed6881567" -> "sha256:a12c4bdfe9845fa3b448fcf1b31e48fa1fef71856396e6ce25b81a9eb1613771" [label=""];
  "sha256:a12c4bdfe9845fa3b448fcf1b31e48fa1fef71856396e6ce25b81a9eb1613771" -> "sha256:bade83c0f1aea9dcc958f8eb89c796329dca5a672eafe4f5d1cbbe6ab24992fb" [label=""];
  "sha256:bade83c0f1aea9dcc958f8eb89c796329dca5a672eafe4f5d1cbbe6ab24992fb" -> "sha256:2796b2727cbf1578dba1ef423ce4ecf9dd3867e1673abb00eb735c183ed2f12c" [label=""];
  "sha256:05bba408398549d7b1254b10b2fb7b3d6fb9ee7d0f6b4d975359cb8f64cd376a" -> "sha256:2796b2727cbf1578dba1ef423ce4ecf9dd3867e1673abb00eb735c183ed2f12c" [label=""];
  "sha256:2796b2727cbf1578dba1ef423ce4ecf9dd3867e1673abb00eb735c183ed2f12c" -> "sha256:f522b20187e93a6b1d39ef4059e616814fa0ac4df24c95aadca0b548277ac6dc" [label=""];
  "sha256:adcfc523d1ecf6f1fbc73aec0450678796eb8f64a976decb712a0c18b1b3214c" -> "sha256:f522b20187e93a6b1d39ef4059e616814fa0ac4df24c95aadca0b548277ac6dc" [label=""];
  "sha256:f522b20187e93a6b1d39ef4059e616814fa0ac4df24c95aadca0b548277ac6dc" -> "sha256:f64dc9fa095a29c6ac9ab28907d9db26d19b21f37e8b08ed0b4734a263368dba" [label=""];
  "sha256:adcfc523d1ecf6f1fbc73aec0450678796eb8f64a976decb712a0c18b1b3214c" -> "sha256:f64dc9fa095a29c6ac9ab28907d9db26d19b21f37e8b08ed0b4734a263368dba" [label=""];
  "sha256:f64dc9fa095a29c6ac9ab28907d9db26d19b21f37e8b08ed0b4734a263368dba" -> "sha256:276cd27cb164db69ca72bf36a2ec0cad84fc41c0c5c8414e8d2c5b4f254b1da7" [label=""];
  "sha256:adcfc523d1ecf6f1fbc73aec0450678796eb8f64a976decb712a0c18b1b3214c" -> "sha256:276cd27cb164db69ca72bf36a2ec0cad84fc41c0c5c8414e8d2c5b4f254b1da7" [label=""];
  "sha256:276cd27cb164db69ca72bf36a2ec0cad84fc41c0c5c8414e8d2c5b4f254b1da7" -> "sha256:0f907d493a0955fbbab0b066f84e068c850da440ffc51521fbcd6e9a954f3293" [label=""];
  "sha256:0f907d493a0955fbbab0b066f84e068c850da440ffc51521fbcd6e9a954f3293" -> "sha256:727cb3dcec127eba0a9a4e2016dc71af905f8e97b2e0371746e0fe06807ebfd1" [label=""];
}

