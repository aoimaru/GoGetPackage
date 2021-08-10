[app/sources/191901101.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:2a18739167855be6cc72b0d7fbb8d437686b7fa72497ce99cb8874b7f55ba569" [label="/bin/sh -c mkdir -p $TEMP/build  && mkdir -p /notebooks  && mkdir -p /REP_howto" shape="box"];
  "sha256:de934680e42605d2b2464ed73a25f77cd071c37e10114e2e0cb0bf8162cc09dd" [label="local://context" shape="ellipse"];
  "sha256:be763f88c6358a2f1db921655ff7c6890085647916c2869f035918aa9ee14487" [label="copy{src=/, dest=/tmp/build/}" shape="note"];
  "sha256:29b6ed3a4052fdd7c238e3b05266b45925a2114c857211bc068a7730a390fdb6" [label="copy{src=/howto, dest=/REP_howto}" shape="note"];
  "sha256:f633ca10df6df043949b95f976b175241b3f5966632d3ab45f455fd09a74f7fb" [label="/bin/sh -c rm /bin/sh && ln -s /bin/bash /bin/sh" shape="box"];
  "sha256:a30ed7c44d2ad1f07f699d6aa52e4f055a4a5f32c1b4010dd53db45a28f1f430" [label="/bin/sh -c source $TEMP/build/ci/install_rep_environment.sh $REP_PYTHON_VERSION  && echo \"source /etc/profile.d/rep_profile.sh\" >> $HOME/.bashrc  && echo \"umask 0002\" >> $HOME/.bashrc  && pip install $TEMP/build  && rm -rf $TEMP/build" shape="box"];
  "sha256:3bd6c1ed142a6fb33819b7a6576f083c4c6c6143af8606e8bd01559900f634ac" [label="copy{src=/ci/start_jupyter.sh, dest=/root/}" shape="note"];
  "sha256:04296a468d09537b28943274457c807ec66013097dcc08d251be2f8f7b1e4cfa" [label="sha256:04296a468d09537b28943274457c807ec66013097dcc08d251be2f8f7b1e4cfa" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:2a18739167855be6cc72b0d7fbb8d437686b7fa72497ce99cb8874b7f55ba569" [label=""];
  "sha256:2a18739167855be6cc72b0d7fbb8d437686b7fa72497ce99cb8874b7f55ba569" -> "sha256:be763f88c6358a2f1db921655ff7c6890085647916c2869f035918aa9ee14487" [label=""];
  "sha256:de934680e42605d2b2464ed73a25f77cd071c37e10114e2e0cb0bf8162cc09dd" -> "sha256:be763f88c6358a2f1db921655ff7c6890085647916c2869f035918aa9ee14487" [label=""];
  "sha256:be763f88c6358a2f1db921655ff7c6890085647916c2869f035918aa9ee14487" -> "sha256:29b6ed3a4052fdd7c238e3b05266b45925a2114c857211bc068a7730a390fdb6" [label=""];
  "sha256:de934680e42605d2b2464ed73a25f77cd071c37e10114e2e0cb0bf8162cc09dd" -> "sha256:29b6ed3a4052fdd7c238e3b05266b45925a2114c857211bc068a7730a390fdb6" [label=""];
  "sha256:29b6ed3a4052fdd7c238e3b05266b45925a2114c857211bc068a7730a390fdb6" -> "sha256:f633ca10df6df043949b95f976b175241b3f5966632d3ab45f455fd09a74f7fb" [label=""];
  "sha256:f633ca10df6df043949b95f976b175241b3f5966632d3ab45f455fd09a74f7fb" -> "sha256:a30ed7c44d2ad1f07f699d6aa52e4f055a4a5f32c1b4010dd53db45a28f1f430" [label=""];
  "sha256:a30ed7c44d2ad1f07f699d6aa52e4f055a4a5f32c1b4010dd53db45a28f1f430" -> "sha256:3bd6c1ed142a6fb33819b7a6576f083c4c6c6143af8606e8bd01559900f634ac" [label=""];
  "sha256:de934680e42605d2b2464ed73a25f77cd071c37e10114e2e0cb0bf8162cc09dd" -> "sha256:3bd6c1ed142a6fb33819b7a6576f083c4c6c6143af8606e8bd01559900f634ac" [label=""];
  "sha256:3bd6c1ed142a6fb33819b7a6576f083c4c6c6143af8606e8bd01559900f634ac" -> "sha256:04296a468d09537b28943274457c807ec66013097dcc08d251be2f8f7b1e4cfa" [label=""];
}

