[app/sources/293766477.Dockerfile]
digraph {
  "sha256:f3d68c7671cced84afac7ad7afdf9d546029a70512ed398f3179b7b79b4df964" [label="docker-image://docker.io/ustcmirror/base:alpine@sha256:dac75f2e6e63811b49d0f78d79da17bb17cd708a1ba00aa46e78fb0646c05c33" shape="ellipse"];
  "sha256:9cf74e452fa4665bd8dbf092e936210fda63b61d17c77bb15409eb5fce36cbc0" [label="local://context" shape="ellipse"];
  "sha256:f434acde9cb209ad552f07980a6ad0b7b51093237ec04fb40015116b2d8a2075" [label="copy{src=/sync.sh, dest=/}" shape="note"];
  "sha256:3edd9fd4c2228e2178bbc7cd1cf0e1f69f20169cb0bc72c91c779cd860196499" [label="sha256:3edd9fd4c2228e2178bbc7cd1cf0e1f69f20169cb0bc72c91c779cd860196499" shape="plaintext"];
  "sha256:f3d68c7671cced84afac7ad7afdf9d546029a70512ed398f3179b7b79b4df964" -> "sha256:f434acde9cb209ad552f07980a6ad0b7b51093237ec04fb40015116b2d8a2075" [label=""];
  "sha256:9cf74e452fa4665bd8dbf092e936210fda63b61d17c77bb15409eb5fce36cbc0" -> "sha256:f434acde9cb209ad552f07980a6ad0b7b51093237ec04fb40015116b2d8a2075" [label=""];
  "sha256:f434acde9cb209ad552f07980a6ad0b7b51093237ec04fb40015116b2d8a2075" -> "sha256:3edd9fd4c2228e2178bbc7cd1cf0e1f69f20169cb0bc72c91c779cd860196499" [label=""];
}

