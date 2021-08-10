[app/sources/252770000.Dockerfile]
digraph {
  "sha256:fdc684ac5ca84be2c313c7038e6e31e694cb22bc99a29bb32cddacc6d3f8ad12" [label="local://context" shape="ellipse"];
  "sha256:5995a39e68e9e61d3ffe79e05fb2178d63b03cf306a8a6d28dcc970298cd13d0" [label="docker-image://docker.io/library/node:6" shape="ellipse"];
  "sha256:811711eff2fc1befe13e82e63486cb804237fce0ba8c11a306638807add1fd28" [label="/bin/sh -c mkdir /opt/authoritah" shape="box"];
  "sha256:e56ff1c9d79556fc34b4b749c305c2d9de6230ecf9180f3c51905226236d1f78" [label="copy{src=/src, dest=/opt/authoritah/src/}" shape="note"];
  "sha256:e3ca15a56e67c97fae74ef88e3bf9c794f7cbeb7a8bbcad6a6f66e7945e471c9" [label="copy{src=/package.json, dest=/opt/authoritah}" shape="note"];
  "sha256:a6013285cfad58b9a8b7602af36061a25f714addeb4cff2d843894a4890b2925" [label="copy{src=/bin/authoritah, dest=/opt/authoritah/bin/}" shape="note"];
  "sha256:4d356d71e92e7fc93f882995e62b47bd3dd22c9aeef4cf187aa533fa211d2eeb" [label="mkdir{path=/opt/authoritah}" shape="note"];
  "sha256:75048b7695257586cc237a3d481415d28a20219253b9756790608e6c60a96750" [label="/bin/sh -c npm install" shape="box"];
  "sha256:cb90182bb4b735fc06385c0e7fc0c825b9de225551e43e259932842b3b922399" [label="/bin/sh -c npm run build" shape="box"];
  "sha256:eec267dd4ff864c3ad817875791b63f4fae9458822137f569364f7434bce60a0" [label="/bin/sh -c npm prune --production" shape="box"];
  "sha256:3b1198ba17fcd1035ad29f97fff1e5be713eec00ec83392009a4691987fb2e35" [label="/bin/sh -c mkdir /auth0" shape="box"];
  "sha256:fd764552397be2eb21bd2e76d8a1a17594ffbced7c5d56e60b12d501694b78ee" [label="mkdir{path=/auth0}" shape="note"];
  "sha256:41a8e6599911dc598101bd7e039964242561f93fa069e7809154801a161899e9" [label="sha256:41a8e6599911dc598101bd7e039964242561f93fa069e7809154801a161899e9" shape="plaintext"];
  "sha256:5995a39e68e9e61d3ffe79e05fb2178d63b03cf306a8a6d28dcc970298cd13d0" -> "sha256:811711eff2fc1befe13e82e63486cb804237fce0ba8c11a306638807add1fd28" [label=""];
  "sha256:811711eff2fc1befe13e82e63486cb804237fce0ba8c11a306638807add1fd28" -> "sha256:e56ff1c9d79556fc34b4b749c305c2d9de6230ecf9180f3c51905226236d1f78" [label=""];
  "sha256:fdc684ac5ca84be2c313c7038e6e31e694cb22bc99a29bb32cddacc6d3f8ad12" -> "sha256:e56ff1c9d79556fc34b4b749c305c2d9de6230ecf9180f3c51905226236d1f78" [label=""];
  "sha256:e56ff1c9d79556fc34b4b749c305c2d9de6230ecf9180f3c51905226236d1f78" -> "sha256:e3ca15a56e67c97fae74ef88e3bf9c794f7cbeb7a8bbcad6a6f66e7945e471c9" [label=""];
  "sha256:fdc684ac5ca84be2c313c7038e6e31e694cb22bc99a29bb32cddacc6d3f8ad12" -> "sha256:e3ca15a56e67c97fae74ef88e3bf9c794f7cbeb7a8bbcad6a6f66e7945e471c9" [label=""];
  "sha256:e3ca15a56e67c97fae74ef88e3bf9c794f7cbeb7a8bbcad6a6f66e7945e471c9" -> "sha256:a6013285cfad58b9a8b7602af36061a25f714addeb4cff2d843894a4890b2925" [label=""];
  "sha256:fdc684ac5ca84be2c313c7038e6e31e694cb22bc99a29bb32cddacc6d3f8ad12" -> "sha256:a6013285cfad58b9a8b7602af36061a25f714addeb4cff2d843894a4890b2925" [label=""];
  "sha256:a6013285cfad58b9a8b7602af36061a25f714addeb4cff2d843894a4890b2925" -> "sha256:4d356d71e92e7fc93f882995e62b47bd3dd22c9aeef4cf187aa533fa211d2eeb" [label=""];
  "sha256:4d356d71e92e7fc93f882995e62b47bd3dd22c9aeef4cf187aa533fa211d2eeb" -> "sha256:75048b7695257586cc237a3d481415d28a20219253b9756790608e6c60a96750" [label=""];
  "sha256:75048b7695257586cc237a3d481415d28a20219253b9756790608e6c60a96750" -> "sha256:cb90182bb4b735fc06385c0e7fc0c825b9de225551e43e259932842b3b922399" [label=""];
  "sha256:cb90182bb4b735fc06385c0e7fc0c825b9de225551e43e259932842b3b922399" -> "sha256:eec267dd4ff864c3ad817875791b63f4fae9458822137f569364f7434bce60a0" [label=""];
  "sha256:eec267dd4ff864c3ad817875791b63f4fae9458822137f569364f7434bce60a0" -> "sha256:3b1198ba17fcd1035ad29f97fff1e5be713eec00ec83392009a4691987fb2e35" [label=""];
  "sha256:3b1198ba17fcd1035ad29f97fff1e5be713eec00ec83392009a4691987fb2e35" -> "sha256:fd764552397be2eb21bd2e76d8a1a17594ffbced7c5d56e60b12d501694b78ee" [label=""];
  "sha256:fd764552397be2eb21bd2e76d8a1a17594ffbced7c5d56e60b12d501694b78ee" -> "sha256:41a8e6599911dc598101bd7e039964242561f93fa069e7809154801a161899e9" [label=""];
}

