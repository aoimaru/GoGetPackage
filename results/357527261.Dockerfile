[app/sources/357527261.Dockerfile]
digraph {
  "sha256:572e1701b9316e98e07cb8151a45681f0e98f5c015f0469845e4581a42e5f6e9" [label="local://context" shape="ellipse"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:897a7aceb49676ee6d2a9c692aa4e565bd9d6c7d105b79ae39ee556ac56f847f" [label="mkdir{path=/headless}" shape="note"];
  "sha256:66f2de064b8677fd5c4122625f2bf32a2b6e2606da9e318a6d5466153e9fcac0" [label="copy{src=/src/common/install, dest=/headless/install/}" shape="note"];
  "sha256:8d0b20c696c21a49054b97a9eeb587558c368aa4af9cc56455d6be777e535f46" [label="copy{src=/src/ubuntu/install, dest=/headless/install/}" shape="note"];
  "sha256:effff5151605ae955d5e7b7e6f9d03d61bbf4fd4d3c390a7e4d9bac5ef620930" [label="/bin/sh -c find $INST_SCRIPTS -name '*.sh' -exec chmod a+x {} +" shape="box"];
  "sha256:5d5f8ac5a2a95128b2a663cdca82e11c9670b4feef7c56ddf6a218e15a8e7107" [label="/bin/sh -c $INST_SCRIPTS/tools.sh" shape="box"];
  "sha256:8b8a28ccf09ac47a81f29b2749581873dfdc97bd1653fb05908c163190d8bd59" [label="/bin/sh -c $INST_SCRIPTS/install_custom_fonts.sh" shape="box"];
  "sha256:3e19d2d665d81d4f7992eca901485a90f5ba3d316845365b24c75a88bd31b1a6" [label="/bin/sh -c $INST_SCRIPTS/tigervnc.sh" shape="box"];
  "sha256:c7474cab09307ac3f30d7cee561ca49887c00975017bf88e78f37cdf40b82b43" [label="/bin/sh -c $INST_SCRIPTS/no_vnc.sh" shape="box"];
  "sha256:79d721c5e720278dc6ad8217bae4cf3c7b091a74048e2f274f7b0ffab7ce12c2" [label="/bin/sh -c $INST_SCRIPTS/firefox.sh" shape="box"];
  "sha256:a1550efadd69f88af0bcc8aaf2328eea0c438ca6e91dcbbaa80070a28c23bbdc" [label="/bin/sh -c $INST_SCRIPTS/chrome.sh" shape="box"];
  "sha256:0521277cfdfbc575ecd01f67c239143ce5df2426b8468ed42af9cce0d9807417" [label="/bin/sh -c $INST_SCRIPTS/xfce_ui.sh" shape="box"];
  "sha256:94564021a38cd1d7e73985789e1f02c633031daa9b33dc393d70cb1f46d747ae" [label="copy{src=/src/common/xfce, dest=/headless/}" shape="note"];
  "sha256:887f75d815f4d2bd313130fa6442fafe496fc168c5ae29658bf971153ffd555d" [label="/bin/sh -c $INST_SCRIPTS/libnss_wrapper.sh" shape="box"];
  "sha256:b39f4a1c5b049e845eec7202469fcd32e370fbef57e982fd9232ccc53738aa08" [label="copy{src=/src/common/scripts, dest=/dockerstartup}" shape="note"];
  "sha256:06f845ea2427e5d60fb80a5157142553e498692d7ec2a550f7c1c0ed1673408e" [label="/bin/sh -c $INST_SCRIPTS/set_user_permission.sh $STARTUPDIR $HOME" shape="box"];
  "sha256:418b9b137a008ce4181267fff4c576435721d84c0a852b8f9e2f32308cce5c48" [label="sha256:418b9b137a008ce4181267fff4c576435721d84c0a852b8f9e2f32308cce5c48" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:897a7aceb49676ee6d2a9c692aa4e565bd9d6c7d105b79ae39ee556ac56f847f" [label=""];
  "sha256:897a7aceb49676ee6d2a9c692aa4e565bd9d6c7d105b79ae39ee556ac56f847f" -> "sha256:66f2de064b8677fd5c4122625f2bf32a2b6e2606da9e318a6d5466153e9fcac0" [label=""];
  "sha256:572e1701b9316e98e07cb8151a45681f0e98f5c015f0469845e4581a42e5f6e9" -> "sha256:66f2de064b8677fd5c4122625f2bf32a2b6e2606da9e318a6d5466153e9fcac0" [label=""];
  "sha256:66f2de064b8677fd5c4122625f2bf32a2b6e2606da9e318a6d5466153e9fcac0" -> "sha256:8d0b20c696c21a49054b97a9eeb587558c368aa4af9cc56455d6be777e535f46" [label=""];
  "sha256:572e1701b9316e98e07cb8151a45681f0e98f5c015f0469845e4581a42e5f6e9" -> "sha256:8d0b20c696c21a49054b97a9eeb587558c368aa4af9cc56455d6be777e535f46" [label=""];
  "sha256:8d0b20c696c21a49054b97a9eeb587558c368aa4af9cc56455d6be777e535f46" -> "sha256:effff5151605ae955d5e7b7e6f9d03d61bbf4fd4d3c390a7e4d9bac5ef620930" [label=""];
  "sha256:effff5151605ae955d5e7b7e6f9d03d61bbf4fd4d3c390a7e4d9bac5ef620930" -> "sha256:5d5f8ac5a2a95128b2a663cdca82e11c9670b4feef7c56ddf6a218e15a8e7107" [label=""];
  "sha256:5d5f8ac5a2a95128b2a663cdca82e11c9670b4feef7c56ddf6a218e15a8e7107" -> "sha256:8b8a28ccf09ac47a81f29b2749581873dfdc97bd1653fb05908c163190d8bd59" [label=""];
  "sha256:8b8a28ccf09ac47a81f29b2749581873dfdc97bd1653fb05908c163190d8bd59" -> "sha256:3e19d2d665d81d4f7992eca901485a90f5ba3d316845365b24c75a88bd31b1a6" [label=""];
  "sha256:3e19d2d665d81d4f7992eca901485a90f5ba3d316845365b24c75a88bd31b1a6" -> "sha256:c7474cab09307ac3f30d7cee561ca49887c00975017bf88e78f37cdf40b82b43" [label=""];
  "sha256:c7474cab09307ac3f30d7cee561ca49887c00975017bf88e78f37cdf40b82b43" -> "sha256:79d721c5e720278dc6ad8217bae4cf3c7b091a74048e2f274f7b0ffab7ce12c2" [label=""];
  "sha256:79d721c5e720278dc6ad8217bae4cf3c7b091a74048e2f274f7b0ffab7ce12c2" -> "sha256:a1550efadd69f88af0bcc8aaf2328eea0c438ca6e91dcbbaa80070a28c23bbdc" [label=""];
  "sha256:a1550efadd69f88af0bcc8aaf2328eea0c438ca6e91dcbbaa80070a28c23bbdc" -> "sha256:0521277cfdfbc575ecd01f67c239143ce5df2426b8468ed42af9cce0d9807417" [label=""];
  "sha256:0521277cfdfbc575ecd01f67c239143ce5df2426b8468ed42af9cce0d9807417" -> "sha256:94564021a38cd1d7e73985789e1f02c633031daa9b33dc393d70cb1f46d747ae" [label=""];
  "sha256:572e1701b9316e98e07cb8151a45681f0e98f5c015f0469845e4581a42e5f6e9" -> "sha256:94564021a38cd1d7e73985789e1f02c633031daa9b33dc393d70cb1f46d747ae" [label=""];
  "sha256:94564021a38cd1d7e73985789e1f02c633031daa9b33dc393d70cb1f46d747ae" -> "sha256:887f75d815f4d2bd313130fa6442fafe496fc168c5ae29658bf971153ffd555d" [label=""];
  "sha256:887f75d815f4d2bd313130fa6442fafe496fc168c5ae29658bf971153ffd555d" -> "sha256:b39f4a1c5b049e845eec7202469fcd32e370fbef57e982fd9232ccc53738aa08" [label=""];
  "sha256:572e1701b9316e98e07cb8151a45681f0e98f5c015f0469845e4581a42e5f6e9" -> "sha256:b39f4a1c5b049e845eec7202469fcd32e370fbef57e982fd9232ccc53738aa08" [label=""];
  "sha256:b39f4a1c5b049e845eec7202469fcd32e370fbef57e982fd9232ccc53738aa08" -> "sha256:06f845ea2427e5d60fb80a5157142553e498692d7ec2a550f7c1c0ed1673408e" [label=""];
  "sha256:06f845ea2427e5d60fb80a5157142553e498692d7ec2a550f7c1c0ed1673408e" -> "sha256:418b9b137a008ce4181267fff4c576435721d84c0a852b8f9e2f32308cce5c48" [label=""];
}

