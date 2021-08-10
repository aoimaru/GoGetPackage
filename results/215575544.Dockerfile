[app/sources/215575544.Dockerfile]
digraph {
  "sha256:7fa3f81bb6fa6e91e2188155005469ed9f5576ba568e7c9a6c8aaffe2c44ff31" [label="docker-image://docker.io/library/ruby:2.4.2" shape="ellipse"];
  "sha256:faa500e247ed26e88773348dee70f8faf67e244adc97b819212049816f130c7f" [label="/bin/sh -c gem install sinatra" shape="box"];
  "sha256:e10253f4c6a8e542ecf4fcd6c5638512b0f1e3d6a205d81a1296727dd84fd1ff" [label="/bin/sh -c rm -rf $FLAPPY_HOME" shape="box"];
  "sha256:7ca1ed45a6fca70e3782f30aab5bcbe82af716552015941e6088beb2f76dd249" [label="/bin/sh -c mkdir $FLAPPY_HOME" shape="box"];
  "sha256:b74cec2dfac578bf6caa5f4387c5c62aecc47c34e1f20aa31417525b26ed9aa5" [label="mkdir{path=/flappy}" shape="note"];
  "sha256:023e47f254a4a203fc9b45114cf98ab02715c5637456b0e0e82fb8678285762e" [label="local://context" shape="ellipse"];
  "sha256:a0bf59b5ddb58008da4d7c88c9fcc5fbea388d19479ce842898ba0e25021e210" [label="copy{src=/, dest=/flappy}" shape="note"];
  "sha256:3f2d7ca12f8aaa9dfc8487c7ab41638e2a3a36e2357f09a51d723b7082efb506" [label="sha256:3f2d7ca12f8aaa9dfc8487c7ab41638e2a3a36e2357f09a51d723b7082efb506" shape="plaintext"];
  "sha256:7fa3f81bb6fa6e91e2188155005469ed9f5576ba568e7c9a6c8aaffe2c44ff31" -> "sha256:faa500e247ed26e88773348dee70f8faf67e244adc97b819212049816f130c7f" [label=""];
  "sha256:faa500e247ed26e88773348dee70f8faf67e244adc97b819212049816f130c7f" -> "sha256:e10253f4c6a8e542ecf4fcd6c5638512b0f1e3d6a205d81a1296727dd84fd1ff" [label=""];
  "sha256:e10253f4c6a8e542ecf4fcd6c5638512b0f1e3d6a205d81a1296727dd84fd1ff" -> "sha256:7ca1ed45a6fca70e3782f30aab5bcbe82af716552015941e6088beb2f76dd249" [label=""];
  "sha256:7ca1ed45a6fca70e3782f30aab5bcbe82af716552015941e6088beb2f76dd249" -> "sha256:b74cec2dfac578bf6caa5f4387c5c62aecc47c34e1f20aa31417525b26ed9aa5" [label=""];
  "sha256:b74cec2dfac578bf6caa5f4387c5c62aecc47c34e1f20aa31417525b26ed9aa5" -> "sha256:a0bf59b5ddb58008da4d7c88c9fcc5fbea388d19479ce842898ba0e25021e210" [label=""];
  "sha256:023e47f254a4a203fc9b45114cf98ab02715c5637456b0e0e82fb8678285762e" -> "sha256:a0bf59b5ddb58008da4d7c88c9fcc5fbea388d19479ce842898ba0e25021e210" [label=""];
  "sha256:a0bf59b5ddb58008da4d7c88c9fcc5fbea388d19479ce842898ba0e25021e210" -> "sha256:3f2d7ca12f8aaa9dfc8487c7ab41638e2a3a36e2357f09a51d723b7082efb506" [label=""];
}

