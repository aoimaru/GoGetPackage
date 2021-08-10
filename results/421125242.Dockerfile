[app/sources/421125242.Dockerfile]
digraph {
  "sha256:7503277ec2ca6c42314f0a3b080e6031ec7dd02d2cdb3bc32f81bf0daef611d5" [label="docker-image://docker.io/library/node:0.10" shape="ellipse"];
  "sha256:2a46271c8a5b52e3e0bece9aee639b434648acabb7d05e9570a85c669f167879" [label="local://context" shape="ellipse"];
  "sha256:e63702b50c96f76da386c12ae89c4fd8c1eb846332d87b449b2fe5b9aa7e4165" [label="copy{src=/jdk-8u51-linux-x64.gz, dest=/opt}" shape="note"];
  "sha256:1ae6becad9db284bbf3979ae40297f18b5509cd098b79f91a6ab3e023208767e" [label="/bin/sh -c cd /opt &&     tar -xvf jdk-8u51-linux-x64.gz &&     cd /usr/bin &&     ln -s /opt/jdk1.8.0_51/bin/java java &&     ln -s /opt/jdk1.8.0_51/bin/javac javac" shape="box"];
  "sha256:7a76d030cfbd8dba7e5afcfe4e867b71dac3137268eaaad30bdb098b64d65e72" [label="/bin/sh -c npm install -g java" shape="box"];
  "sha256:9ab1dd0f1c9b7898700e6e37d302d4b531a7f4e45654e26442b601429e5788c4" [label="/bin/sh -c apt-get install -y net-tools psmisc" shape="box"];
  "sha256:0641c3b5d25b4a6601aeb25590fad184b3104cfbd0c82991a61def58a1dedcff" [label="sha256:0641c3b5d25b4a6601aeb25590fad184b3104cfbd0c82991a61def58a1dedcff" shape="plaintext"];
  "sha256:7503277ec2ca6c42314f0a3b080e6031ec7dd02d2cdb3bc32f81bf0daef611d5" -> "sha256:e63702b50c96f76da386c12ae89c4fd8c1eb846332d87b449b2fe5b9aa7e4165" [label=""];
  "sha256:2a46271c8a5b52e3e0bece9aee639b434648acabb7d05e9570a85c669f167879" -> "sha256:e63702b50c96f76da386c12ae89c4fd8c1eb846332d87b449b2fe5b9aa7e4165" [label=""];
  "sha256:e63702b50c96f76da386c12ae89c4fd8c1eb846332d87b449b2fe5b9aa7e4165" -> "sha256:1ae6becad9db284bbf3979ae40297f18b5509cd098b79f91a6ab3e023208767e" [label=""];
  "sha256:1ae6becad9db284bbf3979ae40297f18b5509cd098b79f91a6ab3e023208767e" -> "sha256:7a76d030cfbd8dba7e5afcfe4e867b71dac3137268eaaad30bdb098b64d65e72" [label=""];
  "sha256:7a76d030cfbd8dba7e5afcfe4e867b71dac3137268eaaad30bdb098b64d65e72" -> "sha256:9ab1dd0f1c9b7898700e6e37d302d4b531a7f4e45654e26442b601429e5788c4" [label=""];
  "sha256:9ab1dd0f1c9b7898700e6e37d302d4b531a7f4e45654e26442b601429e5788c4" -> "sha256:0641c3b5d25b4a6601aeb25590fad184b3104cfbd0c82991a61def58a1dedcff" [label=""];
}

