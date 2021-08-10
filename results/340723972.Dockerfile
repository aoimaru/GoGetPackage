[app/sources/340723972.Dockerfile]
digraph {
  "sha256:7a6f646bdb1efd43895a2cbad9bdd148a1506d7fd22716d0d8c97455393bf4c9" [label="docker-image://docker.io/docs/base:latest" shape="ellipse"];
  "sha256:a57420846e4d81bfc55614e380d5f2d89ba32ada6c29f6a196e276c5dddf7492" [label="local://context" shape="ellipse"];
  "sha256:4f4561ee6b8ebbe9df832b0138bb5146f6629deff7a99f41c7e2997edb06f84e" [label="copy{src=/, dest=/src}" shape="note"];
  "sha256:40b54d94d2cd8111fcedf86859bb2f39e582e580caaa63b1b6bcc51a67a84892" [label="copy{src=/, dest=/docs/content/}" shape="note"];
  "sha256:0dfb894f5bc776b36fd2372789aaaa1a25a25b9a59feb1fb3dbdc5a72862204d" [label="mkdir{path=/docs/content}" shape="note"];
  "sha256:2a9afbef2a744c848af511e124778d74e7af1e75d3e26c56af0a5c2304bda08e" [label="/bin/sh -c /docs/content/touch-up.sh" shape="box"];
  "sha256:d14ae6c44b89d2c878675ea00d007cacdad219ffc6d3fa2d731ea9f9f67564b7" [label="mkdir{path=/docs}" shape="note"];
  "sha256:ed4d4abcdaf1c63b3668b540a78194d84fdda1456f77cb381e3fe92e42ff08df" [label="sha256:ed4d4abcdaf1c63b3668b540a78194d84fdda1456f77cb381e3fe92e42ff08df" shape="plaintext"];
  "sha256:7a6f646bdb1efd43895a2cbad9bdd148a1506d7fd22716d0d8c97455393bf4c9" -> "sha256:4f4561ee6b8ebbe9df832b0138bb5146f6629deff7a99f41c7e2997edb06f84e" [label=""];
  "sha256:a57420846e4d81bfc55614e380d5f2d89ba32ada6c29f6a196e276c5dddf7492" -> "sha256:4f4561ee6b8ebbe9df832b0138bb5146f6629deff7a99f41c7e2997edb06f84e" [label=""];
  "sha256:4f4561ee6b8ebbe9df832b0138bb5146f6629deff7a99f41c7e2997edb06f84e" -> "sha256:40b54d94d2cd8111fcedf86859bb2f39e582e580caaa63b1b6bcc51a67a84892" [label=""];
  "sha256:a57420846e4d81bfc55614e380d5f2d89ba32ada6c29f6a196e276c5dddf7492" -> "sha256:40b54d94d2cd8111fcedf86859bb2f39e582e580caaa63b1b6bcc51a67a84892" [label=""];
  "sha256:40b54d94d2cd8111fcedf86859bb2f39e582e580caaa63b1b6bcc51a67a84892" -> "sha256:0dfb894f5bc776b36fd2372789aaaa1a25a25b9a59feb1fb3dbdc5a72862204d" [label=""];
  "sha256:0dfb894f5bc776b36fd2372789aaaa1a25a25b9a59feb1fb3dbdc5a72862204d" -> "sha256:2a9afbef2a744c848af511e124778d74e7af1e75d3e26c56af0a5c2304bda08e" [label=""];
  "sha256:2a9afbef2a744c848af511e124778d74e7af1e75d3e26c56af0a5c2304bda08e" -> "sha256:d14ae6c44b89d2c878675ea00d007cacdad219ffc6d3fa2d731ea9f9f67564b7" [label=""];
  "sha256:d14ae6c44b89d2c878675ea00d007cacdad219ffc6d3fa2d731ea9f9f67564b7" -> "sha256:ed4d4abcdaf1c63b3668b540a78194d84fdda1456f77cb381e3fe92e42ff08df" [label=""];
}

