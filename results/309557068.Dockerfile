[app/sources/309557068.Dockerfile]
digraph {
  "sha256:4667316f3a52dc8a4d7fd898240f26a8adfa16866dbc599287d190368906b84e" [label="docker-image://docker.io/library/openjdk:8-jre" shape="ellipse"];
  "sha256:4889429aa8027c87f69379e4790b14714be826456472ad38b7ab8a2f8876f078" [label="/bin/sh -c mkdir -p /opt/shinyproxy/" shape="box"];
  "sha256:2c8644b5f1a4c0591265e8737701fd45e1fd34ca2449556b5f30ceab0cf4df36" [label="/bin/sh -c wget https://www.shinyproxy.io/downloads/shinyproxy-2.3.0.jar -O /opt/shinyproxy/shinyproxy.jar" shape="box"];
  "sha256:c359511c0878fbebd65cc6a190133f2bc896cdae787bc4fe56fe558d63fb1bda" [label="local://context" shape="ellipse"];
  "sha256:5a108a6c977760adb79fc055bef3dbbbba60fe45210492d34775d671d99328e1" [label="copy{src=/application.yml, dest=/opt/shinyproxy/application.yml}" shape="note"];
  "sha256:bd1e3caf02810030a0a36a352948885abf23668c75eb92ee52fd3df37dca9492" [label="mkdir{path=/opt/shinyproxy}" shape="note"];
  "sha256:635c9d96b9a110422e260d387b2d3ea8f5a92a6f67a7f6a35a9c905885971fad" [label="sha256:635c9d96b9a110422e260d387b2d3ea8f5a92a6f67a7f6a35a9c905885971fad" shape="plaintext"];
  "sha256:4667316f3a52dc8a4d7fd898240f26a8adfa16866dbc599287d190368906b84e" -> "sha256:4889429aa8027c87f69379e4790b14714be826456472ad38b7ab8a2f8876f078" [label=""];
  "sha256:4889429aa8027c87f69379e4790b14714be826456472ad38b7ab8a2f8876f078" -> "sha256:2c8644b5f1a4c0591265e8737701fd45e1fd34ca2449556b5f30ceab0cf4df36" [label=""];
  "sha256:2c8644b5f1a4c0591265e8737701fd45e1fd34ca2449556b5f30ceab0cf4df36" -> "sha256:5a108a6c977760adb79fc055bef3dbbbba60fe45210492d34775d671d99328e1" [label=""];
  "sha256:c359511c0878fbebd65cc6a190133f2bc896cdae787bc4fe56fe558d63fb1bda" -> "sha256:5a108a6c977760adb79fc055bef3dbbbba60fe45210492d34775d671d99328e1" [label=""];
  "sha256:5a108a6c977760adb79fc055bef3dbbbba60fe45210492d34775d671d99328e1" -> "sha256:bd1e3caf02810030a0a36a352948885abf23668c75eb92ee52fd3df37dca9492" [label=""];
  "sha256:bd1e3caf02810030a0a36a352948885abf23668c75eb92ee52fd3df37dca9492" -> "sha256:635c9d96b9a110422e260d387b2d3ea8f5a92a6f67a7f6a35a9c905885971fad" [label=""];
}

