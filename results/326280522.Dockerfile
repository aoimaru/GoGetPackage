[app/sources/326280522.Dockerfile]
digraph {
  "sha256:935c722fbac4881970f7705a46531ebd313d4be3362928c34c103a6f8cee1ae0" [label="docker-image://quay.io/pypa/manylinux1_x86_64@sha256:a18711aa1ffe3e65e489d808d17f68f5c75c9a0275d657aa52aa04bc79cdfddb" shape="ellipse"];
  "sha256:694c551d9787a6b33e8f70e829ac033392b599f44c75488a5b5d09ffb6a404a9" [label="local://context" shape="ellipse"];
  "sha256:e8c7248bd2dbee94d39b62f0359fa3f96461dd0447461142d9d110b298789d6d" [label="copy{src=/.travis, dest=/root/.travis}" shape="note"];
  "sha256:360f2e8e548e6eb22c5e1265eb5904b186bd51d45332ea3f047a089f731baa70" [label="mkdir{path=/root/.travis}" shape="note"];
  "sha256:44ba43922ceabfe04c0beb3eafe96364d29d990ff049f4424a2ad88a388cb554" [label="sha256:44ba43922ceabfe04c0beb3eafe96364d29d990ff049f4424a2ad88a388cb554" shape="plaintext"];
  "sha256:935c722fbac4881970f7705a46531ebd313d4be3362928c34c103a6f8cee1ae0" -> "sha256:e8c7248bd2dbee94d39b62f0359fa3f96461dd0447461142d9d110b298789d6d" [label=""];
  "sha256:694c551d9787a6b33e8f70e829ac033392b599f44c75488a5b5d09ffb6a404a9" -> "sha256:e8c7248bd2dbee94d39b62f0359fa3f96461dd0447461142d9d110b298789d6d" [label=""];
  "sha256:e8c7248bd2dbee94d39b62f0359fa3f96461dd0447461142d9d110b298789d6d" -> "sha256:360f2e8e548e6eb22c5e1265eb5904b186bd51d45332ea3f047a089f731baa70" [label=""];
  "sha256:360f2e8e548e6eb22c5e1265eb5904b186bd51d45332ea3f047a089f731baa70" -> "sha256:44ba43922ceabfe04c0beb3eafe96364d29d990ff049f4424a2ad88a388cb554" [label=""];
}

