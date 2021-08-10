[app/sources/252765921.Dockerfile]
digraph {
  "sha256:4360e3f076f08a5f43d6c249f3e3fbe9593aa16bc4c058edc80721992d514004" [label="local://context" shape="ellipse"];
  "sha256:bec6d55ac7096e4979b7a5c5e0d93370819f3a333bf2277146a7feacc09d7a0f" [label="docker-image://docker.io/rawmind/hms-maven:3.3.9" shape="ellipse"];
  "sha256:7af559174864b3cabd17ec4983aeb697f489fac3246c62f03407b1cecc8c3566" [label="/bin/sh -c set -ex; apk add --update --no-cache perl-xml-xpath;" shape="box"];
  "sha256:c7a0e3d86379b1341d42fb9675d421e1d14838b8e1ed19592f6ad59df7489b2d" [label="copy{src=/entrypoint, dest=/usr/local/bin}" shape="note"];
  "sha256:b7ba19ab2d6d742eccfcc3b2d4f2e4e50628037f3ae41fdd811a408d4c6ba8b9" [label="sha256:b7ba19ab2d6d742eccfcc3b2d4f2e4e50628037f3ae41fdd811a408d4c6ba8b9" shape="plaintext"];
  "sha256:bec6d55ac7096e4979b7a5c5e0d93370819f3a333bf2277146a7feacc09d7a0f" -> "sha256:7af559174864b3cabd17ec4983aeb697f489fac3246c62f03407b1cecc8c3566" [label=""];
  "sha256:7af559174864b3cabd17ec4983aeb697f489fac3246c62f03407b1cecc8c3566" -> "sha256:c7a0e3d86379b1341d42fb9675d421e1d14838b8e1ed19592f6ad59df7489b2d" [label=""];
  "sha256:4360e3f076f08a5f43d6c249f3e3fbe9593aa16bc4c058edc80721992d514004" -> "sha256:c7a0e3d86379b1341d42fb9675d421e1d14838b8e1ed19592f6ad59df7489b2d" [label=""];
  "sha256:c7a0e3d86379b1341d42fb9675d421e1d14838b8e1ed19592f6ad59df7489b2d" -> "sha256:b7ba19ab2d6d742eccfcc3b2d4f2e4e50628037f3ae41fdd811a408d4c6ba8b9" [label=""];
}

