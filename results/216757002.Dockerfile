[app/sources/216757002.Dockerfile]
digraph {
  "sha256:427f35ce4a9d513c24ddaea3b2f3263e0d6e3a39978b2751c74e13dac2c93adb" [label="docker-image://docker.io/mhart/alpine-node:latest" shape="ellipse"];
  "sha256:0b181415e70da83236a869215b7d612d7abe77693d0163a60bd84aa525171564" [label="/bin/sh -c npm install hexo-cli -g  && npm install hexo-deployer-git -g" shape="box"];
  "sha256:9ca1a39a029312bb89aeff9a1f5303a45816a10e1ce1fec4c96f84a05e977a03" [label="sha256:9ca1a39a029312bb89aeff9a1f5303a45816a10e1ce1fec4c96f84a05e977a03" shape="plaintext"];
  "sha256:427f35ce4a9d513c24ddaea3b2f3263e0d6e3a39978b2751c74e13dac2c93adb" -> "sha256:0b181415e70da83236a869215b7d612d7abe77693d0163a60bd84aa525171564" [label=""];
  "sha256:0b181415e70da83236a869215b7d612d7abe77693d0163a60bd84aa525171564" -> "sha256:9ca1a39a029312bb89aeff9a1f5303a45816a10e1ce1fec4c96f84a05e977a03" [label=""];
}

