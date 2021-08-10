[app/sources/469422387.Dockerfile]
digraph {
  "sha256:3898d3c6d291a5f44841b29408b7675fa9c7b653994aba6151e24b59ff125f2b" [label="docker-image://docker.io/mhart/alpine-node:11.12" shape="ellipse"];
  "sha256:74afcb1b6c551e88b55c90b3f60b75b84681c63e2531bfa604958824043488c0" [label="mkdir{path=/src}" shape="note"];
  "sha256:38e3ccfa18d37b38a1887efdb5e82289989b6217a86d4f15a276fb10a2d94b6f" [label="local://context" shape="ellipse"];
  "sha256:9627a7fd3267547bd3c9e7e2262f48d9bc0dd69f15217b8f553f97b3fe98f4a6" [label="copy{src=/, dest=/src/}" shape="note"];
  "sha256:674d1ad9ad8bdceb70c6a0eb73c5748284e530d3bf4536c00eb240d64946cacd" [label="copy{src=/.exemplo_env, dest=/src/.env}" shape="note"];
  "sha256:da0f61100e6ec296b117bc6e3657803f3ebfcc952315bb1e2e0a912a315d3ad2" [label="/bin/sh -c npm install" shape="box"];
  "sha256:ce06548d76793d901e77c6a6a0e71cf75edffebb41447258f450b8dd02adeff6" [label="sha256:ce06548d76793d901e77c6a6a0e71cf75edffebb41447258f450b8dd02adeff6" shape="plaintext"];
  "sha256:3898d3c6d291a5f44841b29408b7675fa9c7b653994aba6151e24b59ff125f2b" -> "sha256:74afcb1b6c551e88b55c90b3f60b75b84681c63e2531bfa604958824043488c0" [label=""];
  "sha256:74afcb1b6c551e88b55c90b3f60b75b84681c63e2531bfa604958824043488c0" -> "sha256:9627a7fd3267547bd3c9e7e2262f48d9bc0dd69f15217b8f553f97b3fe98f4a6" [label=""];
  "sha256:38e3ccfa18d37b38a1887efdb5e82289989b6217a86d4f15a276fb10a2d94b6f" -> "sha256:9627a7fd3267547bd3c9e7e2262f48d9bc0dd69f15217b8f553f97b3fe98f4a6" [label=""];
  "sha256:9627a7fd3267547bd3c9e7e2262f48d9bc0dd69f15217b8f553f97b3fe98f4a6" -> "sha256:674d1ad9ad8bdceb70c6a0eb73c5748284e530d3bf4536c00eb240d64946cacd" [label=""];
  "sha256:38e3ccfa18d37b38a1887efdb5e82289989b6217a86d4f15a276fb10a2d94b6f" -> "sha256:674d1ad9ad8bdceb70c6a0eb73c5748284e530d3bf4536c00eb240d64946cacd" [label=""];
  "sha256:674d1ad9ad8bdceb70c6a0eb73c5748284e530d3bf4536c00eb240d64946cacd" -> "sha256:da0f61100e6ec296b117bc6e3657803f3ebfcc952315bb1e2e0a912a315d3ad2" [label=""];
  "sha256:da0f61100e6ec296b117bc6e3657803f3ebfcc952315bb1e2e0a912a315d3ad2" -> "sha256:ce06548d76793d901e77c6a6a0e71cf75edffebb41447258f450b8dd02adeff6" [label=""];
}

