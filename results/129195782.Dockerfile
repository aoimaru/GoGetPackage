[app/sources/129195782.Dockerfile]
digraph {
  "sha256:7997ead0267fe831acdd05d5fa5a571cb20d6e522cfd447e5453494215de6fe1" [label="docker-image://docker.io/library/node:10-alpine" shape="ellipse"];
  "sha256:1d497ddabe45705db1d5c3e40137d40e6d34e88f69dc6dc1260f076bad41a356" [label="/bin/sh -c apk add --no-cache       git" shape="box"];
  "sha256:7182cd24c54a7a56cb75b722293659528dcf51af76aab7823ec0ee763c4240e1" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:5e50689a36d4ffabe29e08a71f5ed35f2a47805808a2d483f890277d34d48f70" [label="local://context" shape="ellipse"];
  "sha256:e90cb11520491570d0f7ee79785fc359bd7a71c96b04482c427d54b4ff0ae00e" [label="copy{src=/package*.json, dest=/usr/src/app/}" shape="note"];
  "sha256:160e6de9df19c0b575955f8b4426417b8d72dbb91a84bec9cfd46197e42f36f1" [label="/bin/sh -c npm install" shape="box"];
  "sha256:2275739bb5f12793b9f083c09023fab0b1d7c2da7278679a6e9871f5c1fe6ac4" [label="copy{src=/, dest=/usr/src/app/}" shape="note"];
  "sha256:38f55405625b51f7ebebebcb9a004eb26d836720616eea0dde63d7ce941f4e7b" [label="sha256:38f55405625b51f7ebebebcb9a004eb26d836720616eea0dde63d7ce941f4e7b" shape="plaintext"];
  "sha256:7997ead0267fe831acdd05d5fa5a571cb20d6e522cfd447e5453494215de6fe1" -> "sha256:1d497ddabe45705db1d5c3e40137d40e6d34e88f69dc6dc1260f076bad41a356" [label=""];
  "sha256:1d497ddabe45705db1d5c3e40137d40e6d34e88f69dc6dc1260f076bad41a356" -> "sha256:7182cd24c54a7a56cb75b722293659528dcf51af76aab7823ec0ee763c4240e1" [label=""];
  "sha256:7182cd24c54a7a56cb75b722293659528dcf51af76aab7823ec0ee763c4240e1" -> "sha256:e90cb11520491570d0f7ee79785fc359bd7a71c96b04482c427d54b4ff0ae00e" [label=""];
  "sha256:5e50689a36d4ffabe29e08a71f5ed35f2a47805808a2d483f890277d34d48f70" -> "sha256:e90cb11520491570d0f7ee79785fc359bd7a71c96b04482c427d54b4ff0ae00e" [label=""];
  "sha256:e90cb11520491570d0f7ee79785fc359bd7a71c96b04482c427d54b4ff0ae00e" -> "sha256:160e6de9df19c0b575955f8b4426417b8d72dbb91a84bec9cfd46197e42f36f1" [label=""];
  "sha256:160e6de9df19c0b575955f8b4426417b8d72dbb91a84bec9cfd46197e42f36f1" -> "sha256:2275739bb5f12793b9f083c09023fab0b1d7c2da7278679a6e9871f5c1fe6ac4" [label=""];
  "sha256:5e50689a36d4ffabe29e08a71f5ed35f2a47805808a2d483f890277d34d48f70" -> "sha256:2275739bb5f12793b9f083c09023fab0b1d7c2da7278679a6e9871f5c1fe6ac4" [label=""];
  "sha256:2275739bb5f12793b9f083c09023fab0b1d7c2da7278679a6e9871f5c1fe6ac4" -> "sha256:38f55405625b51f7ebebebcb9a004eb26d836720616eea0dde63d7ce941f4e7b" [label=""];
}

