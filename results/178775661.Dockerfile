[app/sources/178775661.Dockerfile]
digraph {
  "sha256:c87ec59635d50ef7064397225acdda392bdfa01234887506ccd126548dabde0f" [label="docker-image://docker.io/imiell/sd_shutit:latest" shape="ellipse"];
  "sha256:34b308f3c3057fd167507520454c0cb7edc863ea44b92f762c1b6b2504944310" [label="mkdir{path=/opt}" shape="note"];
  "sha256:f724b366ed0461ce63c07adda6ae5741526beb76d4617f61e3df2e77630b27dd" [label="/bin/sh -c git clone https://github.com/ianmiell/shutit-distro.git" shape="box"];
  "sha256:77dd6bedad013d6292980deeb4359422923f07733765f6bd4a0d9957a7c48555" [label="mkdir{path=/opt/shutit-distro/apache}" shape="note"];
  "sha256:53da747a9ef9b19fe849ae024a162c48e574795f5b4deb1b503cbeb6c746b2c2" [label="/bin/sh -c /opt/shutit/shutit build --shutit_module_path .. --delivery bash" shape="box"];
  "sha256:3c66ffe9e75f19b2ded7f7d78d9f43bd4fff519783d3c933cf5a9eaf0d5ef4ea" [label="sha256:3c66ffe9e75f19b2ded7f7d78d9f43bd4fff519783d3c933cf5a9eaf0d5ef4ea" shape="plaintext"];
  "sha256:c87ec59635d50ef7064397225acdda392bdfa01234887506ccd126548dabde0f" -> "sha256:34b308f3c3057fd167507520454c0cb7edc863ea44b92f762c1b6b2504944310" [label=""];
  "sha256:34b308f3c3057fd167507520454c0cb7edc863ea44b92f762c1b6b2504944310" -> "sha256:f724b366ed0461ce63c07adda6ae5741526beb76d4617f61e3df2e77630b27dd" [label=""];
  "sha256:f724b366ed0461ce63c07adda6ae5741526beb76d4617f61e3df2e77630b27dd" -> "sha256:77dd6bedad013d6292980deeb4359422923f07733765f6bd4a0d9957a7c48555" [label=""];
  "sha256:77dd6bedad013d6292980deeb4359422923f07733765f6bd4a0d9957a7c48555" -> "sha256:53da747a9ef9b19fe849ae024a162c48e574795f5b4deb1b503cbeb6c746b2c2" [label=""];
  "sha256:53da747a9ef9b19fe849ae024a162c48e574795f5b4deb1b503cbeb6c746b2c2" -> "sha256:3c66ffe9e75f19b2ded7f7d78d9f43bd4fff519783d3c933cf5a9eaf0d5ef4ea" [label=""];
}

