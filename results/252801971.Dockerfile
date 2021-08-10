[app/sources/252801971.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:5a2147c486175d64963bf73b96e01e5b055c4e30b9a1080e03ac75c22878c678" [label="/bin/sh -c apk add \\--update bash docker grep" shape="box"];
  "sha256:007ed6412525c0a0e6965f572ee50a14cd6e97b57a5e6fe49b58dcbf67e0c0e4" [label="local://context" shape="ellipse"];
  "sha256:3deca8fe057817e0e68e7de87df8ce4754fe532d170a831c34f7b0c398ca28aa" [label="copy{src=/docker-cleanup-volumes.sh, dest=/docker-cleanup-volumes.sh}" shape="note"];
  "sha256:6568db5f27327669163dc41e6e4eac29ce7dde18f31733dfd11e1be742fef332" [label="copy{src=/run.sh, dest=/run.sh}" shape="note"];
  "sha256:67fc5f7f9c5e81cfedcc4b9580a67658f455b6d5969c17d65823d18290d6ac58" [label="sha256:67fc5f7f9c5e81cfedcc4b9580a67658f455b6d5969c17d65823d18290d6ac58" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:5a2147c486175d64963bf73b96e01e5b055c4e30b9a1080e03ac75c22878c678" [label=""];
  "sha256:5a2147c486175d64963bf73b96e01e5b055c4e30b9a1080e03ac75c22878c678" -> "sha256:3deca8fe057817e0e68e7de87df8ce4754fe532d170a831c34f7b0c398ca28aa" [label=""];
  "sha256:007ed6412525c0a0e6965f572ee50a14cd6e97b57a5e6fe49b58dcbf67e0c0e4" -> "sha256:3deca8fe057817e0e68e7de87df8ce4754fe532d170a831c34f7b0c398ca28aa" [label=""];
  "sha256:3deca8fe057817e0e68e7de87df8ce4754fe532d170a831c34f7b0c398ca28aa" -> "sha256:6568db5f27327669163dc41e6e4eac29ce7dde18f31733dfd11e1be742fef332" [label=""];
  "sha256:007ed6412525c0a0e6965f572ee50a14cd6e97b57a5e6fe49b58dcbf67e0c0e4" -> "sha256:6568db5f27327669163dc41e6e4eac29ce7dde18f31733dfd11e1be742fef332" [label=""];
  "sha256:6568db5f27327669163dc41e6e4eac29ce7dde18f31733dfd11e1be742fef332" -> "sha256:67fc5f7f9c5e81cfedcc4b9580a67658f455b6d5969c17d65823d18290d6ac58" [label=""];
}

