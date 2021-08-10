[app/sources/172523175.Dockerfile]
digraph {
  "sha256:3e8b93c90b71b89e1ea776ddc8ddf7d0396d3e66a977f0a3538ec0abfe71d10c" [label="docker-image://docker.io/library/ubuntu:13.10" shape="ellipse"];
  "sha256:511309c5d6788495ccf9a077a2866ce91dd4b69bd2130ce6ac295d3bfd110d5f" [label="/bin/sh -c apt-get update &&     apt-get install -y --force-yes       curl       apt-transport-https       lsb-release       build-essential       python-all" shape="box"];
  "sha256:d252fa49ef1e152ae0df1b7ee37c10072b859d20be782acd863cfbc4369f7496" [label="/bin/sh -c curl -sL https://deb.nodesource.com/setup | bash -" shape="box"];
  "sha256:9c424854562d75bf6b1e1bbcd1bacdcf4f0bbfec29876644158fb653a05708ce" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:50d171cf32368becfb428ae029bbe9c717357e02c80140e2280d7557f9a51ea5" [label="/bin/sh -c apt-get install nodejs -y --force-yes" shape="box"];
  "sha256:1e1556243c21009db0f66f3af3b54ee8d597a46f1ee5dc0741139526b0b74d5d" [label="local://context" shape="ellipse"];
  "sha256:19123c00e3d8324f7f4d28578496876e4591e022aec75e18a3c435bfac6e4810" [label="copy{src=/, dest=/usr/src/}" shape="note"];
  "sha256:c12129f3b2b9efae5fc49a712deedf3b108c96333fde157e54cefb5356dd9e87" [label="mkdir{path=/usr/src}" shape="note"];
  "sha256:ebfa3239958c2d0fb728140f61d53886f4bd7316a8d52fdefbc3cd4c9fb83731" [label="sha256:ebfa3239958c2d0fb728140f61d53886f4bd7316a8d52fdefbc3cd4c9fb83731" shape="plaintext"];
  "sha256:3e8b93c90b71b89e1ea776ddc8ddf7d0396d3e66a977f0a3538ec0abfe71d10c" -> "sha256:511309c5d6788495ccf9a077a2866ce91dd4b69bd2130ce6ac295d3bfd110d5f" [label=""];
  "sha256:511309c5d6788495ccf9a077a2866ce91dd4b69bd2130ce6ac295d3bfd110d5f" -> "sha256:d252fa49ef1e152ae0df1b7ee37c10072b859d20be782acd863cfbc4369f7496" [label=""];
  "sha256:d252fa49ef1e152ae0df1b7ee37c10072b859d20be782acd863cfbc4369f7496" -> "sha256:9c424854562d75bf6b1e1bbcd1bacdcf4f0bbfec29876644158fb653a05708ce" [label=""];
  "sha256:9c424854562d75bf6b1e1bbcd1bacdcf4f0bbfec29876644158fb653a05708ce" -> "sha256:50d171cf32368becfb428ae029bbe9c717357e02c80140e2280d7557f9a51ea5" [label=""];
  "sha256:50d171cf32368becfb428ae029bbe9c717357e02c80140e2280d7557f9a51ea5" -> "sha256:19123c00e3d8324f7f4d28578496876e4591e022aec75e18a3c435bfac6e4810" [label=""];
  "sha256:1e1556243c21009db0f66f3af3b54ee8d597a46f1ee5dc0741139526b0b74d5d" -> "sha256:19123c00e3d8324f7f4d28578496876e4591e022aec75e18a3c435bfac6e4810" [label=""];
  "sha256:19123c00e3d8324f7f4d28578496876e4591e022aec75e18a3c435bfac6e4810" -> "sha256:c12129f3b2b9efae5fc49a712deedf3b108c96333fde157e54cefb5356dd9e87" [label=""];
  "sha256:c12129f3b2b9efae5fc49a712deedf3b108c96333fde157e54cefb5356dd9e87" -> "sha256:ebfa3239958c2d0fb728140f61d53886f4bd7316a8d52fdefbc3cd4c9fb83731" [label=""];
}

