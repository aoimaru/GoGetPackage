[app/sources/283855203.Dockerfile]
digraph {
  "sha256:48a8ec76822579a2ceb62acee1e4737b73fb3d24a0576eb20b4666ccfcd06449" [label="docker-image://docker.io/library/node:8.6.0" shape="ellipse"];
  "sha256:b3ef3e8a2a5b6a10e14e976bcb7982d78e051019733f9c44698bdfd8e1e4be0c" [label="local://context" shape="ellipse"];
  "sha256:5450d037195d1cb35ee2213e221f3f3bee9ba40a9068ce04e68cb57baa560537" [label="copy{src=/app, dest=/app}" shape="note"];
  "sha256:e6a99f2cd70d2856d1e9d23c155f7ce1a27045630c151b2e96cf5b8249df647a" [label="mkdir{path=/app}" shape="note"];
  "sha256:7cae49453ed10aa7403eeb0a7fc321698f8404e206bf5d27e8c937a5600bd392" [label="/bin/sh -c yarn install" shape="box"];
  "sha256:9472d48ac38c3ccbcbcd427695dfe36fe1cd14e87cf5ab5c41c4763a18bb11a5" [label="/bin/sh -c yarn" shape="box"];
  "sha256:3205028de0f620721a7aa0a22d6344aba79653ec8b5e4f9a8947a13158564533" [label="sha256:3205028de0f620721a7aa0a22d6344aba79653ec8b5e4f9a8947a13158564533" shape="plaintext"];
  "sha256:48a8ec76822579a2ceb62acee1e4737b73fb3d24a0576eb20b4666ccfcd06449" -> "sha256:5450d037195d1cb35ee2213e221f3f3bee9ba40a9068ce04e68cb57baa560537" [label=""];
  "sha256:b3ef3e8a2a5b6a10e14e976bcb7982d78e051019733f9c44698bdfd8e1e4be0c" -> "sha256:5450d037195d1cb35ee2213e221f3f3bee9ba40a9068ce04e68cb57baa560537" [label=""];
  "sha256:5450d037195d1cb35ee2213e221f3f3bee9ba40a9068ce04e68cb57baa560537" -> "sha256:e6a99f2cd70d2856d1e9d23c155f7ce1a27045630c151b2e96cf5b8249df647a" [label=""];
  "sha256:e6a99f2cd70d2856d1e9d23c155f7ce1a27045630c151b2e96cf5b8249df647a" -> "sha256:7cae49453ed10aa7403eeb0a7fc321698f8404e206bf5d27e8c937a5600bd392" [label=""];
  "sha256:7cae49453ed10aa7403eeb0a7fc321698f8404e206bf5d27e8c937a5600bd392" -> "sha256:9472d48ac38c3ccbcbcd427695dfe36fe1cd14e87cf5ab5c41c4763a18bb11a5" [label=""];
  "sha256:9472d48ac38c3ccbcbcd427695dfe36fe1cd14e87cf5ab5c41c4763a18bb11a5" -> "sha256:3205028de0f620721a7aa0a22d6344aba79653ec8b5e4f9a8947a13158564533" [label=""];
}

