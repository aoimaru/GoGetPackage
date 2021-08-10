[app/sources/209710361.Dockerfile]
digraph {
  "sha256:0044cd8b326b25c5c6012e0666b2ddc93337e109262b3d56f84575db0563fe28" [label="local://context" shape="ellipse"];
  "sha256:9b17a49efe059a92baddb39e37009f06b52bd63089cfd5f8832b8536a5bbe9f9" [label="docker-image://docker.io/itprojectsllc/install-odoo:8.0" shape="ellipse"];
  "sha256:c258b65d61d952ba9d856d40679baab9071e3a484ff2d9aebd8e9f7929056662" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:34c72a05aa86e3afe8c11eb6d41b60dc1a115537e6214c41767b0fbdc2996622" [label="/bin/sh -c apt-get install -y chromium" shape="box"];
  "sha256:ef80fad43f824a8b82e520069475f4fbe805501da359c83bc5468d817e36a5a0" [label="/bin/sh -c apt-get install -y vim tmux openssh-server emacs24" shape="box"];
  "sha256:d347eff7014f54fbeb246268937173144050016c2f2bf35204aa8f628a649fd9" [label="copy{src=/start.sh, dest=/}" shape="note"];
  "sha256:189dcf1d66bde748bdeaee6e7aa73e9b432ccf0e226a8d3e49d1b665a251dbdd" [label="copy{src=/entrypoint.sh, dest=/entrypoint-sshd.sh}" shape="note"];
  "sha256:3906032a28339873b5a9ee5ce0fe814c5655e174ee2ddeb4c011e8483e2078dc" [label="copy{src=/chromium.sh, dest=/}" shape="note"];
  "sha256:2b711234a9fe2b9e8122b674a7ce96f32c883f5431789af0c0bf36cedd29cc8d" [label="copy{src=/odoo.sh, dest=/}" shape="note"];
  "sha256:4726add3c3a694921e86b60c01687ee9fe40392be4a0904e918d5d682590f825" [label="copy{src=/emacs-server.sh, dest=/}" shape="note"];
  "sha256:1b9ca20b40b31ca411e96895eb05a751130db530e70c7d091b142362ca82c279" [label="copy{src=/emacs-client.sh, dest=/}" shape="note"];
  "sha256:4ad170eb940d11b9e5bb9061fc162c04ab6fc639604db370b4cda1300fb203df" [label="/bin/sh -c mkdir /var/run/sshd &&     mkdir /opt/odoo/.ssh/ &&     chown odoo:odoo /opt/odoo/.ssh/ &&     rm /entrypoint.sh" shape="box"];
  "sha256:9a8cd7c246915911ab38b425b6e378041891c6d4a9c5bf69d5ffc02f791c44cf" [label="sha256:9a8cd7c246915911ab38b425b6e378041891c6d4a9c5bf69d5ffc02f791c44cf" shape="plaintext"];
  "sha256:9b17a49efe059a92baddb39e37009f06b52bd63089cfd5f8832b8536a5bbe9f9" -> "sha256:c258b65d61d952ba9d856d40679baab9071e3a484ff2d9aebd8e9f7929056662" [label=""];
  "sha256:c258b65d61d952ba9d856d40679baab9071e3a484ff2d9aebd8e9f7929056662" -> "sha256:34c72a05aa86e3afe8c11eb6d41b60dc1a115537e6214c41767b0fbdc2996622" [label=""];
  "sha256:34c72a05aa86e3afe8c11eb6d41b60dc1a115537e6214c41767b0fbdc2996622" -> "sha256:ef80fad43f824a8b82e520069475f4fbe805501da359c83bc5468d817e36a5a0" [label=""];
  "sha256:ef80fad43f824a8b82e520069475f4fbe805501da359c83bc5468d817e36a5a0" -> "sha256:d347eff7014f54fbeb246268937173144050016c2f2bf35204aa8f628a649fd9" [label=""];
  "sha256:0044cd8b326b25c5c6012e0666b2ddc93337e109262b3d56f84575db0563fe28" -> "sha256:d347eff7014f54fbeb246268937173144050016c2f2bf35204aa8f628a649fd9" [label=""];
  "sha256:d347eff7014f54fbeb246268937173144050016c2f2bf35204aa8f628a649fd9" -> "sha256:189dcf1d66bde748bdeaee6e7aa73e9b432ccf0e226a8d3e49d1b665a251dbdd" [label=""];
  "sha256:0044cd8b326b25c5c6012e0666b2ddc93337e109262b3d56f84575db0563fe28" -> "sha256:189dcf1d66bde748bdeaee6e7aa73e9b432ccf0e226a8d3e49d1b665a251dbdd" [label=""];
  "sha256:189dcf1d66bde748bdeaee6e7aa73e9b432ccf0e226a8d3e49d1b665a251dbdd" -> "sha256:3906032a28339873b5a9ee5ce0fe814c5655e174ee2ddeb4c011e8483e2078dc" [label=""];
  "sha256:0044cd8b326b25c5c6012e0666b2ddc93337e109262b3d56f84575db0563fe28" -> "sha256:3906032a28339873b5a9ee5ce0fe814c5655e174ee2ddeb4c011e8483e2078dc" [label=""];
  "sha256:3906032a28339873b5a9ee5ce0fe814c5655e174ee2ddeb4c011e8483e2078dc" -> "sha256:2b711234a9fe2b9e8122b674a7ce96f32c883f5431789af0c0bf36cedd29cc8d" [label=""];
  "sha256:0044cd8b326b25c5c6012e0666b2ddc93337e109262b3d56f84575db0563fe28" -> "sha256:2b711234a9fe2b9e8122b674a7ce96f32c883f5431789af0c0bf36cedd29cc8d" [label=""];
  "sha256:2b711234a9fe2b9e8122b674a7ce96f32c883f5431789af0c0bf36cedd29cc8d" -> "sha256:4726add3c3a694921e86b60c01687ee9fe40392be4a0904e918d5d682590f825" [label=""];
  "sha256:0044cd8b326b25c5c6012e0666b2ddc93337e109262b3d56f84575db0563fe28" -> "sha256:4726add3c3a694921e86b60c01687ee9fe40392be4a0904e918d5d682590f825" [label=""];
  "sha256:4726add3c3a694921e86b60c01687ee9fe40392be4a0904e918d5d682590f825" -> "sha256:1b9ca20b40b31ca411e96895eb05a751130db530e70c7d091b142362ca82c279" [label=""];
  "sha256:0044cd8b326b25c5c6012e0666b2ddc93337e109262b3d56f84575db0563fe28" -> "sha256:1b9ca20b40b31ca411e96895eb05a751130db530e70c7d091b142362ca82c279" [label=""];
  "sha256:1b9ca20b40b31ca411e96895eb05a751130db530e70c7d091b142362ca82c279" -> "sha256:4ad170eb940d11b9e5bb9061fc162c04ab6fc639604db370b4cda1300fb203df" [label=""];
  "sha256:4ad170eb940d11b9e5bb9061fc162c04ab6fc639604db370b4cda1300fb203df" -> "sha256:9a8cd7c246915911ab38b425b6e378041891c6d4a9c5bf69d5ffc02f791c44cf" [label=""];
}

