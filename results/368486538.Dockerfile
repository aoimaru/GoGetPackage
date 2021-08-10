[app/sources/368486538.Dockerfile]
digraph {
  "sha256:480548501c04d74d402f8512041afea4c03a8ac479f0acdee3f458585b252691" [label="docker-image://docker.io/consol/ubuntu-xfce-vnc:1.3.0" shape="ellipse"];
  "sha256:f48fb5726a7dff9186a8f90ca966c53d44a1c9ffca0334731b4273960d8c86d1" [label="local://context" shape="ellipse"];
  "sha256:5a6c21a9a9eb5e11d4575fef25591d9b9e11a5d72a6bebc6566b1b56be01b9a8" [label="copy{src=/sakuli-client/src/common/install, dest=/}" shape="note"];
  "sha256:2e50fff90a06cb7ce5e69dff6e7d37bfe13794ce24a985b9807eb9e033ec7aee" [label="copy{src=/sakuli-client/src/ubuntu/install, dest=/}" shape="note"];
  "sha256:e1fa71f1aa15fecc07cd25009f65d78e808648e274a323cc6cd18fc8cfe9431e" [label="/bin/sh -c find $INST_SCRIPTS -name '*.sh' -exec chmod a+x {} +" shape="box"];
  "sha256:052a1ff96261056c42524943d5db52a13abbc9777efc8644aa4a8012eaecefcd" [label="/bin/sh -c $INST_SCRIPTS/example_apps.sh" shape="box"];
  "sha256:8c36456bfd40925ffa08f48ae245bc405c2b01a6c0b960f4978f41bed1cfb80e" [label="/bin/sh -c $INST_SCRIPTS/screenshot_tool.sh" shape="box"];
  "sha256:256675489cd90b62777c7626fc112e52f5f9f0d6db5a14d22078a2efebfe123a" [label="/bin/sh -c $INST_SCRIPTS/native_screen_control_libs.sh" shape="box"];
  "sha256:5844569668b04f87cd3838c537eb39b3bd094eeb2e27eb704aeb59413183f752" [label="/bin/sh -c $INST_SCRIPTS/java_jre.sh" shape="box"];
  "sha256:7eba78fdb549c11a8d9e867d4459fe1ad192de1e919b3cff9f1b080cf8e8dac2" [label="/bin/sh -c $INST_SCRIPTS/java_jce_test/jce_test.sh" shape="box"];
  "sha256:af8a2ad0a15f30cf203d8b6b6119c1f482776b7eb670de25a3f34f5e33823b9d" [label="mkdir{path=/sakuli}" shape="note"];
  "sha256:5d4adaf9da4b090e9c96bb7eb41eb42c4c78c490336034f7dc541dc806547262" [label="/bin/sh -c $INST_SCRIPTS/sakuli.sh" shape="box"];
  "sha256:6d3b0cd216fec6634883fdedb3f152ac3895c8816f262029cb2c6c49e704dbc7" [label="copy{src=/sakuli-client/src/common/scripts, dest=/sakuli/}" shape="note"];
  "sha256:03f30a0f2c6d52b3a30bcfdc23b2c75d16285d901b6155f34fd90ea66539c8a9" [label="/bin/sh -c $INST_SCRIPTS/set_user_permission.sh $STARTUPDIR" shape="box"];
  "sha256:4b556dd63fb9cf853ea3c2b0089d6c67e775f4fdcc1727526534c52904945648" [label="sha256:4b556dd63fb9cf853ea3c2b0089d6c67e775f4fdcc1727526534c52904945648" shape="plaintext"];
  "sha256:480548501c04d74d402f8512041afea4c03a8ac479f0acdee3f458585b252691" -> "sha256:5a6c21a9a9eb5e11d4575fef25591d9b9e11a5d72a6bebc6566b1b56be01b9a8" [label=""];
  "sha256:f48fb5726a7dff9186a8f90ca966c53d44a1c9ffca0334731b4273960d8c86d1" -> "sha256:5a6c21a9a9eb5e11d4575fef25591d9b9e11a5d72a6bebc6566b1b56be01b9a8" [label=""];
  "sha256:5a6c21a9a9eb5e11d4575fef25591d9b9e11a5d72a6bebc6566b1b56be01b9a8" -> "sha256:2e50fff90a06cb7ce5e69dff6e7d37bfe13794ce24a985b9807eb9e033ec7aee" [label=""];
  "sha256:f48fb5726a7dff9186a8f90ca966c53d44a1c9ffca0334731b4273960d8c86d1" -> "sha256:2e50fff90a06cb7ce5e69dff6e7d37bfe13794ce24a985b9807eb9e033ec7aee" [label=""];
  "sha256:2e50fff90a06cb7ce5e69dff6e7d37bfe13794ce24a985b9807eb9e033ec7aee" -> "sha256:e1fa71f1aa15fecc07cd25009f65d78e808648e274a323cc6cd18fc8cfe9431e" [label=""];
  "sha256:e1fa71f1aa15fecc07cd25009f65d78e808648e274a323cc6cd18fc8cfe9431e" -> "sha256:052a1ff96261056c42524943d5db52a13abbc9777efc8644aa4a8012eaecefcd" [label=""];
  "sha256:052a1ff96261056c42524943d5db52a13abbc9777efc8644aa4a8012eaecefcd" -> "sha256:8c36456bfd40925ffa08f48ae245bc405c2b01a6c0b960f4978f41bed1cfb80e" [label=""];
  "sha256:8c36456bfd40925ffa08f48ae245bc405c2b01a6c0b960f4978f41bed1cfb80e" -> "sha256:256675489cd90b62777c7626fc112e52f5f9f0d6db5a14d22078a2efebfe123a" [label=""];
  "sha256:256675489cd90b62777c7626fc112e52f5f9f0d6db5a14d22078a2efebfe123a" -> "sha256:5844569668b04f87cd3838c537eb39b3bd094eeb2e27eb704aeb59413183f752" [label=""];
  "sha256:5844569668b04f87cd3838c537eb39b3bd094eeb2e27eb704aeb59413183f752" -> "sha256:7eba78fdb549c11a8d9e867d4459fe1ad192de1e919b3cff9f1b080cf8e8dac2" [label=""];
  "sha256:7eba78fdb549c11a8d9e867d4459fe1ad192de1e919b3cff9f1b080cf8e8dac2" -> "sha256:af8a2ad0a15f30cf203d8b6b6119c1f482776b7eb670de25a3f34f5e33823b9d" [label=""];
  "sha256:af8a2ad0a15f30cf203d8b6b6119c1f482776b7eb670de25a3f34f5e33823b9d" -> "sha256:5d4adaf9da4b090e9c96bb7eb41eb42c4c78c490336034f7dc541dc806547262" [label=""];
  "sha256:5d4adaf9da4b090e9c96bb7eb41eb42c4c78c490336034f7dc541dc806547262" -> "sha256:6d3b0cd216fec6634883fdedb3f152ac3895c8816f262029cb2c6c49e704dbc7" [label=""];
  "sha256:f48fb5726a7dff9186a8f90ca966c53d44a1c9ffca0334731b4273960d8c86d1" -> "sha256:6d3b0cd216fec6634883fdedb3f152ac3895c8816f262029cb2c6c49e704dbc7" [label=""];
  "sha256:6d3b0cd216fec6634883fdedb3f152ac3895c8816f262029cb2c6c49e704dbc7" -> "sha256:03f30a0f2c6d52b3a30bcfdc23b2c75d16285d901b6155f34fd90ea66539c8a9" [label=""];
  "sha256:03f30a0f2c6d52b3a30bcfdc23b2c75d16285d901b6155f34fd90ea66539c8a9" -> "sha256:4b556dd63fb9cf853ea3c2b0089d6c67e775f4fdcc1727526534c52904945648" [label=""];
}

