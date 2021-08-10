[app/sources/347616904.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:dbe89da1a64f321d0c5e866e4726cb46abebfc4f1c928af08899d618338fac29" [label="/bin/sh -c apk update && apk add gcc make musl-dev" shape="box"];
  "sha256:62d18b420542692a2265564aa4cf8e2bfa85426b42f686f1b926ed6f24308cf9" [label="local://context" shape="ellipse"];
  "sha256:2541c37a6b434826a9a54ccd25e7c6f5c74898c398181f4431eef86325692304" [label="copy{src=/, dest=/smell-baron}" shape="note"];
  "sha256:5b2c2c9708217caf64ce1299d929cf81e105036bbf9a23a4e17e24f7288054b2" [label="/bin/sh -c cd smell-baron && make release" shape="box"];
  "sha256:f1a6c7c3f848a7e4f14611ab82f6f921c1db00156ff1a940d5d20f79c8baa5ec" [label="sha256:f1a6c7c3f848a7e4f14611ab82f6f921c1db00156ff1a940d5d20f79c8baa5ec" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:dbe89da1a64f321d0c5e866e4726cb46abebfc4f1c928af08899d618338fac29" [label=""];
  "sha256:dbe89da1a64f321d0c5e866e4726cb46abebfc4f1c928af08899d618338fac29" -> "sha256:2541c37a6b434826a9a54ccd25e7c6f5c74898c398181f4431eef86325692304" [label=""];
  "sha256:62d18b420542692a2265564aa4cf8e2bfa85426b42f686f1b926ed6f24308cf9" -> "sha256:2541c37a6b434826a9a54ccd25e7c6f5c74898c398181f4431eef86325692304" [label=""];
  "sha256:2541c37a6b434826a9a54ccd25e7c6f5c74898c398181f4431eef86325692304" -> "sha256:5b2c2c9708217caf64ce1299d929cf81e105036bbf9a23a4e17e24f7288054b2" [label=""];
  "sha256:5b2c2c9708217caf64ce1299d929cf81e105036bbf9a23a4e17e24f7288054b2" -> "sha256:f1a6c7c3f848a7e4f14611ab82f6f921c1db00156ff1a940d5d20f79c8baa5ec" [label=""];
}

