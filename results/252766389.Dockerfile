[app/sources/252766389.Dockerfile]
digraph {
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" [label="docker-image://docker.io/library/node:latest" shape="ellipse"];
  "sha256:c35a39ce6172a4e534b742468d157627db73077c5f071d188d2ac5560a132201" [label="/bin/sh -c mkdir -p /usr/app" shape="box"];
  "sha256:ba0152438e400e0e17204acba4a7f06401b26f697d407a0e4c42a5b92f8c30cc" [label="local://context" shape="ellipse"];
  "sha256:c9d74d7ee8b6641760677463cdad26e4e0c9885f5f69aa4eb4126e957fb76ad5" [label="copy{src=/package.json, dest=/usr/app}" shape="note"];
  "sha256:7635aa68435868dd74df567c823afce9fc65c088017aaadeb7f1637b9898d68b" [label="mkdir{path=/usr/app}" shape="note"];
  "sha256:747645e4f5ba5d4dede9242fa07e0807a04d412409a2e65311d0d53c1aa5a184" [label="/bin/sh -c npm install" shape="box"];
  "sha256:1a425e11c20e338d57efb56f7d17c933e07eff226ea1d328e17d1d5f7702f3ce" [label="copy{src=/src, dest=/usr/app/src}" shape="note"];
  "sha256:dd45fae7a51ec4a9cb6eec3b72b990d9096dab9f7b3855fd289668e764da2c5a" [label="sha256:dd45fae7a51ec4a9cb6eec3b72b990d9096dab9f7b3855fd289668e764da2c5a" shape="plaintext"];
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" -> "sha256:c35a39ce6172a4e534b742468d157627db73077c5f071d188d2ac5560a132201" [label=""];
  "sha256:c35a39ce6172a4e534b742468d157627db73077c5f071d188d2ac5560a132201" -> "sha256:c9d74d7ee8b6641760677463cdad26e4e0c9885f5f69aa4eb4126e957fb76ad5" [label=""];
  "sha256:ba0152438e400e0e17204acba4a7f06401b26f697d407a0e4c42a5b92f8c30cc" -> "sha256:c9d74d7ee8b6641760677463cdad26e4e0c9885f5f69aa4eb4126e957fb76ad5" [label=""];
  "sha256:c9d74d7ee8b6641760677463cdad26e4e0c9885f5f69aa4eb4126e957fb76ad5" -> "sha256:7635aa68435868dd74df567c823afce9fc65c088017aaadeb7f1637b9898d68b" [label=""];
  "sha256:7635aa68435868dd74df567c823afce9fc65c088017aaadeb7f1637b9898d68b" -> "sha256:747645e4f5ba5d4dede9242fa07e0807a04d412409a2e65311d0d53c1aa5a184" [label=""];
  "sha256:747645e4f5ba5d4dede9242fa07e0807a04d412409a2e65311d0d53c1aa5a184" -> "sha256:1a425e11c20e338d57efb56f7d17c933e07eff226ea1d328e17d1d5f7702f3ce" [label=""];
  "sha256:ba0152438e400e0e17204acba4a7f06401b26f697d407a0e4c42a5b92f8c30cc" -> "sha256:1a425e11c20e338d57efb56f7d17c933e07eff226ea1d328e17d1d5f7702f3ce" [label=""];
  "sha256:1a425e11c20e338d57efb56f7d17c933e07eff226ea1d328e17d1d5f7702f3ce" -> "sha256:dd45fae7a51ec4a9cb6eec3b72b990d9096dab9f7b3855fd289668e764da2c5a" [label=""];
}

