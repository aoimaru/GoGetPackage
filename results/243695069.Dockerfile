[app/sources/243695069.Dockerfile]
digraph {
  "sha256:49c22f3c46ac33f934b99ae8d8931a3281c568e14144a24474629da154037493" [label="docker-image://docker.io/library/node:alpine" shape="ellipse"];
  "sha256:51dff8a50f80dc0940fd61a64eca5a91abe040adf7daf5697cdeee023fa20b4b" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:7c0a49c92cfeff2beafcb469734f41c370171e8f7248570ce9cbafad6645901d" [label="local://context" shape="ellipse"];
  "sha256:b709f3f5178d119f31878e47ff261ca35046afc73ee3b128507166f5d66ee24e" [label="copy{src=/, dest=/usr/src/app/}" shape="note"];
  "sha256:8444d1165de671442dbc70676a22393fbd26ca67d79540b8cff83c2dae0fe80b" [label="/bin/sh -c apk add --no-cache --update make gcc libc-dev libpng-dev automake autoconf libtool nasm" shape="box"];
  "sha256:7e5e0e7e23323329b92f1e4c54d60363cca7d4dbabf6b933ed1019f917877ad3" [label="/bin/sh -c yarn install" shape="box"];
  "sha256:5b6e36f70ae594f283c581494dc9903c1676fbfc74ea10a4a57bfcd3b34f4b03" [label="/bin/sh -c yarn build" shape="box"];
  "sha256:b6858ddc2264c877ef17a972e3e844cc127f60b81e4ec4913afe3716e1a2a7d0" [label="sha256:b6858ddc2264c877ef17a972e3e844cc127f60b81e4ec4913afe3716e1a2a7d0" shape="plaintext"];
  "sha256:49c22f3c46ac33f934b99ae8d8931a3281c568e14144a24474629da154037493" -> "sha256:51dff8a50f80dc0940fd61a64eca5a91abe040adf7daf5697cdeee023fa20b4b" [label=""];
  "sha256:51dff8a50f80dc0940fd61a64eca5a91abe040adf7daf5697cdeee023fa20b4b" -> "sha256:b709f3f5178d119f31878e47ff261ca35046afc73ee3b128507166f5d66ee24e" [label=""];
  "sha256:7c0a49c92cfeff2beafcb469734f41c370171e8f7248570ce9cbafad6645901d" -> "sha256:b709f3f5178d119f31878e47ff261ca35046afc73ee3b128507166f5d66ee24e" [label=""];
  "sha256:b709f3f5178d119f31878e47ff261ca35046afc73ee3b128507166f5d66ee24e" -> "sha256:8444d1165de671442dbc70676a22393fbd26ca67d79540b8cff83c2dae0fe80b" [label=""];
  "sha256:8444d1165de671442dbc70676a22393fbd26ca67d79540b8cff83c2dae0fe80b" -> "sha256:7e5e0e7e23323329b92f1e4c54d60363cca7d4dbabf6b933ed1019f917877ad3" [label=""];
  "sha256:7e5e0e7e23323329b92f1e4c54d60363cca7d4dbabf6b933ed1019f917877ad3" -> "sha256:5b6e36f70ae594f283c581494dc9903c1676fbfc74ea10a4a57bfcd3b34f4b03" [label=""];
  "sha256:5b6e36f70ae594f283c581494dc9903c1676fbfc74ea10a4a57bfcd3b34f4b03" -> "sha256:b6858ddc2264c877ef17a972e3e844cc127f60b81e4ec4913afe3716e1a2a7d0" [label=""];
}

