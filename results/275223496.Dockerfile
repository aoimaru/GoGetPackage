[app/sources/275223496.Dockerfile]
digraph {
  "sha256:48353e7a4b49719f56dcb98a3b5f984c5dd2ebbc84d60d8a0d2f40ee3413bee9" [label="docker-image://docker.io/amazeeiolagoon/yarn-workspace-builder:latest" shape="ellipse"];
  "sha256:97b6a4dea32a309aa0c6bc7f3f2870fd0abc47ca9d883f9452b2cf470e452de3" [label="docker-image://docker.io/amazeeiolagoon/node:8" shape="ellipse"];
  "sha256:34520ef4b69beed80cfe19b17e0bfe883cc07af562d7e92e3a45c3b854db0f12" [label="copy{src=/app, dest=/app}" shape="note"];
  "sha256:e437f517060edde5b01d3ee331dea561ae41ef5b9680d5e3fcc5179453073cc0" [label="mkdir{path=/app/services/openshiftjobs}" shape="note"];
  "sha256:fb318fc600da1ff75ef47a670a4633bc0030ec62e7b2c0d9d94fd517ae46b4bb" [label="copy{src=/app/.env.defaults, dest=/app/services/openshiftjobs/}" shape="note"];
  "sha256:918bd27ad435727ac74c42e59a5e79523341ae4c0bcef4936855310392e677b2" [label="local://context" shape="ellipse"];
  "sha256:c1979bd690c0a9638027c65c859fcc83f66d82110665480152565540a67d7c9f" [label="copy{src=/, dest=/app/services/openshiftjobs/}" shape="note"];
  "sha256:2432068d2678180a4f2ac88f541847d0b113504b8088c4c40b2c28e795b51a72" [label="/bin/sh -c yarn check --verify-tree" shape="box"];
  "sha256:9ceca4099c6d5c8a3f06b0db277e42c3a68339b378c9462c07167835e474c4ac" [label="/bin/sh -c yarn run build" shape="box"];
  "sha256:174241aeacb964c6cf1e5d5c0df4d6cde1156204d4ecca4c47fc330d15112b74" [label="sha256:174241aeacb964c6cf1e5d5c0df4d6cde1156204d4ecca4c47fc330d15112b74" shape="plaintext"];
  "sha256:97b6a4dea32a309aa0c6bc7f3f2870fd0abc47ca9d883f9452b2cf470e452de3" -> "sha256:34520ef4b69beed80cfe19b17e0bfe883cc07af562d7e92e3a45c3b854db0f12" [label=""];
  "sha256:48353e7a4b49719f56dcb98a3b5f984c5dd2ebbc84d60d8a0d2f40ee3413bee9" -> "sha256:34520ef4b69beed80cfe19b17e0bfe883cc07af562d7e92e3a45c3b854db0f12" [label=""];
  "sha256:34520ef4b69beed80cfe19b17e0bfe883cc07af562d7e92e3a45c3b854db0f12" -> "sha256:e437f517060edde5b01d3ee331dea561ae41ef5b9680d5e3fcc5179453073cc0" [label=""];
  "sha256:e437f517060edde5b01d3ee331dea561ae41ef5b9680d5e3fcc5179453073cc0" -> "sha256:fb318fc600da1ff75ef47a670a4633bc0030ec62e7b2c0d9d94fd517ae46b4bb" [label=""];
  "sha256:48353e7a4b49719f56dcb98a3b5f984c5dd2ebbc84d60d8a0d2f40ee3413bee9" -> "sha256:fb318fc600da1ff75ef47a670a4633bc0030ec62e7b2c0d9d94fd517ae46b4bb" [label=""];
  "sha256:fb318fc600da1ff75ef47a670a4633bc0030ec62e7b2c0d9d94fd517ae46b4bb" -> "sha256:c1979bd690c0a9638027c65c859fcc83f66d82110665480152565540a67d7c9f" [label=""];
  "sha256:918bd27ad435727ac74c42e59a5e79523341ae4c0bcef4936855310392e677b2" -> "sha256:c1979bd690c0a9638027c65c859fcc83f66d82110665480152565540a67d7c9f" [label=""];
  "sha256:c1979bd690c0a9638027c65c859fcc83f66d82110665480152565540a67d7c9f" -> "sha256:2432068d2678180a4f2ac88f541847d0b113504b8088c4c40b2c28e795b51a72" [label=""];
  "sha256:2432068d2678180a4f2ac88f541847d0b113504b8088c4c40b2c28e795b51a72" -> "sha256:9ceca4099c6d5c8a3f06b0db277e42c3a68339b378c9462c07167835e474c4ac" [label=""];
  "sha256:9ceca4099c6d5c8a3f06b0db277e42c3a68339b378c9462c07167835e474c4ac" -> "sha256:174241aeacb964c6cf1e5d5c0df4d6cde1156204d4ecca4c47fc330d15112b74" [label=""];
}

