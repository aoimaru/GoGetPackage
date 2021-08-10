[app/sources/157505969.Dockerfile]
digraph {
  "sha256:b150da432c7a40066a95bb13c63c745492fdd7212cf68b9867ca367c7b6abf96" [label="docker-image://docker.io/library/golang:1.8" shape="ellipse"];
  "sha256:81a7b8dee6cc33fe68231abb19352e2485970cb216e5b36d054a17c1238b8ffd" [label="/bin/sh -c apt-get update   && apt-get install -y software-properties-common python-pip   python-setuptools   python-dev   build-essential   libssl-dev   libffi-dev   && apt-get install --no-install-suggests --no-install-recommends -y   curl   git   build-essential   python-netaddr   unzip   vim   wget   inotify-tools   && apt-get clean -y   && apt-get autoremove -y   && rm -rf /var/lib/apt/lists/* /tmp/*" shape="box"];
  "sha256:96727a2b61bf2470ab117378d59a46ae1860f4a662c06bb14818176bb5387b2c" [label="/bin/sh -c pip install pyinotify" shape="box"];
  "sha256:248b2cdc9f87e69409cbae63cde8a49576db5ae47b2c93410a0fa9b62213dfe9" [label="/bin/sh -c wget https://github.com/Masterminds/glide/releases/download/v${GLIDEVERSION}/glide-v${GLIDEVERSION}-linux-amd64.tar.gz" shape="box"];
  "sha256:4811482976cfaa3b3a40dfa8efe5a6681cc52732dd98beb66164b810688e80f0" [label="/bin/sh -c mkdir glide-install ; tar xzf glide-v${GLIDEVERSION}-linux-amd64.tar.gz -C glide-install" shape="box"];
  "sha256:0231212d50b96e2be58dc19ca6ce716fab33236633817a19f10ba9678bf90ec9" [label="/bin/sh -c mv glide-install/linux-amd64/glide /usr/local/bin/ ; rm -rf glide-install" shape="box"];
  "sha256:185f3404761668fc991be497e32c2e5e465fcad938c6440b20bc6237c70e9338" [label="local://context" shape="ellipse"];
  "sha256:9156233bba77e9f89f2e7d71469ded94a421bc21913182d5b726f1896fec23d3" [label="copy{src=/, dest=/go/src/github.com/kobolog/gorb}" shape="note"];
  "sha256:932518c01a445d9e8a0536f1cff3ffe4ddef146941f0eff6693191706b6b8d4f" [label="mkdir{path=/go/src/github.com/kobolog/gorb}" shape="note"];
  "sha256:9ff2231185da75a50a578a3d0a771c976ccd82b3fbd1a345ae531238b6dea472" [label="/bin/sh -c glide install -v" shape="box"];
  "sha256:5f5142319bdec21a5edd1cda58e97d7652d3696824b5cb9111b0ea2ae8296871" [label="copy{src=/docker/*, dest=/}" shape="note"];
  "sha256:5a6ebecd7cc99388967477025826a58fcb506c5bbb2550de5e7922c0da5fda96" [label="/bin/sh -c chmod 755 /entrypoint.sh" shape="box"];
  "sha256:a97bc16d1e17583121d25efc23108207d6c97a3b53b237a487783adc15227a4a" [label="/bin/sh -c chmod 755 /autocompile.py" shape="box"];
  "sha256:c402776958e88b114311caf14a3e9c1634c5692f7b0375832eaa3e8f8535a2cc" [label="sha256:c402776958e88b114311caf14a3e9c1634c5692f7b0375832eaa3e8f8535a2cc" shape="plaintext"];
  "sha256:b150da432c7a40066a95bb13c63c745492fdd7212cf68b9867ca367c7b6abf96" -> "sha256:81a7b8dee6cc33fe68231abb19352e2485970cb216e5b36d054a17c1238b8ffd" [label=""];
  "sha256:81a7b8dee6cc33fe68231abb19352e2485970cb216e5b36d054a17c1238b8ffd" -> "sha256:96727a2b61bf2470ab117378d59a46ae1860f4a662c06bb14818176bb5387b2c" [label=""];
  "sha256:96727a2b61bf2470ab117378d59a46ae1860f4a662c06bb14818176bb5387b2c" -> "sha256:248b2cdc9f87e69409cbae63cde8a49576db5ae47b2c93410a0fa9b62213dfe9" [label=""];
  "sha256:248b2cdc9f87e69409cbae63cde8a49576db5ae47b2c93410a0fa9b62213dfe9" -> "sha256:4811482976cfaa3b3a40dfa8efe5a6681cc52732dd98beb66164b810688e80f0" [label=""];
  "sha256:4811482976cfaa3b3a40dfa8efe5a6681cc52732dd98beb66164b810688e80f0" -> "sha256:0231212d50b96e2be58dc19ca6ce716fab33236633817a19f10ba9678bf90ec9" [label=""];
  "sha256:0231212d50b96e2be58dc19ca6ce716fab33236633817a19f10ba9678bf90ec9" -> "sha256:9156233bba77e9f89f2e7d71469ded94a421bc21913182d5b726f1896fec23d3" [label=""];
  "sha256:185f3404761668fc991be497e32c2e5e465fcad938c6440b20bc6237c70e9338" -> "sha256:9156233bba77e9f89f2e7d71469ded94a421bc21913182d5b726f1896fec23d3" [label=""];
  "sha256:9156233bba77e9f89f2e7d71469ded94a421bc21913182d5b726f1896fec23d3" -> "sha256:932518c01a445d9e8a0536f1cff3ffe4ddef146941f0eff6693191706b6b8d4f" [label=""];
  "sha256:932518c01a445d9e8a0536f1cff3ffe4ddef146941f0eff6693191706b6b8d4f" -> "sha256:9ff2231185da75a50a578a3d0a771c976ccd82b3fbd1a345ae531238b6dea472" [label=""];
  "sha256:9ff2231185da75a50a578a3d0a771c976ccd82b3fbd1a345ae531238b6dea472" -> "sha256:5f5142319bdec21a5edd1cda58e97d7652d3696824b5cb9111b0ea2ae8296871" [label=""];
  "sha256:185f3404761668fc991be497e32c2e5e465fcad938c6440b20bc6237c70e9338" -> "sha256:5f5142319bdec21a5edd1cda58e97d7652d3696824b5cb9111b0ea2ae8296871" [label=""];
  "sha256:5f5142319bdec21a5edd1cda58e97d7652d3696824b5cb9111b0ea2ae8296871" -> "sha256:5a6ebecd7cc99388967477025826a58fcb506c5bbb2550de5e7922c0da5fda96" [label=""];
  "sha256:5a6ebecd7cc99388967477025826a58fcb506c5bbb2550de5e7922c0da5fda96" -> "sha256:a97bc16d1e17583121d25efc23108207d6c97a3b53b237a487783adc15227a4a" [label=""];
  "sha256:a97bc16d1e17583121d25efc23108207d6c97a3b53b237a487783adc15227a4a" -> "sha256:c402776958e88b114311caf14a3e9c1634c5692f7b0375832eaa3e8f8535a2cc" [label=""];
}

