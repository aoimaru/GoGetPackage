[app/sources/148531801.Dockerfile]
digraph {
  "sha256:6a8e20df819ab47bf920867551a674c6c966f4acbcdb3c0c2a5299d882ac25a3" [label="docker-image://docker.io/library/node:lts-alpine" shape="ellipse"];
  "sha256:0f44ed3e8ad975a11028b4a984a24012a0b4e3361ab90961d9a7d5967947642d" [label="local://context" shape="ellipse"];
  "sha256:4046c4c88d0253552f1305ec2cb9d718294a3dd400b09c7e5f03a94a57efc480" [label="copy{src=/package*.json, dest=/}" shape="note"];
  "sha256:089f427b5a2886b92599cafc13b09124ca98dd93d5080bcfe8e2d1eedcd08524" [label="/bin/sh -c npm ci" shape="box"];
  "sha256:333ef19114ebfd6fc6e33047650b55f27f3fe6194b96b650f72fe42b7f5e8e49" [label="copy{src=/, dest=/}" shape="note"];
  "sha256:c0b98be2f79121b2e9fed6c8674839813e948a6cfd6621e1c52c23b433fcfa08" [label="sha256:c0b98be2f79121b2e9fed6c8674839813e948a6cfd6621e1c52c23b433fcfa08" shape="plaintext"];
  "sha256:6a8e20df819ab47bf920867551a674c6c966f4acbcdb3c0c2a5299d882ac25a3" -> "sha256:4046c4c88d0253552f1305ec2cb9d718294a3dd400b09c7e5f03a94a57efc480" [label=""];
  "sha256:0f44ed3e8ad975a11028b4a984a24012a0b4e3361ab90961d9a7d5967947642d" -> "sha256:4046c4c88d0253552f1305ec2cb9d718294a3dd400b09c7e5f03a94a57efc480" [label=""];
  "sha256:4046c4c88d0253552f1305ec2cb9d718294a3dd400b09c7e5f03a94a57efc480" -> "sha256:089f427b5a2886b92599cafc13b09124ca98dd93d5080bcfe8e2d1eedcd08524" [label=""];
  "sha256:089f427b5a2886b92599cafc13b09124ca98dd93d5080bcfe8e2d1eedcd08524" -> "sha256:333ef19114ebfd6fc6e33047650b55f27f3fe6194b96b650f72fe42b7f5e8e49" [label=""];
  "sha256:0f44ed3e8ad975a11028b4a984a24012a0b4e3361ab90961d9a7d5967947642d" -> "sha256:333ef19114ebfd6fc6e33047650b55f27f3fe6194b96b650f72fe42b7f5e8e49" [label=""];
  "sha256:333ef19114ebfd6fc6e33047650b55f27f3fe6194b96b650f72fe42b7f5e8e49" -> "sha256:c0b98be2f79121b2e9fed6c8674839813e948a6cfd6621e1c52c23b433fcfa08" [label=""];
}

