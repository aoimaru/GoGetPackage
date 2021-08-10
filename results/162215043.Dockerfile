[app/sources/162215043.Dockerfile]
digraph {
  "sha256:235064ea9f6a0cdfe6fb1afae8362d34bf6f07ba7b163cf0ffaac9f381e51ce8" [label="docker-image://docker.io/shipwright/base@sha256:1d7cad63dcb9f48dd0e81a91b3babd014436d28a7125f48289d611059382502a" shape="ellipse"];
  "sha256:36a8b37ccaf6dabc285a34d508737d92607bcda5cd4b0bd29ae8d58952c29d26" [label="/bin/sh -c exit 9000" shape="box"];
  "sha256:808fa6a4119a924223d3d034d1bf28059af11384b20f2f58a7915dcf41c3ab22" [label="sha256:808fa6a4119a924223d3d034d1bf28059af11384b20f2f58a7915dcf41c3ab22" shape="plaintext"];
  "sha256:235064ea9f6a0cdfe6fb1afae8362d34bf6f07ba7b163cf0ffaac9f381e51ce8" -> "sha256:36a8b37ccaf6dabc285a34d508737d92607bcda5cd4b0bd29ae8d58952c29d26" [label=""];
  "sha256:36a8b37ccaf6dabc285a34d508737d92607bcda5cd4b0bd29ae8d58952c29d26" -> "sha256:808fa6a4119a924223d3d034d1bf28059af11384b20f2f58a7915dcf41c3ab22" [label=""];
}

