[app/sources/309386133.Dockerfile]
digraph {
  "sha256:318927f135012e67d0746365df80643146a12f5ecfb56d9ce349c820d48b973d" [label="docker-image://docker.io/library/ubuntu:trusty-20180420" shape="ellipse"];
  "sha256:5955395e1e37111648f3b3cf1a804506b6cb86d753abc444961d7ff39ddd926e" [label="/bin/sh -c set -x     && sed -i \"s/archive.ubuntu.com/$AWS_REGION.ec2.archive.ubuntu.com/\" /etc/apt/sources.list     && export DEBIAN_FRONTEND=noninteractive     && apt-get update" shape="box"];
  "sha256:b4188b8bc8683d3b7a981f8244304043c0f627ba14d4789a7bd04e1a20fa6f19" [label="/bin/sh -c export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install -y     git     libcurl4-gnutls-dev     libssl-dev     libxml2-dev     make     curl &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:668d457d18a07f0027fa7aac7e3d9573fcaa3d1a90f318e4d24a579790c07c70" [label="/bin/sh -c export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install -y     libreadonly-xs-perl     libwww-perl     libxml-libxml-perl     ruby     tcl     tk     xdg-utils &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:aa558e114c9dbaed9e7b643a5468992fd7dbbb0f5b78592c78bf7cbaf336ba96" [label="/bin/sh -c export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install -y --no-install-recommends     texlive     texlive-fonts-extra     texlive-generic-recommended &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:a89a477ef8032a22d7bf74a19bb14a2b29aa77fbfb7c44d3fdbb89560fd61a55" [label="/bin/sh -c export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install -y --no-install-recommends     biber     latex-beamer     lmodern     prosper     ps2eps     tex-gyre     texinfo     texlive-bibtex-extra     texlive-extra-utils     texlive-font-utils     texlive-latex-extra     texlive-luatex     texlive-pstricks     texlive-xetex &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:626b644260a6cae150f1711288cae1a50b74dbd899b6819eaccdc55c50a4ac71" [label="/bin/sh -c export PANDOC_VERSION=2.1.3 &&     cd /usr/local/bin &&     curl -L -O https://s3.amazonaws.com/rstudio-buildtools/pandoc/${PANDOC_VERSION}/linux-64/pandoc.gz &&     curl -L -O https://s3.amazonaws.com/rstudio-buildtools/pandoc/${PANDOC_VERSION}/linux-64/pandoc-citeproc.gz &&     gzip -d pandoc.gz pandoc-citeproc.gz &&     chmod 0755 pandoc pandoc-citeproc" shape="box"];
  "sha256:d06603aac8a31f3c9c024791a07baddff7f950fc0591ca5ee62d5b859adc569d" [label="mkdir{path=/rsconnect_jupyter}" shape="note"];
  "sha256:eb8d242e19bef51d1c40ab9572db73c1f10edaf91df167db085144bff730189a" [label="sha256:eb8d242e19bef51d1c40ab9572db73c1f10edaf91df167db085144bff730189a" shape="plaintext"];
  "sha256:318927f135012e67d0746365df80643146a12f5ecfb56d9ce349c820d48b973d" -> "sha256:5955395e1e37111648f3b3cf1a804506b6cb86d753abc444961d7ff39ddd926e" [label=""];
  "sha256:5955395e1e37111648f3b3cf1a804506b6cb86d753abc444961d7ff39ddd926e" -> "sha256:b4188b8bc8683d3b7a981f8244304043c0f627ba14d4789a7bd04e1a20fa6f19" [label=""];
  "sha256:b4188b8bc8683d3b7a981f8244304043c0f627ba14d4789a7bd04e1a20fa6f19" -> "sha256:668d457d18a07f0027fa7aac7e3d9573fcaa3d1a90f318e4d24a579790c07c70" [label=""];
  "sha256:668d457d18a07f0027fa7aac7e3d9573fcaa3d1a90f318e4d24a579790c07c70" -> "sha256:aa558e114c9dbaed9e7b643a5468992fd7dbbb0f5b78592c78bf7cbaf336ba96" [label=""];
  "sha256:aa558e114c9dbaed9e7b643a5468992fd7dbbb0f5b78592c78bf7cbaf336ba96" -> "sha256:a89a477ef8032a22d7bf74a19bb14a2b29aa77fbfb7c44d3fdbb89560fd61a55" [label=""];
  "sha256:a89a477ef8032a22d7bf74a19bb14a2b29aa77fbfb7c44d3fdbb89560fd61a55" -> "sha256:626b644260a6cae150f1711288cae1a50b74dbd899b6819eaccdc55c50a4ac71" [label=""];
  "sha256:626b644260a6cae150f1711288cae1a50b74dbd899b6819eaccdc55c50a4ac71" -> "sha256:d06603aac8a31f3c9c024791a07baddff7f950fc0591ca5ee62d5b859adc569d" [label=""];
  "sha256:d06603aac8a31f3c9c024791a07baddff7f950fc0591ca5ee62d5b859adc569d" -> "sha256:eb8d242e19bef51d1c40ab9572db73c1f10edaf91df167db085144bff730189a" [label=""];
}

