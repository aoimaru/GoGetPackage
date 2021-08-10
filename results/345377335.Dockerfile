[app/sources/345377335.Dockerfile]
digraph {
  "sha256:ddc69bb9433c61c002df51d66fc6fdaa6f085a9d8544492f81c772afec27a5f1" [label="docker-image://docker.io/cloud9/workspace:latest" shape="ellipse"];
  "sha256:a46fded7628cea5d92047e9c9fc7bfd8941f39c0b59beceb227fa2bfaf710ffa" [label="local://context" shape="ellipse"];
  "sha256:1cb0d630eac6e42b366dfe1b37a097b25ad5f7a59a422389094f1333f2ce2e78" [label="copy{src=/files, dest=/home/ubuntu}" shape="note"];
  "sha256:098ca81859013691163484487a40ed70102d3a5d69dce85a6f50521531146288" [label="/bin/sh -c chmod -R g+w /home/ubuntu/workspace &&     chown -R ubuntu:ubuntu /home/ubuntu &&     su ubuntu -c bash -c \"curl https://install.meteor.com/ | sh\"" shape="box"];
  "sha256:295dbb680f30f0d747e9604e646b4a888d02af525e41a877033dfafb62854d1f" [label="copy{src=/files/check-environment, dest=/.check-environment/meteor}" shape="note"];
  "sha256:534515345b2cede4f3c48bdefd7f88de631dc2d5e4ebb47b4301be60f39ad9bb" [label="sha256:534515345b2cede4f3c48bdefd7f88de631dc2d5e4ebb47b4301be60f39ad9bb" shape="plaintext"];
  "sha256:ddc69bb9433c61c002df51d66fc6fdaa6f085a9d8544492f81c772afec27a5f1" -> "sha256:1cb0d630eac6e42b366dfe1b37a097b25ad5f7a59a422389094f1333f2ce2e78" [label=""];
  "sha256:a46fded7628cea5d92047e9c9fc7bfd8941f39c0b59beceb227fa2bfaf710ffa" -> "sha256:1cb0d630eac6e42b366dfe1b37a097b25ad5f7a59a422389094f1333f2ce2e78" [label=""];
  "sha256:1cb0d630eac6e42b366dfe1b37a097b25ad5f7a59a422389094f1333f2ce2e78" -> "sha256:098ca81859013691163484487a40ed70102d3a5d69dce85a6f50521531146288" [label=""];
  "sha256:098ca81859013691163484487a40ed70102d3a5d69dce85a6f50521531146288" -> "sha256:295dbb680f30f0d747e9604e646b4a888d02af525e41a877033dfafb62854d1f" [label=""];
  "sha256:a46fded7628cea5d92047e9c9fc7bfd8941f39c0b59beceb227fa2bfaf710ffa" -> "sha256:295dbb680f30f0d747e9604e646b4a888d02af525e41a877033dfafb62854d1f" [label=""];
  "sha256:295dbb680f30f0d747e9604e646b4a888d02af525e41a877033dfafb62854d1f" -> "sha256:534515345b2cede4f3c48bdefd7f88de631dc2d5e4ebb47b4301be60f39ad9bb" [label=""];
}

