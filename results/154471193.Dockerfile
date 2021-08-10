[app/sources/154471193.Dockerfile]
digraph {
  "sha256:d1800fe2850657bf17f308707f027e91516fbaa3c0d89a0803311ceeb61fa674" [label="docker-image://docker.io/library/node:10" shape="ellipse"];
  "sha256:50cbe6cf60eed2ed300a475298ffdcd2e2789f99db25c9540df5d1c7347ba59d" [label="/bin/sh -c mkdir /code" shape="box"];
  "sha256:4c94baa660902df45687940d46a4caf7bdf2a3267752b57167c2a082e6cc1b75" [label="mkdir{path=/code}" shape="note"];
  "sha256:03418da35b8c98dea2c634afbf4eeb6320b3ef12ba4f11962d5d06ad0a4d4f09" [label="local://context" shape="ellipse"];
  "sha256:b454fa102dbf1d455959ebd941e20f81cec61fcca2c203b657c709eefdb8a2f0" [label="copy{src=/web-app/package*.json, dest=/code/}" shape="note"];
  "sha256:58d1ef2ae30a0ae624d1d1829f1dab9fcc4ae3ce60b1711f1e37758dd4d0c657" [label="copy{src=/web-app/api_imaging, dest=/code/api_imaging}" shape="note"];
  "sha256:4721c6b909f5f4e46a0d9f2f6a9fec9a664a4cbc856562250f2b3906afbbd0f4" [label="/bin/sh -c npm ci" shape="box"];
  "sha256:507b2ed21e568205c1b0114b7db256c09f4112b1c1d362ee03567d2b87bc98c9" [label="copy{src=/, dest=/code}" shape="note"];
  "sha256:4d3aa66c520e3178ceb745f16148169fd2e9290693efa56e1d4369cc1f89fbe0" [label="sha256:4d3aa66c520e3178ceb745f16148169fd2e9290693efa56e1d4369cc1f89fbe0" shape="plaintext"];
  "sha256:d1800fe2850657bf17f308707f027e91516fbaa3c0d89a0803311ceeb61fa674" -> "sha256:50cbe6cf60eed2ed300a475298ffdcd2e2789f99db25c9540df5d1c7347ba59d" [label=""];
  "sha256:50cbe6cf60eed2ed300a475298ffdcd2e2789f99db25c9540df5d1c7347ba59d" -> "sha256:4c94baa660902df45687940d46a4caf7bdf2a3267752b57167c2a082e6cc1b75" [label=""];
  "sha256:4c94baa660902df45687940d46a4caf7bdf2a3267752b57167c2a082e6cc1b75" -> "sha256:b454fa102dbf1d455959ebd941e20f81cec61fcca2c203b657c709eefdb8a2f0" [label=""];
  "sha256:03418da35b8c98dea2c634afbf4eeb6320b3ef12ba4f11962d5d06ad0a4d4f09" -> "sha256:b454fa102dbf1d455959ebd941e20f81cec61fcca2c203b657c709eefdb8a2f0" [label=""];
  "sha256:b454fa102dbf1d455959ebd941e20f81cec61fcca2c203b657c709eefdb8a2f0" -> "sha256:58d1ef2ae30a0ae624d1d1829f1dab9fcc4ae3ce60b1711f1e37758dd4d0c657" [label=""];
  "sha256:03418da35b8c98dea2c634afbf4eeb6320b3ef12ba4f11962d5d06ad0a4d4f09" -> "sha256:58d1ef2ae30a0ae624d1d1829f1dab9fcc4ae3ce60b1711f1e37758dd4d0c657" [label=""];
  "sha256:58d1ef2ae30a0ae624d1d1829f1dab9fcc4ae3ce60b1711f1e37758dd4d0c657" -> "sha256:4721c6b909f5f4e46a0d9f2f6a9fec9a664a4cbc856562250f2b3906afbbd0f4" [label=""];
  "sha256:4721c6b909f5f4e46a0d9f2f6a9fec9a664a4cbc856562250f2b3906afbbd0f4" -> "sha256:507b2ed21e568205c1b0114b7db256c09f4112b1c1d362ee03567d2b87bc98c9" [label=""];
  "sha256:03418da35b8c98dea2c634afbf4eeb6320b3ef12ba4f11962d5d06ad0a4d4f09" -> "sha256:507b2ed21e568205c1b0114b7db256c09f4112b1c1d362ee03567d2b87bc98c9" [label=""];
  "sha256:507b2ed21e568205c1b0114b7db256c09f4112b1c1d362ee03567d2b87bc98c9" -> "sha256:4d3aa66c520e3178ceb745f16148169fd2e9290693efa56e1d4369cc1f89fbe0" [label=""];
}

