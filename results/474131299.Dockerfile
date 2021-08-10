[app/sources/474131299.Dockerfile]
digraph {
  "sha256:e889cd549b8c5587c1a65f399d7fa851347a662c960950b7e864cb0df740f6d4" [label="docker-image://docker.io/library/node:4.4" shape="ellipse"];
  "sha256:3921035e12f61c594f53ac45f24659f16653cce41836279d9d512c3ed6d0ba3a" [label="local://context" shape="ellipse"];
  "sha256:eabb1ce9fd4067cc13d42d90657dd0b389921aa5017d88ae2be46ec2b2bf516b" [label="copy{src=/dist, dest=/srv/app}" shape="note"];
  "sha256:77751517e0ede97b5e10cdfd0d5bf66afd3d192e9da2f9e5327b8e36ea817120" [label="mkdir{path=/srv/app}" shape="note"];
  "sha256:595cfb746d24c7433ab076b71cf1b82ca8a22e453f1ca391f242fb33907ad05c" [label="sha256:595cfb746d24c7433ab076b71cf1b82ca8a22e453f1ca391f242fb33907ad05c" shape="plaintext"];
  "sha256:e889cd549b8c5587c1a65f399d7fa851347a662c960950b7e864cb0df740f6d4" -> "sha256:eabb1ce9fd4067cc13d42d90657dd0b389921aa5017d88ae2be46ec2b2bf516b" [label=""];
  "sha256:3921035e12f61c594f53ac45f24659f16653cce41836279d9d512c3ed6d0ba3a" -> "sha256:eabb1ce9fd4067cc13d42d90657dd0b389921aa5017d88ae2be46ec2b2bf516b" [label=""];
  "sha256:eabb1ce9fd4067cc13d42d90657dd0b389921aa5017d88ae2be46ec2b2bf516b" -> "sha256:77751517e0ede97b5e10cdfd0d5bf66afd3d192e9da2f9e5327b8e36ea817120" [label=""];
  "sha256:77751517e0ede97b5e10cdfd0d5bf66afd3d192e9da2f9e5327b8e36ea817120" -> "sha256:595cfb746d24c7433ab076b71cf1b82ca8a22e453f1ca391f242fb33907ad05c" [label=""];
}

