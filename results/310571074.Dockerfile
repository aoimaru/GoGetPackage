[app/sources/310571074.Dockerfile]
digraph {
  "sha256:978ecdd1037285348b0c10ac8f77cfcf849cb13cfea0cf73ba57476653e4e254" [label="docker-image://docker.io/chrisdlangton/hardened-node-alpine:0.0.1" shape="ellipse"];
  "sha256:0a6aa083aa2c530c1f9b716d60c0bb16c814037184eaccbaa01bbb639730ed09" [label="/bin/sh -c npm i -g generator-phaser-plus@3.0.0-beta.1 static-server@2.2 es6-module-transpiler@0.10     --no-optional --no-package-lock &&     apk update     && apk add --no-cache --update git curl bash     && rm -rf /tmp/     && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:be6b7ff7653605350f126e9a120ec28c2ca9b956e873c772c144da69561d1805" [label="/bin/sh -c adduser -s /usr/local/bin/node -h /phaser -G node -S -D phaser" shape="box"];
  "sha256:56924fae62bef3e896c6616b3d3da77db650a41b1d6dec5975bfaf0b3e083f56" [label="mkdir{path=/phaser}" shape="note"];
  "sha256:42f2627c0e7d5e3c7e85dffc89c729c0692417ad32bd945bf97ff9ed7fab6087" [label="local://context" shape="ellipse"];
  "sha256:44d1cfd6244c914284ea062a0668e4b343412b80949e40ddea22fdbe412f124f" [label="copy{src=/package.json, dest=/phaser/}" shape="note"];
  "sha256:f8092e4627618f31dec69d8c0fb3c47fea77bc17d72412ab6aea6dadeac7e5d4" [label="/bin/sh -c npm i phaser@${PHASER_VERSION} --no-optional --no-package-lock  && git clone https://github.com/photonstorm/phaser3-project-template.git /phaser/boilerplate &&     cd /phaser/boilerplate &&     npm i --no-optional --no-package-lock" shape="box"];
  "sha256:08d793e9f871919d34b7332b0927be919a11c1e54268915ccd06ee50529b3b52" [label="sha256:08d793e9f871919d34b7332b0927be919a11c1e54268915ccd06ee50529b3b52" shape="plaintext"];
  "sha256:978ecdd1037285348b0c10ac8f77cfcf849cb13cfea0cf73ba57476653e4e254" -> "sha256:0a6aa083aa2c530c1f9b716d60c0bb16c814037184eaccbaa01bbb639730ed09" [label=""];
  "sha256:0a6aa083aa2c530c1f9b716d60c0bb16c814037184eaccbaa01bbb639730ed09" -> "sha256:be6b7ff7653605350f126e9a120ec28c2ca9b956e873c772c144da69561d1805" [label=""];
  "sha256:be6b7ff7653605350f126e9a120ec28c2ca9b956e873c772c144da69561d1805" -> "sha256:56924fae62bef3e896c6616b3d3da77db650a41b1d6dec5975bfaf0b3e083f56" [label=""];
  "sha256:56924fae62bef3e896c6616b3d3da77db650a41b1d6dec5975bfaf0b3e083f56" -> "sha256:44d1cfd6244c914284ea062a0668e4b343412b80949e40ddea22fdbe412f124f" [label=""];
  "sha256:42f2627c0e7d5e3c7e85dffc89c729c0692417ad32bd945bf97ff9ed7fab6087" -> "sha256:44d1cfd6244c914284ea062a0668e4b343412b80949e40ddea22fdbe412f124f" [label=""];
  "sha256:44d1cfd6244c914284ea062a0668e4b343412b80949e40ddea22fdbe412f124f" -> "sha256:f8092e4627618f31dec69d8c0fb3c47fea77bc17d72412ab6aea6dadeac7e5d4" [label=""];
  "sha256:f8092e4627618f31dec69d8c0fb3c47fea77bc17d72412ab6aea6dadeac7e5d4" -> "sha256:08d793e9f871919d34b7332b0927be919a11c1e54268915ccd06ee50529b3b52" [label=""];
}

