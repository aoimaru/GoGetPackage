[app/sources/310930129.Dockerfile]
digraph {
  "sha256:448c9249efc104fd965448ac52e2fa3eb095a26389a3fa3003756b8f151b8aef" [label="docker-image://docker.wso2.com/wso2sp-worker:4.3.0" shape="ellipse"];
  "sha256:407e1f230c6fc227f79360059e8a7cd322439dd669fb6b4082041184650c7fd3" [label="/bin/sh -c rm ${WSO2_SERVER_HOME}/lib/siddhi-io-http-1.0.39.jar" shape="box"];
  "sha256:2dac3263a43fb9ac6f2a3409554a8b075fb1bc9fae996a86ca4451b946ce9a10" [label="/bin/sh -c rm ${WSO2_SERVER_HOME}/lib/siddhi-store-rdbms-4.0.35.jar" shape="box"];
  "sha256:360d2aebb660967ea1c3fcb2a5a3da1ce3ccb81087cb9e68052455b3c0fbec87" [label="local://context" shape="ellipse"];
  "sha256:3d528447867aeb347fb7e8d10d0c0589ec977557e38c5955b5fe46dae5f749d7" [label="copy{src=/target/files/lib/*.jar, dest=/lib/}" shape="note"];
  "sha256:3433742ce9ee3d0c286cc32dacb854957fd54cec0496bbc2eec5ae24b9953cc9" [label="sha256:3433742ce9ee3d0c286cc32dacb854957fd54cec0496bbc2eec5ae24b9953cc9" shape="plaintext"];
  "sha256:448c9249efc104fd965448ac52e2fa3eb095a26389a3fa3003756b8f151b8aef" -> "sha256:407e1f230c6fc227f79360059e8a7cd322439dd669fb6b4082041184650c7fd3" [label=""];
  "sha256:407e1f230c6fc227f79360059e8a7cd322439dd669fb6b4082041184650c7fd3" -> "sha256:2dac3263a43fb9ac6f2a3409554a8b075fb1bc9fae996a86ca4451b946ce9a10" [label=""];
  "sha256:2dac3263a43fb9ac6f2a3409554a8b075fb1bc9fae996a86ca4451b946ce9a10" -> "sha256:3d528447867aeb347fb7e8d10d0c0589ec977557e38c5955b5fe46dae5f749d7" [label=""];
  "sha256:360d2aebb660967ea1c3fcb2a5a3da1ce3ccb81087cb9e68052455b3c0fbec87" -> "sha256:3d528447867aeb347fb7e8d10d0c0589ec977557e38c5955b5fe46dae5f749d7" [label=""];
  "sha256:3d528447867aeb347fb7e8d10d0c0589ec977557e38c5955b5fe46dae5f749d7" -> "sha256:3433742ce9ee3d0c286cc32dacb854957fd54cec0496bbc2eec5ae24b9953cc9" [label=""];
}

