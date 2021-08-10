[app/sources/250852575.Dockerfile]
digraph {
  "sha256:d48ea621a0bcfe4eee5a5d743ce2e022b5dec0813dbf0b6b1dcf458ab2343b13" [label="local://context" shape="ellipse"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:819f816114848c93ceb1f8904f8a1660a388e4635a5468cc891bf0c2a149e9a7" [label="mkdir{path=/opt}" shape="note"];
  "sha256:9a6afdcf0d6696e658144aa63fdc8994283f2a9fea83266824c97852d3391624" [label="copy{src=/.docker_build/telegram_bbbot, dest=/opt/bin/telegram_bbbot}" shape="note"];
  "sha256:d2f86d3b3c307d942ccb366012848709920fdd35ca651efdff6a05a2e56952c4" [label="copy{src=/templates, dest=/opt/templates}" shape="note"];
  "sha256:81e51c0edca1bdc8e3357f0d76320dd093a743f1da9c18e941d42e1b38b6326b" [label="copy{src=/static, dest=/opt/static}" shape="note"];
  "sha256:d884cca4e9fe4f8699be4c0d1efa0a03dfdc7ab70c5880d9a6dbfa8e4c210511" [label="sha256:d884cca4e9fe4f8699be4c0d1efa0a03dfdc7ab70c5880d9a6dbfa8e4c210511" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:819f816114848c93ceb1f8904f8a1660a388e4635a5468cc891bf0c2a149e9a7" [label=""];
  "sha256:819f816114848c93ceb1f8904f8a1660a388e4635a5468cc891bf0c2a149e9a7" -> "sha256:9a6afdcf0d6696e658144aa63fdc8994283f2a9fea83266824c97852d3391624" [label=""];
  "sha256:d48ea621a0bcfe4eee5a5d743ce2e022b5dec0813dbf0b6b1dcf458ab2343b13" -> "sha256:9a6afdcf0d6696e658144aa63fdc8994283f2a9fea83266824c97852d3391624" [label=""];
  "sha256:9a6afdcf0d6696e658144aa63fdc8994283f2a9fea83266824c97852d3391624" -> "sha256:d2f86d3b3c307d942ccb366012848709920fdd35ca651efdff6a05a2e56952c4" [label=""];
  "sha256:d48ea621a0bcfe4eee5a5d743ce2e022b5dec0813dbf0b6b1dcf458ab2343b13" -> "sha256:d2f86d3b3c307d942ccb366012848709920fdd35ca651efdff6a05a2e56952c4" [label=""];
  "sha256:d2f86d3b3c307d942ccb366012848709920fdd35ca651efdff6a05a2e56952c4" -> "sha256:81e51c0edca1bdc8e3357f0d76320dd093a743f1da9c18e941d42e1b38b6326b" [label=""];
  "sha256:d48ea621a0bcfe4eee5a5d743ce2e022b5dec0813dbf0b6b1dcf458ab2343b13" -> "sha256:81e51c0edca1bdc8e3357f0d76320dd093a743f1da9c18e941d42e1b38b6326b" [label=""];
  "sha256:81e51c0edca1bdc8e3357f0d76320dd093a743f1da9c18e941d42e1b38b6326b" -> "sha256:d884cca4e9fe4f8699be4c0d1efa0a03dfdc7ab70c5880d9a6dbfa8e4c210511" [label=""];
}

