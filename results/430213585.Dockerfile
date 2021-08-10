[app/sources/430213585.Dockerfile]
digraph {
  "sha256:03734fa8289f7ea6bc5703eac8e528e16f48567c759ce63e3f40272a583673a1" [label="docker-image://docker.io/lucj/nodejs_mongo:latest" shape="ellipse"];
  "sha256:e44f9d0c8baffd567536d01ab30fda6e94e8a3bbb51701d35be6e37e7356f93f" [label="local://context" shape="ellipse"];
  "sha256:fba2f5949b1ca970e899829b9c1093e7bd8ca9a26f90ee9e46dde97884b9f8f8" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:e1eb34bb854e3ec95fd9f15c51e10cea9802ccb4a29de9f1e98ef010ba7f2d85" [label="mkdir{path=/app}" shape="note"];
  "sha256:98bd169e18f4699cd6d5b644de3c073e5fc6677c7676c6ef3c49da2413ab58dc" [label="/bin/sh -c npm install" shape="box"];
  "sha256:6e03c2ef86108033f22a73dbfee909fdb1503911f43a896ef10b568c1b35761a" [label="sha256:6e03c2ef86108033f22a73dbfee909fdb1503911f43a896ef10b568c1b35761a" shape="plaintext"];
  "sha256:03734fa8289f7ea6bc5703eac8e528e16f48567c759ce63e3f40272a583673a1" -> "sha256:fba2f5949b1ca970e899829b9c1093e7bd8ca9a26f90ee9e46dde97884b9f8f8" [label=""];
  "sha256:e44f9d0c8baffd567536d01ab30fda6e94e8a3bbb51701d35be6e37e7356f93f" -> "sha256:fba2f5949b1ca970e899829b9c1093e7bd8ca9a26f90ee9e46dde97884b9f8f8" [label=""];
  "sha256:fba2f5949b1ca970e899829b9c1093e7bd8ca9a26f90ee9e46dde97884b9f8f8" -> "sha256:e1eb34bb854e3ec95fd9f15c51e10cea9802ccb4a29de9f1e98ef010ba7f2d85" [label=""];
  "sha256:e1eb34bb854e3ec95fd9f15c51e10cea9802ccb4a29de9f1e98ef010ba7f2d85" -> "sha256:98bd169e18f4699cd6d5b644de3c073e5fc6677c7676c6ef3c49da2413ab58dc" [label=""];
  "sha256:98bd169e18f4699cd6d5b644de3c073e5fc6677c7676c6ef3c49da2413ab58dc" -> "sha256:6e03c2ef86108033f22a73dbfee909fdb1503911f43a896ef10b568c1b35761a" [label=""];
}

