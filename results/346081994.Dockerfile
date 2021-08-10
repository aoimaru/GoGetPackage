[app/sources/346081994.Dockerfile]
digraph {
  "sha256:49c22f3c46ac33f934b99ae8d8931a3281c568e14144a24474629da154037493" [label="docker-image://docker.io/library/node:alpine" shape="ellipse"];
  "sha256:3c9aa00e39514fc2886c578e0ea58b9fd55c70dbd45b92222b9826011ddb518e" [label="mkdir{path=/jsbuild}" shape="note"];
  "sha256:54458c17d54c227bbc2b0c0f871c27406ff4437857709c440b5ad46636820bc0" [label="/bin/sh -c apk update &&     apk add python3 &&     rm -rf /var/cache/apk/* &&     npm config set unsafe-perm true &&     npm -g install cssnano requirejs postcss@\">=6\" postcss-cli@latest postcss-import-url postcss-css-variables" shape="box"];
  "sha256:8af06dbc1c55f184fe4aa261d541047344ec38965d4c015b38775229cbb3c863" [label="local://context" shape="ellipse"];
  "sha256:55659d7789a2331f7c3692a17955be1080a82bfd3374dc1785c368a23e9cdb44" [label="copy{src=/build_js.sh, dest=/jsbuild/build_js.sh}" shape="note"];
  "sha256:d58bf7dbda0cd0e511dfb331de5a56144eefa2ef1ffa5db7a64b0e5fcfd3e718" [label="copy{src=/build_templates.py, dest=/jsbuild/build_templates.py}" shape="note"];
  "sha256:e4334e3a7dfdb9a8e5fe83e22d7eb626b9e05b1f69077015b9f14b3477bd3632" [label="copy{src=/postcss.config.js, dest=/config/postcss.config.js}" shape="note"];
  "sha256:e6c0013248da081cac72c768e48ddaf83aca3ab2310192ea086da5cb273fa880" [label="sha256:e6c0013248da081cac72c768e48ddaf83aca3ab2310192ea086da5cb273fa880" shape="plaintext"];
  "sha256:49c22f3c46ac33f934b99ae8d8931a3281c568e14144a24474629da154037493" -> "sha256:3c9aa00e39514fc2886c578e0ea58b9fd55c70dbd45b92222b9826011ddb518e" [label=""];
  "sha256:3c9aa00e39514fc2886c578e0ea58b9fd55c70dbd45b92222b9826011ddb518e" -> "sha256:54458c17d54c227bbc2b0c0f871c27406ff4437857709c440b5ad46636820bc0" [label=""];
  "sha256:54458c17d54c227bbc2b0c0f871c27406ff4437857709c440b5ad46636820bc0" -> "sha256:55659d7789a2331f7c3692a17955be1080a82bfd3374dc1785c368a23e9cdb44" [label=""];
  "sha256:8af06dbc1c55f184fe4aa261d541047344ec38965d4c015b38775229cbb3c863" -> "sha256:55659d7789a2331f7c3692a17955be1080a82bfd3374dc1785c368a23e9cdb44" [label=""];
  "sha256:55659d7789a2331f7c3692a17955be1080a82bfd3374dc1785c368a23e9cdb44" -> "sha256:d58bf7dbda0cd0e511dfb331de5a56144eefa2ef1ffa5db7a64b0e5fcfd3e718" [label=""];
  "sha256:8af06dbc1c55f184fe4aa261d541047344ec38965d4c015b38775229cbb3c863" -> "sha256:d58bf7dbda0cd0e511dfb331de5a56144eefa2ef1ffa5db7a64b0e5fcfd3e718" [label=""];
  "sha256:d58bf7dbda0cd0e511dfb331de5a56144eefa2ef1ffa5db7a64b0e5fcfd3e718" -> "sha256:e4334e3a7dfdb9a8e5fe83e22d7eb626b9e05b1f69077015b9f14b3477bd3632" [label=""];
  "sha256:8af06dbc1c55f184fe4aa261d541047344ec38965d4c015b38775229cbb3c863" -> "sha256:e4334e3a7dfdb9a8e5fe83e22d7eb626b9e05b1f69077015b9f14b3477bd3632" [label=""];
  "sha256:e4334e3a7dfdb9a8e5fe83e22d7eb626b9e05b1f69077015b9f14b3477bd3632" -> "sha256:e6c0013248da081cac72c768e48ddaf83aca3ab2310192ea086da5cb273fa880" [label=""];
}

