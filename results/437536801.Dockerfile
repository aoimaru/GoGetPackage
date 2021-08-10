[app/sources/437536801.Dockerfile]
digraph {
  "sha256:56aeb0d92fe1e7018430f151a781ac379ada4e37a13a5d6d377b0b51f207fe6e" [label="docker-image://docker.io/benweet/stackedit-base:latest" shape="ellipse"];
  "sha256:ef41d3995280a5bd50895408a67622d1208ae4494ee3734fd2c3899a75ab1227" [label="/bin/sh -c mkdir -p /opt/stackedit/stackedit_v4" shape="box"];
  "sha256:4f03824117fd19ebbe110138f368d8b80b6808b741087942a5f7916615413e50" [label="mkdir{path=/opt/stackedit/stackedit_v4}" shape="note"];
  "sha256:14e83af6012cf05e565530c8009fb119ec95844f28d42e819f7d9df61b787d04" [label="/bin/sh -c npm pack stackedit@$V4_VERSION   && tar xzf stackedit-*.tgz --strip 1   && yarn   && yarn cache clean   && rm -rf ~/.cache/bower   && rm -rf ~/.local/share/bower" shape="box"];
  "sha256:42761743302304818372480163990d0ed1ae7e4f5aa67727d2c6e1c5d3389425" [label="mkdir{path=/opt/stackedit}" shape="note"];
  "sha256:2c8ca3bfd2ea84babf2126f62d10ccac7c59e35584b532214d241b6b276f48b0" [label="local://context" shape="ellipse"];
  "sha256:1e6660149522407d57c49a266e56b2d46567d64c73634cdc865de0e29c7aca9c" [label="copy{src=/package*json, dest=/opt/stackedit/}" shape="note"];
  "sha256:2f4b57016b8629938fb0f86c862da8401b8c730468db7dc311ced632ffe76137" [label="copy{src=/gulpfile.js, dest=/opt/stackedit/}" shape="note"];
  "sha256:1c7ad08790f582905e018b8ed1b654fe629809e03aec24549e621941c0b6fa8c" [label="/bin/sh -c npm install --unsafe-perm   && npm cache clean --force" shape="box"];
  "sha256:927183fdb787742602c0093671e81cea7a2b3b9e51ca088d3b9efa68b547d9f5" [label="copy{src=/, dest=/opt/stackedit}" shape="note"];
  "sha256:be2cdbc3cafd8092f57de3c181cf29019965c75ba7df3c6d0b43c89922592326" [label="/bin/sh -c npm run build" shape="box"];
  "sha256:1815009540daadc50447fe19e209ced0ba072ce63f6685b3cd776aaa940160d9" [label="sha256:1815009540daadc50447fe19e209ced0ba072ce63f6685b3cd776aaa940160d9" shape="plaintext"];
  "sha256:56aeb0d92fe1e7018430f151a781ac379ada4e37a13a5d6d377b0b51f207fe6e" -> "sha256:ef41d3995280a5bd50895408a67622d1208ae4494ee3734fd2c3899a75ab1227" [label=""];
  "sha256:ef41d3995280a5bd50895408a67622d1208ae4494ee3734fd2c3899a75ab1227" -> "sha256:4f03824117fd19ebbe110138f368d8b80b6808b741087942a5f7916615413e50" [label=""];
  "sha256:4f03824117fd19ebbe110138f368d8b80b6808b741087942a5f7916615413e50" -> "sha256:14e83af6012cf05e565530c8009fb119ec95844f28d42e819f7d9df61b787d04" [label=""];
  "sha256:14e83af6012cf05e565530c8009fb119ec95844f28d42e819f7d9df61b787d04" -> "sha256:42761743302304818372480163990d0ed1ae7e4f5aa67727d2c6e1c5d3389425" [label=""];
  "sha256:42761743302304818372480163990d0ed1ae7e4f5aa67727d2c6e1c5d3389425" -> "sha256:1e6660149522407d57c49a266e56b2d46567d64c73634cdc865de0e29c7aca9c" [label=""];
  "sha256:2c8ca3bfd2ea84babf2126f62d10ccac7c59e35584b532214d241b6b276f48b0" -> "sha256:1e6660149522407d57c49a266e56b2d46567d64c73634cdc865de0e29c7aca9c" [label=""];
  "sha256:1e6660149522407d57c49a266e56b2d46567d64c73634cdc865de0e29c7aca9c" -> "sha256:2f4b57016b8629938fb0f86c862da8401b8c730468db7dc311ced632ffe76137" [label=""];
  "sha256:2c8ca3bfd2ea84babf2126f62d10ccac7c59e35584b532214d241b6b276f48b0" -> "sha256:2f4b57016b8629938fb0f86c862da8401b8c730468db7dc311ced632ffe76137" [label=""];
  "sha256:2f4b57016b8629938fb0f86c862da8401b8c730468db7dc311ced632ffe76137" -> "sha256:1c7ad08790f582905e018b8ed1b654fe629809e03aec24549e621941c0b6fa8c" [label=""];
  "sha256:1c7ad08790f582905e018b8ed1b654fe629809e03aec24549e621941c0b6fa8c" -> "sha256:927183fdb787742602c0093671e81cea7a2b3b9e51ca088d3b9efa68b547d9f5" [label=""];
  "sha256:2c8ca3bfd2ea84babf2126f62d10ccac7c59e35584b532214d241b6b276f48b0" -> "sha256:927183fdb787742602c0093671e81cea7a2b3b9e51ca088d3b9efa68b547d9f5" [label=""];
  "sha256:927183fdb787742602c0093671e81cea7a2b3b9e51ca088d3b9efa68b547d9f5" -> "sha256:be2cdbc3cafd8092f57de3c181cf29019965c75ba7df3c6d0b43c89922592326" [label=""];
  "sha256:be2cdbc3cafd8092f57de3c181cf29019965c75ba7df3c6d0b43c89922592326" -> "sha256:1815009540daadc50447fe19e209ced0ba072ce63f6685b3cd776aaa940160d9" [label=""];
}

