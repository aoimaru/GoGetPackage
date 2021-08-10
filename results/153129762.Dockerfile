[app/sources/153129762.Dockerfile]
digraph {
  "sha256:f5079889562d096dfda536ad4e9924425f7c0b61eaff3b704f86a72ad482e9de" [label="local://context" shape="ellipse"];
  "sha256:c1ca7332a5b480d737e2e338559a567193e373340c21482dd3273f78ab864397" [label="docker-image://docker.io/library/tomcat:6.0.48-jre7" shape="ellipse"];
  "sha256:05ff72914c5c75efc05748911aa81da363e40566ed27069395f1cda56e22f8f4" [label="copy{src=/wait-for-mysql.sh, dest=/}" shape="note"];
  "sha256:6da807ae84fe47b87e1b1fbcf57cc0207fb0e4c2c223ce433ea1d9017ee883a8" [label="/bin/sh -c export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install -y mysql-client &&     apt-get clean &&     apt-get autoclean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:ffc514f166c8c35c1b4866e7c4099e64dbc8dd629a6554c8062282cff6d97fb4" [label="sha256:ffc514f166c8c35c1b4866e7c4099e64dbc8dd629a6554c8062282cff6d97fb4" shape="plaintext"];
  "sha256:c1ca7332a5b480d737e2e338559a567193e373340c21482dd3273f78ab864397" -> "sha256:05ff72914c5c75efc05748911aa81da363e40566ed27069395f1cda56e22f8f4" [label=""];
  "sha256:f5079889562d096dfda536ad4e9924425f7c0b61eaff3b704f86a72ad482e9de" -> "sha256:05ff72914c5c75efc05748911aa81da363e40566ed27069395f1cda56e22f8f4" [label=""];
  "sha256:05ff72914c5c75efc05748911aa81da363e40566ed27069395f1cda56e22f8f4" -> "sha256:6da807ae84fe47b87e1b1fbcf57cc0207fb0e4c2c223ce433ea1d9017ee883a8" [label=""];
  "sha256:6da807ae84fe47b87e1b1fbcf57cc0207fb0e4c2c223ce433ea1d9017ee883a8" -> "sha256:ffc514f166c8c35c1b4866e7c4099e64dbc8dd629a6554c8062282cff6d97fb4" [label=""];
}

