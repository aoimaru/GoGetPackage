[app/sources/348326759.Dockerfile]
digraph {
  "sha256:22db709d19733303f3157b250d9600742124705a176e6dc1866f22657a75eaa6" [label="docker-image://docker.io/iron/ruby-bundle:latest" shape="ellipse"];
  "sha256:bf4b21927d84a89f1c889e8e37edc7536d959cd96a81d2b13d55f70ab2312455" [label="/bin/sh -c echo '@community http://nl.alpinelinux.org/alpine/edge/community' >> /etc/apk/repositories" shape="box"];
  "sha256:405b152b0b9741d9a1d01506c2383a997b3cdc10ff6eb000a2f4292cdbadb491" [label="/bin/sh -c apk update && apk upgrade" shape="box"];
  "sha256:2ca06a170d5012e205c4756163524eefa713f4bc4a5bef6f36b56fe3edc9f223" [label="/bin/sh -c apk add docker@community" shape="box"];
  "sha256:1b51b8ab36aa471aeaefdb17a0b7de912d6b03a77b3288022ff95f194eb0c3ca" [label="/bin/sh -c rc-update add docker default" shape="box"];
  "sha256:6882fb8ef7c3dfa86e1b9c2f09ea7d804b6a66902785e6185993cda18da6d8e2" [label="/bin/sh -c rm -rf /var/cache/apk/*" shape="box"];
  "sha256:1502fb06b70e20d0b57191b9dfc78cc23335acb079a8a9330487e05ed3e093ba" [label="sha256:1502fb06b70e20d0b57191b9dfc78cc23335acb079a8a9330487e05ed3e093ba" shape="plaintext"];
  "sha256:22db709d19733303f3157b250d9600742124705a176e6dc1866f22657a75eaa6" -> "sha256:bf4b21927d84a89f1c889e8e37edc7536d959cd96a81d2b13d55f70ab2312455" [label=""];
  "sha256:bf4b21927d84a89f1c889e8e37edc7536d959cd96a81d2b13d55f70ab2312455" -> "sha256:405b152b0b9741d9a1d01506c2383a997b3cdc10ff6eb000a2f4292cdbadb491" [label=""];
  "sha256:405b152b0b9741d9a1d01506c2383a997b3cdc10ff6eb000a2f4292cdbadb491" -> "sha256:2ca06a170d5012e205c4756163524eefa713f4bc4a5bef6f36b56fe3edc9f223" [label=""];
  "sha256:2ca06a170d5012e205c4756163524eefa713f4bc4a5bef6f36b56fe3edc9f223" -> "sha256:1b51b8ab36aa471aeaefdb17a0b7de912d6b03a77b3288022ff95f194eb0c3ca" [label=""];
  "sha256:1b51b8ab36aa471aeaefdb17a0b7de912d6b03a77b3288022ff95f194eb0c3ca" -> "sha256:6882fb8ef7c3dfa86e1b9c2f09ea7d804b6a66902785e6185993cda18da6d8e2" [label=""];
  "sha256:6882fb8ef7c3dfa86e1b9c2f09ea7d804b6a66902785e6185993cda18da6d8e2" -> "sha256:1502fb06b70e20d0b57191b9dfc78cc23335acb079a8a9330487e05ed3e093ba" [label=""];
}

