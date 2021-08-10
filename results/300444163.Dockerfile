[app/sources/300444163.Dockerfile]
digraph {
  "sha256:299d34d2b3126ad928b79e943b82636836bc9a495c694f0fe851c96bbf1db1f4" [label="docker-image://docker.io/library/node:8" shape="ellipse"];
  "sha256:627536a780ff59ed09104218fc54d95f0a7627b2daabdcbba73443113e71b371" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:1357c99040a322e0dd2fb3010728ba7d3bab181604031841929e2e67b07c25ff" [label="local://context" shape="ellipse"];
  "sha256:0586677631dd3436904f08ffe45747dbde6f6239c919e64d3b906fb2c64a5a1b" [label="copy{src=/package*.json, dest=/usr/src/app/}" shape="note"];
  "sha256:7ac3d589f8cf1cf08e52f6817edf4ada23e18ed12c48e4770096d40b80595a7a" [label="/bin/sh -c npm install" shape="box"];
  "sha256:ed15e949dc7e4ebd72aafc9fbc8c71db2b9aa4fdcfd7ea5731fb9a1d909ce44a" [label="copy{src=/, dest=/usr/src/app/}" shape="note"];
  "sha256:95e32c803e529c69252d49c70a41130a9a0a163101e830e66c4420f35adfcf38" [label="sha256:95e32c803e529c69252d49c70a41130a9a0a163101e830e66c4420f35adfcf38" shape="plaintext"];
  "sha256:299d34d2b3126ad928b79e943b82636836bc9a495c694f0fe851c96bbf1db1f4" -> "sha256:627536a780ff59ed09104218fc54d95f0a7627b2daabdcbba73443113e71b371" [label=""];
  "sha256:627536a780ff59ed09104218fc54d95f0a7627b2daabdcbba73443113e71b371" -> "sha256:0586677631dd3436904f08ffe45747dbde6f6239c919e64d3b906fb2c64a5a1b" [label=""];
  "sha256:1357c99040a322e0dd2fb3010728ba7d3bab181604031841929e2e67b07c25ff" -> "sha256:0586677631dd3436904f08ffe45747dbde6f6239c919e64d3b906fb2c64a5a1b" [label=""];
  "sha256:0586677631dd3436904f08ffe45747dbde6f6239c919e64d3b906fb2c64a5a1b" -> "sha256:7ac3d589f8cf1cf08e52f6817edf4ada23e18ed12c48e4770096d40b80595a7a" [label=""];
  "sha256:7ac3d589f8cf1cf08e52f6817edf4ada23e18ed12c48e4770096d40b80595a7a" -> "sha256:ed15e949dc7e4ebd72aafc9fbc8c71db2b9aa4fdcfd7ea5731fb9a1d909ce44a" [label=""];
  "sha256:1357c99040a322e0dd2fb3010728ba7d3bab181604031841929e2e67b07c25ff" -> "sha256:ed15e949dc7e4ebd72aafc9fbc8c71db2b9aa4fdcfd7ea5731fb9a1d909ce44a" [label=""];
  "sha256:ed15e949dc7e4ebd72aafc9fbc8c71db2b9aa4fdcfd7ea5731fb9a1d909ce44a" -> "sha256:95e32c803e529c69252d49c70a41130a9a0a163101e830e66c4420f35adfcf38" [label=""];
}

