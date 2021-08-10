[app/sources/282749355.Dockerfile]
digraph {
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" [label="docker-image://docker.io/library/node:latest" shape="ellipse"];
  "sha256:695c9306d416a7b785b549ed69280ab5159045e4ee32d12c05641d4149ac2275" [label="/bin/sh -c npm i -g firebase-tools" shape="box"];
  "sha256:17093fb7961e8b6fd03363c2e7e5e02b9dbf30bad7d825a29d58d0eb5cd27297" [label="local://context" shape="ellipse"];
  "sha256:16d8e87c1d04cf947f1d2e0cfba6a043b050e3126caed3f8e80eb53e3fda900c" [label="copy{src=/firebase.bash, dest=/usr/bin}" shape="note"];
  "sha256:376c131a38505caa1558056df4c9673840f41ff5071b8844314004512d547f21" [label="/bin/sh -c chmod +x /usr/bin/firebase.bash" shape="box"];
  "sha256:3c4600e4bc3aeafe646ae1724f7ea5dfcf9713d40cb4705500762d5d80acaf8c" [label="sha256:3c4600e4bc3aeafe646ae1724f7ea5dfcf9713d40cb4705500762d5d80acaf8c" shape="plaintext"];
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" -> "sha256:695c9306d416a7b785b549ed69280ab5159045e4ee32d12c05641d4149ac2275" [label=""];
  "sha256:695c9306d416a7b785b549ed69280ab5159045e4ee32d12c05641d4149ac2275" -> "sha256:16d8e87c1d04cf947f1d2e0cfba6a043b050e3126caed3f8e80eb53e3fda900c" [label=""];
  "sha256:17093fb7961e8b6fd03363c2e7e5e02b9dbf30bad7d825a29d58d0eb5cd27297" -> "sha256:16d8e87c1d04cf947f1d2e0cfba6a043b050e3126caed3f8e80eb53e3fda900c" [label=""];
  "sha256:16d8e87c1d04cf947f1d2e0cfba6a043b050e3126caed3f8e80eb53e3fda900c" -> "sha256:376c131a38505caa1558056df4c9673840f41ff5071b8844314004512d547f21" [label=""];
  "sha256:376c131a38505caa1558056df4c9673840f41ff5071b8844314004512d547f21" -> "sha256:3c4600e4bc3aeafe646ae1724f7ea5dfcf9713d40cb4705500762d5d80acaf8c" [label=""];
}

