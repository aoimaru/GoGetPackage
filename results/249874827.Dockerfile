[app/sources/249874827.Dockerfile]
digraph {
  "sha256:ea634e5a91096a6f5041d290aa9a79d7eb86ed3ea7a0c3c094a85caab3a06423" [label="docker-image://docker.io/library/golang:1.7.4" shape="ellipse"];
  "sha256:1a514ab1ac5b7a9362e1e5436460dbe796b9beea0a77f13a3a78acb281ab99a1" [label="/bin/sh -c go get -u github.com/Masterminds/glide" shape="box"];
  "sha256:afe6e089527a8d7b90465db0e81c9e46d55c501a1f2a9d5e0a4eb299ad5ecf37" [label="/bin/sh -c git clone --depth=50 https://github.com/uber/cherami-server.git $CHERAMI_HOME" shape="box"];
  "sha256:3ed162e8d3a519d29b6e3a8102810ade7565c37561bae3f2d16f014053bac1e6" [label="/bin/sh -c cd $CHERAMI_HOME; make bins" shape="box"];
  "sha256:77fc2825d4f5d9ba3a14a8719ace456b90440466b0c1cb8ee9ac15edec3f575f" [label="mkdir{path=/src/github.com/uber/cherami-server}" shape="note"];
  "sha256:59dc3e131b0190f330eab85f8f3aa626c0d7e6a02cd27888aecfc86a77781570" [label="sha256:59dc3e131b0190f330eab85f8f3aa626c0d7e6a02cd27888aecfc86a77781570" shape="plaintext"];
  "sha256:ea634e5a91096a6f5041d290aa9a79d7eb86ed3ea7a0c3c094a85caab3a06423" -> "sha256:1a514ab1ac5b7a9362e1e5436460dbe796b9beea0a77f13a3a78acb281ab99a1" [label=""];
  "sha256:1a514ab1ac5b7a9362e1e5436460dbe796b9beea0a77f13a3a78acb281ab99a1" -> "sha256:afe6e089527a8d7b90465db0e81c9e46d55c501a1f2a9d5e0a4eb299ad5ecf37" [label=""];
  "sha256:afe6e089527a8d7b90465db0e81c9e46d55c501a1f2a9d5e0a4eb299ad5ecf37" -> "sha256:3ed162e8d3a519d29b6e3a8102810ade7565c37561bae3f2d16f014053bac1e6" [label=""];
  "sha256:3ed162e8d3a519d29b6e3a8102810ade7565c37561bae3f2d16f014053bac1e6" -> "sha256:77fc2825d4f5d9ba3a14a8719ace456b90440466b0c1cb8ee9ac15edec3f575f" [label=""];
  "sha256:77fc2825d4f5d9ba3a14a8719ace456b90440466b0c1cb8ee9ac15edec3f575f" -> "sha256:59dc3e131b0190f330eab85f8f3aa626c0d7e6a02cd27888aecfc86a77781570" [label=""];
}

