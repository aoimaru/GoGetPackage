[app/sources/354166039.Dockerfile]
digraph {
  "sha256:5803eefd8623133db4427d9ef44496901af7bf795a2546f225418ab365ce8744" [label="local://context" shape="ellipse"];
  "sha256:aa8c6d466deae7796ca5acc9ee07db5f1691ec651f8a5cef6452ac9e82cb2f83" [label="docker-image://docker.io/library/alpine:3.2" shape="ellipse"];
  "sha256:59044804aafa205ce6cfe4e8eda32436d8583c0d297378833ec8ec83936270e8" [label="/bin/sh -c apk add --update bash && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:0a153ad3e4aef28dc74c00abec14f6bf0293078b95c2674c64f19ff8331b0c5e" [label="copy{src=/conf.d, dest=/etc/confd/conf.d}" shape="note"];
  "sha256:0d1ee3111595549d125fb44c9e8ad69d40dce47834665a381212d8e463b08c80" [label="copy{src=/templates, dest=/etc/confd/templates}" shape="note"];
  "sha256:0331f8a872a247b7df3b73762cc838e27041ea1c9b2bd0ef36212064a060b676" [label="https://github.com/cloudnautique/giddyup/releases/download/v0.7.0/giddyup" shape="ellipse"];
  "sha256:5a449d2d3b1960f0c106c41d5a44852b892b74b00e335f76ef4f253fea33f5e3" [label="copy{src=/giddyup, dest=/giddyup}" shape="note"];
  "sha256:1a45efecbd5710c1697ce90186b300f11d7bd55944c7b56a24eba5c647a314d5" [label="https://github.com/rancher/confd/releases/download/0.11.0-dev-rancher/confd-0.11.0-dev-rancher-linux-amd64" shape="ellipse"];
  "sha256:e589a0f165a30a08534cb69809897a0f7ac1933bdc13f55b8c69d1dc5f3ceaad" [label="copy{src=/confd-0.11.0-dev-rancher-linux-amd64, dest=/confd}" shape="note"];
  "sha256:c55e97304b950acd3ee433e6f7184e4aa9c22d2725265ff73b8d38682f8c3a61" [label="https://github.com/cloudnautique/dynamic-drone-nodes/releases/download/v0.1.1/dynamic-drone-nodes" shape="ellipse"];
  "sha256:dc6568ba296fb07e8c8439df78d5c1744e9f12f7548179a4c4c9576f053e2563" [label="copy{src=/dynamic-drone-nodes, dest=/dynamic-drone-nodes}" shape="note"];
  "sha256:e21f2caeebe0f27f24c54404b85d31987acf7e4b954f7138f8b4fa83bc0a8bd2" [label="/bin/sh -c chmod +x /confd /giddyup /dynamic-drone-nodes" shape="box"];
  "sha256:36cbffb78ae09192e90d08eb196fcfc08764972b55cc2eb758393319ce816627" [label="copy{src=/*.sh, dest=/}" shape="note"];
  "sha256:a36ce46e37c0b79c2b871fb03eb0c25393da453b138814b4ad070f0d239645cd" [label="sha256:a36ce46e37c0b79c2b871fb03eb0c25393da453b138814b4ad070f0d239645cd" shape="plaintext"];
  "sha256:aa8c6d466deae7796ca5acc9ee07db5f1691ec651f8a5cef6452ac9e82cb2f83" -> "sha256:59044804aafa205ce6cfe4e8eda32436d8583c0d297378833ec8ec83936270e8" [label=""];
  "sha256:59044804aafa205ce6cfe4e8eda32436d8583c0d297378833ec8ec83936270e8" -> "sha256:0a153ad3e4aef28dc74c00abec14f6bf0293078b95c2674c64f19ff8331b0c5e" [label=""];
  "sha256:5803eefd8623133db4427d9ef44496901af7bf795a2546f225418ab365ce8744" -> "sha256:0a153ad3e4aef28dc74c00abec14f6bf0293078b95c2674c64f19ff8331b0c5e" [label=""];
  "sha256:0a153ad3e4aef28dc74c00abec14f6bf0293078b95c2674c64f19ff8331b0c5e" -> "sha256:0d1ee3111595549d125fb44c9e8ad69d40dce47834665a381212d8e463b08c80" [label=""];
  "sha256:5803eefd8623133db4427d9ef44496901af7bf795a2546f225418ab365ce8744" -> "sha256:0d1ee3111595549d125fb44c9e8ad69d40dce47834665a381212d8e463b08c80" [label=""];
  "sha256:0d1ee3111595549d125fb44c9e8ad69d40dce47834665a381212d8e463b08c80" -> "sha256:5a449d2d3b1960f0c106c41d5a44852b892b74b00e335f76ef4f253fea33f5e3" [label=""];
  "sha256:0331f8a872a247b7df3b73762cc838e27041ea1c9b2bd0ef36212064a060b676" -> "sha256:5a449d2d3b1960f0c106c41d5a44852b892b74b00e335f76ef4f253fea33f5e3" [label=""];
  "sha256:5a449d2d3b1960f0c106c41d5a44852b892b74b00e335f76ef4f253fea33f5e3" -> "sha256:e589a0f165a30a08534cb69809897a0f7ac1933bdc13f55b8c69d1dc5f3ceaad" [label=""];
  "sha256:1a45efecbd5710c1697ce90186b300f11d7bd55944c7b56a24eba5c647a314d5" -> "sha256:e589a0f165a30a08534cb69809897a0f7ac1933bdc13f55b8c69d1dc5f3ceaad" [label=""];
  "sha256:e589a0f165a30a08534cb69809897a0f7ac1933bdc13f55b8c69d1dc5f3ceaad" -> "sha256:dc6568ba296fb07e8c8439df78d5c1744e9f12f7548179a4c4c9576f053e2563" [label=""];
  "sha256:c55e97304b950acd3ee433e6f7184e4aa9c22d2725265ff73b8d38682f8c3a61" -> "sha256:dc6568ba296fb07e8c8439df78d5c1744e9f12f7548179a4c4c9576f053e2563" [label=""];
  "sha256:dc6568ba296fb07e8c8439df78d5c1744e9f12f7548179a4c4c9576f053e2563" -> "sha256:e21f2caeebe0f27f24c54404b85d31987acf7e4b954f7138f8b4fa83bc0a8bd2" [label=""];
  "sha256:e21f2caeebe0f27f24c54404b85d31987acf7e4b954f7138f8b4fa83bc0a8bd2" -> "sha256:36cbffb78ae09192e90d08eb196fcfc08764972b55cc2eb758393319ce816627" [label=""];
  "sha256:5803eefd8623133db4427d9ef44496901af7bf795a2546f225418ab365ce8744" -> "sha256:36cbffb78ae09192e90d08eb196fcfc08764972b55cc2eb758393319ce816627" [label=""];
  "sha256:36cbffb78ae09192e90d08eb196fcfc08764972b55cc2eb758393319ce816627" -> "sha256:a36ce46e37c0b79c2b871fb03eb0c25393da453b138814b4ad070f0d239645cd" [label=""];
}

