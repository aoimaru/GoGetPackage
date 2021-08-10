[app/sources/347488911.Dockerfile]
digraph {
  "sha256:63c799021aadd09583f7c3eed925cb07acdc6bccc0098b6bc6df3dc80668ca12" [label="docker-image://docker.io/library/node:8-stretch" shape="ellipse"];
  "sha256:5ab87bdcfc6679b3a1229a42ff688325294b3fb95269540ead71b2e84d04c59c" [label="/bin/sh -c dpkg --add-architecture i386" shape="box"];
  "sha256:c2043a3df9901560cbb2e4074a741b639f0afcbcfa994b4570ba04eb46f82055" [label="/bin/sh -c apt-get update     && apt-get --yes install wine32 imagemagick     && apt-get clean && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:ff0dc75a796ec48a4aa231df910ff589818a19881f77668c58f2a96d889aff2b" [label="local://context" shape="ellipse"];
  "sha256:af3dfa481f9a2bcf91f1e16cc80d30ae60e79f33cabf1b60b2d0c51f3d4373ba" [label="copy{src=/, dest=/nativefier}" shape="note"];
  "sha256:80cf64f475d138719aeb8c99effd4b072aa627dc6be117d3f937664b62296bb6" [label="mkdir{path=/nativefier/app}" shape="note"];
  "sha256:53839aee8d87647117c7203d93082358670e8767457cee022a28850ddfe6a093" [label="/bin/sh -c npm install" shape="box"];
  "sha256:b04fe7ec271d78a91c1676b4ba2aa5a390fd3f74065321698032c9bb86ef05a0" [label="mkdir{path=/nativefier}" shape="note"];
  "sha256:757acafa93f556d29a98fc4ca402813da4c49491ea6b36f55d4634bce217cf2b" [label="/bin/sh -c npm install && npm run build && npm link" shape="box"];
  "sha256:33c4d1a600d7a436d9a912d80a817749ae882c4b4bec296d7bf0103bd2e1c1a9" [label="/bin/sh -c nativefier https://github.com/jiahaog/nativefier /tmp/nativefier     && nativefier -p osx https://github.com/jiahaog/nativefier /tmp/nativefier     && nativefier -p windows https://github.com/jiahaog/nativefier /tmp/nativefier     && rm -rf /tmp/nativefier" shape="box"];
  "sha256:b849e27a03489e19293c057c8f752e40680e38a9fd87b4492c344ce5052eab50" [label="sha256:b849e27a03489e19293c057c8f752e40680e38a9fd87b4492c344ce5052eab50" shape="plaintext"];
  "sha256:63c799021aadd09583f7c3eed925cb07acdc6bccc0098b6bc6df3dc80668ca12" -> "sha256:5ab87bdcfc6679b3a1229a42ff688325294b3fb95269540ead71b2e84d04c59c" [label=""];
  "sha256:5ab87bdcfc6679b3a1229a42ff688325294b3fb95269540ead71b2e84d04c59c" -> "sha256:c2043a3df9901560cbb2e4074a741b639f0afcbcfa994b4570ba04eb46f82055" [label=""];
  "sha256:c2043a3df9901560cbb2e4074a741b639f0afcbcfa994b4570ba04eb46f82055" -> "sha256:af3dfa481f9a2bcf91f1e16cc80d30ae60e79f33cabf1b60b2d0c51f3d4373ba" [label=""];
  "sha256:ff0dc75a796ec48a4aa231df910ff589818a19881f77668c58f2a96d889aff2b" -> "sha256:af3dfa481f9a2bcf91f1e16cc80d30ae60e79f33cabf1b60b2d0c51f3d4373ba" [label=""];
  "sha256:af3dfa481f9a2bcf91f1e16cc80d30ae60e79f33cabf1b60b2d0c51f3d4373ba" -> "sha256:80cf64f475d138719aeb8c99effd4b072aa627dc6be117d3f937664b62296bb6" [label=""];
  "sha256:80cf64f475d138719aeb8c99effd4b072aa627dc6be117d3f937664b62296bb6" -> "sha256:53839aee8d87647117c7203d93082358670e8767457cee022a28850ddfe6a093" [label=""];
  "sha256:53839aee8d87647117c7203d93082358670e8767457cee022a28850ddfe6a093" -> "sha256:b04fe7ec271d78a91c1676b4ba2aa5a390fd3f74065321698032c9bb86ef05a0" [label=""];
  "sha256:b04fe7ec271d78a91c1676b4ba2aa5a390fd3f74065321698032c9bb86ef05a0" -> "sha256:757acafa93f556d29a98fc4ca402813da4c49491ea6b36f55d4634bce217cf2b" [label=""];
  "sha256:757acafa93f556d29a98fc4ca402813da4c49491ea6b36f55d4634bce217cf2b" -> "sha256:33c4d1a600d7a436d9a912d80a817749ae882c4b4bec296d7bf0103bd2e1c1a9" [label=""];
  "sha256:33c4d1a600d7a436d9a912d80a817749ae882c4b4bec296d7bf0103bd2e1c1a9" -> "sha256:b849e27a03489e19293c057c8f752e40680e38a9fd87b4492c344ce5052eab50" [label=""];
}

