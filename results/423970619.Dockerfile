[app/sources/423970619.Dockerfile]
digraph {
  "sha256:7997ead0267fe831acdd05d5fa5a571cb20d6e522cfd447e5453494215de6fe1" [label="docker-image://docker.io/library/node:10-alpine" shape="ellipse"];
  "sha256:8d8bf48c07d5ce01803445060aa5ea3b9346d159da7e1857ef164817b5e8096f" [label="mkdir{path=/server}" shape="note"];
  "sha256:bd7f5bf9bdbccd306953fe39fdb40ad905577f88e3168e4fec3b0adf91198577" [label="local://context" shape="ellipse"];
  "sha256:ca48fdcc1b3ed0174ac1fd9474368933135642080b91b6f7c19acbeab654b7bc" [label="copy{src=/package*.json, dest=/server/}" shape="note"];
  "sha256:36cb1366c9eb43164dd5b3f7912ec824e6cad6df8e7843444090846108368a82" [label="/bin/sh -c npm install" shape="box"];
  "sha256:c15445b6e2f9ef034f811282e47efc2372b1b95d1075828a870dbb1ba694be1c" [label="copy{src=/, dest=/server/}" shape="note"];
  "sha256:d9349f145d0f7b5f69444aae0f84c438ee6fce19fb55b07ff3b8083f792492bf" [label="sha256:d9349f145d0f7b5f69444aae0f84c438ee6fce19fb55b07ff3b8083f792492bf" shape="plaintext"];
  "sha256:7997ead0267fe831acdd05d5fa5a571cb20d6e522cfd447e5453494215de6fe1" -> "sha256:8d8bf48c07d5ce01803445060aa5ea3b9346d159da7e1857ef164817b5e8096f" [label=""];
  "sha256:8d8bf48c07d5ce01803445060aa5ea3b9346d159da7e1857ef164817b5e8096f" -> "sha256:ca48fdcc1b3ed0174ac1fd9474368933135642080b91b6f7c19acbeab654b7bc" [label=""];
  "sha256:bd7f5bf9bdbccd306953fe39fdb40ad905577f88e3168e4fec3b0adf91198577" -> "sha256:ca48fdcc1b3ed0174ac1fd9474368933135642080b91b6f7c19acbeab654b7bc" [label=""];
  "sha256:ca48fdcc1b3ed0174ac1fd9474368933135642080b91b6f7c19acbeab654b7bc" -> "sha256:36cb1366c9eb43164dd5b3f7912ec824e6cad6df8e7843444090846108368a82" [label=""];
  "sha256:36cb1366c9eb43164dd5b3f7912ec824e6cad6df8e7843444090846108368a82" -> "sha256:c15445b6e2f9ef034f811282e47efc2372b1b95d1075828a870dbb1ba694be1c" [label=""];
  "sha256:bd7f5bf9bdbccd306953fe39fdb40ad905577f88e3168e4fec3b0adf91198577" -> "sha256:c15445b6e2f9ef034f811282e47efc2372b1b95d1075828a870dbb1ba694be1c" [label=""];
  "sha256:c15445b6e2f9ef034f811282e47efc2372b1b95d1075828a870dbb1ba694be1c" -> "sha256:d9349f145d0f7b5f69444aae0f84c438ee6fce19fb55b07ff3b8083f792492bf" [label=""];
}

