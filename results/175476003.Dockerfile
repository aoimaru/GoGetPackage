[app/sources/175476003.Dockerfile]
digraph {
  "sha256:fc0c967679e740c1fbc2872810ab09208aee373d984642bb3355b4b4d92ed444" [label="local://context" shape="ellipse"];
  "sha256:d3ab29d1fa8123d1629f683a95d843cab6fbcc8b3553a52a4e9e85ea6b656921" [label="docker-image://docker.io/library/erlang:18.3.4" shape="ellipse"];
  "sha256:3f1cc38c637ea686852dbcb6cebed5be7f0ddb9614b48506c9ffd6cc711a9c9c" [label="/bin/sh -c apt-get update &&     apt-get install --assume-yes inotify-tools &&     apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:aa2b458d7ef66cd362dc35deba819b7e1aa12d446157ecca79be6069c146c51d" [label="/bin/sh -c cd /usr/local/lib/erlang/lib &&     git clone https://github.com/rvirding/lfe.git &&     cd /usr/local/lib/erlang/lib/lfe &&     git checkout v1.0 &&     make compile install" shape="box"];
  "sha256:0f71d819a2b6c364b8efa94e6ea216dae14e0188d79e44f30d4b1d4d5b9668a2" [label="copy{src=/src, dest=/usr/local/lib/erlang/lib/knot/src}" shape="note"];
  "sha256:9c34851120e16217647290144f7e1fa0d2b9e6487efa95422683999ecfc2b79c" [label="copy{src=/ebin/knot.app, dest=/usr/local/lib/erlang/lib/knot/ebin/knot.app}" shape="note"];
  "sha256:1754e83280af5a81816eda9a6d14218ca43f02debb8b345e2b3d237ce093760b" [label="/bin/sh -c cd /usr/local/lib/erlang/lib/knot &&     lfec -o ebin src/*.lfe" shape="box"];
  "sha256:3aee67e32af49fda6a0907e27eef62ab4371064fde011d40844465d495f5df40" [label="copy{src=/docker_entrypoint.sh, dest=/usr/local/bin}" shape="note"];
  "sha256:2b1500912646d2b45497ad4069e64e42474986f92d615b58598688f58201de63" [label="/bin/sh -c chmod +x /usr/local/bin/docker_entrypoint.sh" shape="box"];
  "sha256:3a22e390606b2a82d8944eafd645897739f35a0235b3ea2a713915c609a21c2d" [label="mkdir{path=/workdir}" shape="note"];
  "sha256:c13c7fa0f6aed6d29c6a6975a4e8b0631f4c7a644a1dd728949a721fc675885b" [label="sha256:c13c7fa0f6aed6d29c6a6975a4e8b0631f4c7a644a1dd728949a721fc675885b" shape="plaintext"];
  "sha256:d3ab29d1fa8123d1629f683a95d843cab6fbcc8b3553a52a4e9e85ea6b656921" -> "sha256:3f1cc38c637ea686852dbcb6cebed5be7f0ddb9614b48506c9ffd6cc711a9c9c" [label=""];
  "sha256:3f1cc38c637ea686852dbcb6cebed5be7f0ddb9614b48506c9ffd6cc711a9c9c" -> "sha256:aa2b458d7ef66cd362dc35deba819b7e1aa12d446157ecca79be6069c146c51d" [label=""];
  "sha256:aa2b458d7ef66cd362dc35deba819b7e1aa12d446157ecca79be6069c146c51d" -> "sha256:0f71d819a2b6c364b8efa94e6ea216dae14e0188d79e44f30d4b1d4d5b9668a2" [label=""];
  "sha256:fc0c967679e740c1fbc2872810ab09208aee373d984642bb3355b4b4d92ed444" -> "sha256:0f71d819a2b6c364b8efa94e6ea216dae14e0188d79e44f30d4b1d4d5b9668a2" [label=""];
  "sha256:0f71d819a2b6c364b8efa94e6ea216dae14e0188d79e44f30d4b1d4d5b9668a2" -> "sha256:9c34851120e16217647290144f7e1fa0d2b9e6487efa95422683999ecfc2b79c" [label=""];
  "sha256:fc0c967679e740c1fbc2872810ab09208aee373d984642bb3355b4b4d92ed444" -> "sha256:9c34851120e16217647290144f7e1fa0d2b9e6487efa95422683999ecfc2b79c" [label=""];
  "sha256:9c34851120e16217647290144f7e1fa0d2b9e6487efa95422683999ecfc2b79c" -> "sha256:1754e83280af5a81816eda9a6d14218ca43f02debb8b345e2b3d237ce093760b" [label=""];
  "sha256:1754e83280af5a81816eda9a6d14218ca43f02debb8b345e2b3d237ce093760b" -> "sha256:3aee67e32af49fda6a0907e27eef62ab4371064fde011d40844465d495f5df40" [label=""];
  "sha256:fc0c967679e740c1fbc2872810ab09208aee373d984642bb3355b4b4d92ed444" -> "sha256:3aee67e32af49fda6a0907e27eef62ab4371064fde011d40844465d495f5df40" [label=""];
  "sha256:3aee67e32af49fda6a0907e27eef62ab4371064fde011d40844465d495f5df40" -> "sha256:2b1500912646d2b45497ad4069e64e42474986f92d615b58598688f58201de63" [label=""];
  "sha256:2b1500912646d2b45497ad4069e64e42474986f92d615b58598688f58201de63" -> "sha256:3a22e390606b2a82d8944eafd645897739f35a0235b3ea2a713915c609a21c2d" [label=""];
  "sha256:3a22e390606b2a82d8944eafd645897739f35a0235b3ea2a713915c609a21c2d" -> "sha256:c13c7fa0f6aed6d29c6a6975a4e8b0631f4c7a644a1dd728949a721fc675885b" [label=""];
}

