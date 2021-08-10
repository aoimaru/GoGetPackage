[app/sources/459447379.Dockerfile]
digraph {
  "sha256:3edbee802097fb27b53d92aff9527468bd8aa87b6b3cad220a4088734aa7eb99" [label="docker-image://docker.io/library/php:alpine" shape="ellipse"];
  "sha256:48d786d7f8a2a1b0ef15cd4958c28fd32b783a1ef4d6cacd69882fe2947af15a" [label="docker-image://docker.io/library/composer:latest" shape="ellipse"];
  "sha256:f52205d7558a0474db893314601a937ffe4978d6214a7baf2d247c48776bb5be" [label="local://context" shape="ellipse"];
  "sha256:77e494e9646e0bf8b8049564429831980389e1b758948abee2795a21e5b12c5d" [label="copy{src=/composer.*, dest=/app/}" shape="note"];
  "sha256:fffa04ba3ebde36efbad171079da4f1ddda0d19caffb4a299971559f7093159f" [label="mkdir{path=/app}" shape="note"];
  "sha256:1fb4ab0ac963a9a36ec77b02c03f8a05618621e23e16f7b958c172531425efd0" [label="/bin/sh -c composer install" shape="box"];
  "sha256:c3bb6552f160c4b91f99cdcddea1d1e41120a130442326a686a3de33c3afbfd5" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:3d0161546a55b0ecc4e321d4a2f07a239f4626356dcddae90d08ea406e8d994a" [label="copy{src=/app, dest=/app}" shape="note"];
  "sha256:08a826b14ecf6f4ae1752ff39cfde71d04b7a5fc01c91efb74fd8ce401e5000b" [label="/bin/sh -c chown -R www-data /app/" shape="box"];
  "sha256:5557200dcf00d2c6f3b78e8da69c86c90b1c8f998c8758f0bdf47d5677465596" [label="mkdir{path=/app/www}" shape="note"];
  "sha256:d47adaa55c1325123479ad460ce25b1b47683ff5960d799e42e1b77b9404736f" [label="sha256:d47adaa55c1325123479ad460ce25b1b47683ff5960d799e42e1b77b9404736f" shape="plaintext"];
  "sha256:48d786d7f8a2a1b0ef15cd4958c28fd32b783a1ef4d6cacd69882fe2947af15a" -> "sha256:77e494e9646e0bf8b8049564429831980389e1b758948abee2795a21e5b12c5d" [label=""];
  "sha256:f52205d7558a0474db893314601a937ffe4978d6214a7baf2d247c48776bb5be" -> "sha256:77e494e9646e0bf8b8049564429831980389e1b758948abee2795a21e5b12c5d" [label=""];
  "sha256:77e494e9646e0bf8b8049564429831980389e1b758948abee2795a21e5b12c5d" -> "sha256:fffa04ba3ebde36efbad171079da4f1ddda0d19caffb4a299971559f7093159f" [label=""];
  "sha256:fffa04ba3ebde36efbad171079da4f1ddda0d19caffb4a299971559f7093159f" -> "sha256:1fb4ab0ac963a9a36ec77b02c03f8a05618621e23e16f7b958c172531425efd0" [label=""];
  "sha256:1fb4ab0ac963a9a36ec77b02c03f8a05618621e23e16f7b958c172531425efd0" -> "sha256:c3bb6552f160c4b91f99cdcddea1d1e41120a130442326a686a3de33c3afbfd5" [label=""];
  "sha256:f52205d7558a0474db893314601a937ffe4978d6214a7baf2d247c48776bb5be" -> "sha256:c3bb6552f160c4b91f99cdcddea1d1e41120a130442326a686a3de33c3afbfd5" [label=""];
  "sha256:3edbee802097fb27b53d92aff9527468bd8aa87b6b3cad220a4088734aa7eb99" -> "sha256:3d0161546a55b0ecc4e321d4a2f07a239f4626356dcddae90d08ea406e8d994a" [label=""];
  "sha256:c3bb6552f160c4b91f99cdcddea1d1e41120a130442326a686a3de33c3afbfd5" -> "sha256:3d0161546a55b0ecc4e321d4a2f07a239f4626356dcddae90d08ea406e8d994a" [label=""];
  "sha256:3d0161546a55b0ecc4e321d4a2f07a239f4626356dcddae90d08ea406e8d994a" -> "sha256:08a826b14ecf6f4ae1752ff39cfde71d04b7a5fc01c91efb74fd8ce401e5000b" [label=""];
  "sha256:08a826b14ecf6f4ae1752ff39cfde71d04b7a5fc01c91efb74fd8ce401e5000b" -> "sha256:5557200dcf00d2c6f3b78e8da69c86c90b1c8f998c8758f0bdf47d5677465596" [label=""];
  "sha256:5557200dcf00d2c6f3b78e8da69c86c90b1c8f998c8758f0bdf47d5677465596" -> "sha256:d47adaa55c1325123479ad460ce25b1b47683ff5960d799e42e1b77b9404736f" [label=""];
}

