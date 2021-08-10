[app/sources/252783482.Dockerfile]
digraph {
  "sha256:f568aa00d04b0304791235f2e8ba799bd685dd3e462604768861a082fe3885de" [label="local://context" shape="ellipse"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:306becf4f929a1de03acf3dc1eb30f11948ecafcbe5cca32a627ca99d31f4087" [label="copy{src=/drone-bearychat.sh, dest=/bin/}" shape="note"];
  "sha256:b4d1443d77f954d410e5b81798cd1cdc0e1b9ef7126ebbc5ea1681cb1454b883" [label="/bin/sh -c chmod +x /bin/drone-bearychat.sh" shape="box"];
  "sha256:d3a5fe53f6c5102b09ac74871fadb603dead455ffa9da959842adde8058e366a" [label="/bin/sh -c apk -Uuv add curl ca-certificates" shape="box"];
  "sha256:ebf33a6bbacc5d3b06daac3f3c59768fdfed9fb5bc149d2650f62ca31e51ffe5" [label="sha256:ebf33a6bbacc5d3b06daac3f3c59768fdfed9fb5bc149d2650f62ca31e51ffe5" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:306becf4f929a1de03acf3dc1eb30f11948ecafcbe5cca32a627ca99d31f4087" [label=""];
  "sha256:f568aa00d04b0304791235f2e8ba799bd685dd3e462604768861a082fe3885de" -> "sha256:306becf4f929a1de03acf3dc1eb30f11948ecafcbe5cca32a627ca99d31f4087" [label=""];
  "sha256:306becf4f929a1de03acf3dc1eb30f11948ecafcbe5cca32a627ca99d31f4087" -> "sha256:b4d1443d77f954d410e5b81798cd1cdc0e1b9ef7126ebbc5ea1681cb1454b883" [label=""];
  "sha256:b4d1443d77f954d410e5b81798cd1cdc0e1b9ef7126ebbc5ea1681cb1454b883" -> "sha256:d3a5fe53f6c5102b09ac74871fadb603dead455ffa9da959842adde8058e366a" [label=""];
  "sha256:d3a5fe53f6c5102b09ac74871fadb603dead455ffa9da959842adde8058e366a" -> "sha256:ebf33a6bbacc5d3b06daac3f3c59768fdfed9fb5bc149d2650f62ca31e51ffe5" [label=""];
}

