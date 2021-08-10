[app/sources/462108606.Dockerfile]
digraph {
  "sha256:6c103644ed3fcdc811f9162d80b0bca835be3416329daad197685fcaea3a159a" [label="local://context" shape="ellipse"];
  "sha256:ff5c4bc74dce89398e285ece7f5aa783858da881ef3fe26f27c0df820a195067" [label="docker-image://docker.io/library/docker:17.05.0-ce-dind" shape="ellipse"];
  "sha256:ed3a187647ba2d8b852d2e5f6d203c6f2f9decdf62c6fafc5b1a9003addb177a" [label="/bin/sh -c apk add --no-cache git tmux py2-pip apache2-utils vim build-base gettext-dev curl bash-completion bash util-linux jq" shape="box"];
  "sha256:daf61adc0925b984e50553cbfdec8f2aa202f375762d30d546dd349d298e6495" [label="/bin/sh -c pip install docker-compose==${COMPOSE_VERSION}" shape="box"];
  "sha256:9be88671413c50477b8d05c1ad98c0c67f238f01fe00e691caf8400100aa5de9" [label="/bin/sh -c curl -L https://github.com/docker/machine/releases/download/${MACHINE_VERSION}/docker-machine-Linux-x86_64     -o /usr/bin/docker-machine && chmod +x /usr/bin/docker-machine" shape="box"];
  "sha256:15b0bc6da31e0fd9e151823d9c73c24a07a0586bb9cb0eded69e8f3eb0ed2f8c" [label="/bin/sh -c mkdir -p /opt && cd /opt &&     curl https://www.vanheusden.com/httping/httping-2.5.tgz |     tar -zxf- && cd httping-2.5 &&     ./configure && make install LDFLAGS=-lintl &&     rm -rf httping-2.5" shape="box"];
  "sha256:714dd1301cbd1cf60a8c037c29f33ae49872bc812e62ed774041427699ba83e5" [label="/bin/sh -c mkdir /etc/bash_completion.d && curl https://raw.githubusercontent.com/docker/docker/master/contrib/completion/bash/docker -o /etc/bash_completion.d/docker" shape="box"];
  "sha256:902daa7fd4ab17eaceba1d92ac8eda3290091b572a7e1eea6a66796217150a3c" [label="/bin/sh -c rm /sbin/modprobe && echo '#!/bin/true' >/sbin/modprobe && chmod +x /sbin/modprobe" shape="box"];
  "sha256:502b2fe7e51701dbc0a02119ff32e54f45b00055907fb8e5e028dd2eae91379c" [label="copy{src=/docker-prompt, dest=/usr/local/bin/}" shape="note"];
  "sha256:88a3b7b411f3917d4198db2d3585d42773802344a2b6d9d25e8fdc35d144d0c8" [label="copy{src=/.vimrc, dest=/root/},copy{src=/.profile, dest=/root/},copy{src=/.inputrc, dest=/root/},copy{src=/.gitconfig, dest=/root/}" shape="note"];
  "sha256:efcc7930836ef4ea30eee5d66f259d3ff4262ae8abd0483f4665b484c6adaba0" [label="copy{src=/motd, dest=/etc/motd}" shape="note"];
  "sha256:b287eaa56432a2cf9ae44ef6bccd0fc685da11ddf9fb905a7cdb412296f0f23f" [label="copy{src=/daemon.json, dest=/etc/docker/}" shape="note"];
  "sha256:fed445c1c3f78223aa617f798490449c4eefe24ba3dbc9f31358a266ab5e2d70" [label="mkdir{path=/root}" shape="note"];
  "sha256:c72df2e62195e071cd2361c615b4aa3d787f2caed5cc2d7da1dcfb2879423901" [label="/bin/sh -c echo \"Happy to contact me@bingohuang.com\" >> /etc/issue" shape="box"];
  "sha256:d665f22f309327bc4e0b7904aba32721b769d6d1aecfa84a80853dda57c1a9ca" [label="sha256:d665f22f309327bc4e0b7904aba32721b769d6d1aecfa84a80853dda57c1a9ca" shape="plaintext"];
  "sha256:ff5c4bc74dce89398e285ece7f5aa783858da881ef3fe26f27c0df820a195067" -> "sha256:ed3a187647ba2d8b852d2e5f6d203c6f2f9decdf62c6fafc5b1a9003addb177a" [label=""];
  "sha256:ed3a187647ba2d8b852d2e5f6d203c6f2f9decdf62c6fafc5b1a9003addb177a" -> "sha256:daf61adc0925b984e50553cbfdec8f2aa202f375762d30d546dd349d298e6495" [label=""];
  "sha256:daf61adc0925b984e50553cbfdec8f2aa202f375762d30d546dd349d298e6495" -> "sha256:9be88671413c50477b8d05c1ad98c0c67f238f01fe00e691caf8400100aa5de9" [label=""];
  "sha256:9be88671413c50477b8d05c1ad98c0c67f238f01fe00e691caf8400100aa5de9" -> "sha256:15b0bc6da31e0fd9e151823d9c73c24a07a0586bb9cb0eded69e8f3eb0ed2f8c" [label=""];
  "sha256:15b0bc6da31e0fd9e151823d9c73c24a07a0586bb9cb0eded69e8f3eb0ed2f8c" -> "sha256:714dd1301cbd1cf60a8c037c29f33ae49872bc812e62ed774041427699ba83e5" [label=""];
  "sha256:714dd1301cbd1cf60a8c037c29f33ae49872bc812e62ed774041427699ba83e5" -> "sha256:902daa7fd4ab17eaceba1d92ac8eda3290091b572a7e1eea6a66796217150a3c" [label=""];
  "sha256:902daa7fd4ab17eaceba1d92ac8eda3290091b572a7e1eea6a66796217150a3c" -> "sha256:502b2fe7e51701dbc0a02119ff32e54f45b00055907fb8e5e028dd2eae91379c" [label=""];
  "sha256:6c103644ed3fcdc811f9162d80b0bca835be3416329daad197685fcaea3a159a" -> "sha256:502b2fe7e51701dbc0a02119ff32e54f45b00055907fb8e5e028dd2eae91379c" [label=""];
  "sha256:502b2fe7e51701dbc0a02119ff32e54f45b00055907fb8e5e028dd2eae91379c" -> "sha256:88a3b7b411f3917d4198db2d3585d42773802344a2b6d9d25e8fdc35d144d0c8" [label=""];
  "sha256:6c103644ed3fcdc811f9162d80b0bca835be3416329daad197685fcaea3a159a" -> "sha256:88a3b7b411f3917d4198db2d3585d42773802344a2b6d9d25e8fdc35d144d0c8" [label=""];
  "sha256:88a3b7b411f3917d4198db2d3585d42773802344a2b6d9d25e8fdc35d144d0c8" -> "sha256:efcc7930836ef4ea30eee5d66f259d3ff4262ae8abd0483f4665b484c6adaba0" [label=""];
  "sha256:6c103644ed3fcdc811f9162d80b0bca835be3416329daad197685fcaea3a159a" -> "sha256:efcc7930836ef4ea30eee5d66f259d3ff4262ae8abd0483f4665b484c6adaba0" [label=""];
  "sha256:efcc7930836ef4ea30eee5d66f259d3ff4262ae8abd0483f4665b484c6adaba0" -> "sha256:b287eaa56432a2cf9ae44ef6bccd0fc685da11ddf9fb905a7cdb412296f0f23f" [label=""];
  "sha256:6c103644ed3fcdc811f9162d80b0bca835be3416329daad197685fcaea3a159a" -> "sha256:b287eaa56432a2cf9ae44ef6bccd0fc685da11ddf9fb905a7cdb412296f0f23f" [label=""];
  "sha256:b287eaa56432a2cf9ae44ef6bccd0fc685da11ddf9fb905a7cdb412296f0f23f" -> "sha256:fed445c1c3f78223aa617f798490449c4eefe24ba3dbc9f31358a266ab5e2d70" [label=""];
  "sha256:fed445c1c3f78223aa617f798490449c4eefe24ba3dbc9f31358a266ab5e2d70" -> "sha256:c72df2e62195e071cd2361c615b4aa3d787f2caed5cc2d7da1dcfb2879423901" [label=""];
  "sha256:c72df2e62195e071cd2361c615b4aa3d787f2caed5cc2d7da1dcfb2879423901" -> "sha256:d665f22f309327bc4e0b7904aba32721b769d6d1aecfa84a80853dda57c1a9ca" [label=""];
}

