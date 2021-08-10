[app/sources/255218908.Dockerfile]
digraph {
  "sha256:a8b5395be2a13393b8093e94d2841ced22651d01a2ed8670727e777db17f0153" [label="docker-image://docker.io/library/node:10.16.0-alpine" shape="ellipse"];
  "sha256:34738f442837e73dc250b160848bce2b8b4460261bfb0e84ebfd0cc9fca8dbf0" [label="mkdir{path=/code}" shape="note"];
  "sha256:5c8ae06a0f516f02686b6a6eb4974cd894fe14aa6c85bb10f17411cf63ecfd72" [label="local://context" shape="ellipse"];
  "sha256:fe18be6432af8816d1c533f5ba88ccd8b46a5981edea6264c9d24aa0f2200ac5" [label="copy{src=/package.json, dest=/code}" shape="note"];
  "sha256:e799423e38c1b2c399d33e4a7210c4a3023d8c62925ec0bc23f2face24725793" [label="/bin/sh -c yarn install" shape="box"];
  "sha256:0dd65848247fd6682c7d66fa228951f0a6cfd88fc7aad41c7d932e941e34a5e7" [label="copy{src=/, dest=/code}" shape="note"];
  "sha256:61b4be2ce5b36f25e6dba49a2f385a20f9096f14baf9fe483af9ff0ef130a8db" [label="/bin/sh -c yarn run build" shape="box"];
  "sha256:07c22445ecc31cdf6cbfc9bda18750167363b3f9b9eb4d1e07170216dfd6eaad" [label="sha256:07c22445ecc31cdf6cbfc9bda18750167363b3f9b9eb4d1e07170216dfd6eaad" shape="plaintext"];
  "sha256:a8b5395be2a13393b8093e94d2841ced22651d01a2ed8670727e777db17f0153" -> "sha256:34738f442837e73dc250b160848bce2b8b4460261bfb0e84ebfd0cc9fca8dbf0" [label=""];
  "sha256:34738f442837e73dc250b160848bce2b8b4460261bfb0e84ebfd0cc9fca8dbf0" -> "sha256:fe18be6432af8816d1c533f5ba88ccd8b46a5981edea6264c9d24aa0f2200ac5" [label=""];
  "sha256:5c8ae06a0f516f02686b6a6eb4974cd894fe14aa6c85bb10f17411cf63ecfd72" -> "sha256:fe18be6432af8816d1c533f5ba88ccd8b46a5981edea6264c9d24aa0f2200ac5" [label=""];
  "sha256:fe18be6432af8816d1c533f5ba88ccd8b46a5981edea6264c9d24aa0f2200ac5" -> "sha256:e799423e38c1b2c399d33e4a7210c4a3023d8c62925ec0bc23f2face24725793" [label=""];
  "sha256:e799423e38c1b2c399d33e4a7210c4a3023d8c62925ec0bc23f2face24725793" -> "sha256:0dd65848247fd6682c7d66fa228951f0a6cfd88fc7aad41c7d932e941e34a5e7" [label=""];
  "sha256:5c8ae06a0f516f02686b6a6eb4974cd894fe14aa6c85bb10f17411cf63ecfd72" -> "sha256:0dd65848247fd6682c7d66fa228951f0a6cfd88fc7aad41c7d932e941e34a5e7" [label=""];
  "sha256:0dd65848247fd6682c7d66fa228951f0a6cfd88fc7aad41c7d932e941e34a5e7" -> "sha256:61b4be2ce5b36f25e6dba49a2f385a20f9096f14baf9fe483af9ff0ef130a8db" [label=""];
  "sha256:61b4be2ce5b36f25e6dba49a2f385a20f9096f14baf9fe483af9ff0ef130a8db" -> "sha256:07c22445ecc31cdf6cbfc9bda18750167363b3f9b9eb4d1e07170216dfd6eaad" [label=""];
}

