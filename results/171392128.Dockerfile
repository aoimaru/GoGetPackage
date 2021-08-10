[app/sources/171392128.Dockerfile]
digraph {
  "sha256:20abab5a41816588162243836fe7f0b2c41d5f552c1f41b98165fd5769622644" [label="docker-image://docker.io/library/node:6-stretch-slim" shape="ellipse"];
  "sha256:1e966b999647226780a5807f81252efe3b6e2c07f2eb67acf97a956aceaf980b" [label="/bin/sh -c apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -yq git jq python" shape="box"];
  "sha256:827d40c7e793ccd4cabd48beed8647095dd4e7ca0f5c9266995395f5174203fa" [label="/bin/sh -c npm install -g bower" shape="box"];
  "sha256:06f07c2dc1af103b22673cf8ec3cb1158aa4dc20eb61791ec64dd825e42c345b" [label="local://context" shape="ellipse"];
  "sha256:7d563b24d952d45d21c5c847ba8f9391652539d7d7f3d53646b42bcd60fd6576" [label="copy{src=/docker-install-tini.sh, dest=/usr/local/bin/docker-install-tini.sh}" shape="note"];
  "sha256:f3e68fc29289ebd3c1997611540e5b9d0d0e563042eae1916db5a621ece0f0c6" [label="/bin/sh -c /usr/local/bin/docker-install-tini.sh" shape="box"];
  "sha256:3f0f0ed9bd048f046fb8f027871527b5a18edb691bb1e75acda8e1e4f389ae9a" [label="copy{src=/, dest=/cryptpad}" shape="note"];
  "sha256:3b84c368d5b1901c0985bfe3b9e98eabc3cb503ffbbb7416485c1232dab80836" [label="mkdir{path=/cryptpad}" shape="note"];
  "sha256:cf88b029916869ef045acf89457f42a705ee92dab3ecca692a75609841ca3446" [label="/bin/sh -c npm install --production     && npm install -g bower     && bower install --allow-root" shape="box"];
  "sha256:3bcae5d138d42f359ee8d08e3da252c9011dc1843da17a6d04dfcce16ecfd530" [label="copy{src=/sbin/tini, dest=/sbin/tini}" shape="note"];
  "sha256:07275ff4e1b61117783f57181b405e938c6b754de29549fb54427338eb71eb63" [label="copy{src=/cryptpad, dest=/cryptpad}" shape="note"];
  "sha256:e68ce6b96728101aa6f07f8e6454596e137740b5464d6ecddbaa4dcaa7f8ac58" [label="mkdir{path=/cryptpad}" shape="note"];
  "sha256:c1a95ce557f9c37d7d27fa7a857c42e30f85feb43fc68088d79befd1c7321c43" [label="sha256:c1a95ce557f9c37d7d27fa7a857c42e30f85feb43fc68088d79befd1c7321c43" shape="plaintext"];
  "sha256:20abab5a41816588162243836fe7f0b2c41d5f552c1f41b98165fd5769622644" -> "sha256:1e966b999647226780a5807f81252efe3b6e2c07f2eb67acf97a956aceaf980b" [label=""];
  "sha256:1e966b999647226780a5807f81252efe3b6e2c07f2eb67acf97a956aceaf980b" -> "sha256:827d40c7e793ccd4cabd48beed8647095dd4e7ca0f5c9266995395f5174203fa" [label=""];
  "sha256:827d40c7e793ccd4cabd48beed8647095dd4e7ca0f5c9266995395f5174203fa" -> "sha256:7d563b24d952d45d21c5c847ba8f9391652539d7d7f3d53646b42bcd60fd6576" [label=""];
  "sha256:06f07c2dc1af103b22673cf8ec3cb1158aa4dc20eb61791ec64dd825e42c345b" -> "sha256:7d563b24d952d45d21c5c847ba8f9391652539d7d7f3d53646b42bcd60fd6576" [label=""];
  "sha256:7d563b24d952d45d21c5c847ba8f9391652539d7d7f3d53646b42bcd60fd6576" -> "sha256:f3e68fc29289ebd3c1997611540e5b9d0d0e563042eae1916db5a621ece0f0c6" [label=""];
  "sha256:f3e68fc29289ebd3c1997611540e5b9d0d0e563042eae1916db5a621ece0f0c6" -> "sha256:3f0f0ed9bd048f046fb8f027871527b5a18edb691bb1e75acda8e1e4f389ae9a" [label=""];
  "sha256:06f07c2dc1af103b22673cf8ec3cb1158aa4dc20eb61791ec64dd825e42c345b" -> "sha256:3f0f0ed9bd048f046fb8f027871527b5a18edb691bb1e75acda8e1e4f389ae9a" [label=""];
  "sha256:3f0f0ed9bd048f046fb8f027871527b5a18edb691bb1e75acda8e1e4f389ae9a" -> "sha256:3b84c368d5b1901c0985bfe3b9e98eabc3cb503ffbbb7416485c1232dab80836" [label=""];
  "sha256:3b84c368d5b1901c0985bfe3b9e98eabc3cb503ffbbb7416485c1232dab80836" -> "sha256:cf88b029916869ef045acf89457f42a705ee92dab3ecca692a75609841ca3446" [label=""];
  "sha256:20abab5a41816588162243836fe7f0b2c41d5f552c1f41b98165fd5769622644" -> "sha256:3bcae5d138d42f359ee8d08e3da252c9011dc1843da17a6d04dfcce16ecfd530" [label=""];
  "sha256:cf88b029916869ef045acf89457f42a705ee92dab3ecca692a75609841ca3446" -> "sha256:3bcae5d138d42f359ee8d08e3da252c9011dc1843da17a6d04dfcce16ecfd530" [label=""];
  "sha256:3bcae5d138d42f359ee8d08e3da252c9011dc1843da17a6d04dfcce16ecfd530" -> "sha256:07275ff4e1b61117783f57181b405e938c6b754de29549fb54427338eb71eb63" [label=""];
  "sha256:cf88b029916869ef045acf89457f42a705ee92dab3ecca692a75609841ca3446" -> "sha256:07275ff4e1b61117783f57181b405e938c6b754de29549fb54427338eb71eb63" [label=""];
  "sha256:07275ff4e1b61117783f57181b405e938c6b754de29549fb54427338eb71eb63" -> "sha256:e68ce6b96728101aa6f07f8e6454596e137740b5464d6ecddbaa4dcaa7f8ac58" [label=""];
  "sha256:e68ce6b96728101aa6f07f8e6454596e137740b5464d6ecddbaa4dcaa7f8ac58" -> "sha256:c1a95ce557f9c37d7d27fa7a857c42e30f85feb43fc68088d79befd1c7321c43" [label=""];
}

