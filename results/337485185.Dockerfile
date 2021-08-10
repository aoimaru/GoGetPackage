[app/sources/337485185.Dockerfile]
digraph {
  "sha256:f7aa08a74c4562a0819c68dff61ab04bbb6792be4405720d3d2094e6817f4f2d" [label="docker-image://docker.io/minimum2scp/systemd:latest@sha256:d6cfcfbc5a5cc9214f718621bdc4d85a68a2bbf4cec09c3113100b58d4a1d8d4" shape="ellipse"];
  "sha256:87c4d913ee96f5495aebf2a13667d24c63d4524ff96c3d27d170478640573aca" [label="local://context" shape="ellipse"];
  "sha256:bb3a9719abc139f672f571230802d30e780974984f011a8ceae5ae54f95a2b6b" [label="copy{src=/service.test, dest=/tmp/}" shape="note"];
  "sha256:650debb8e812053f45d80d4d44cf8aa005eaaa01c85bc635fd94cfca68d50655" [label="sha256:650debb8e812053f45d80d4d44cf8aa005eaaa01c85bc635fd94cfca68d50655" shape="plaintext"];
  "sha256:f7aa08a74c4562a0819c68dff61ab04bbb6792be4405720d3d2094e6817f4f2d" -> "sha256:bb3a9719abc139f672f571230802d30e780974984f011a8ceae5ae54f95a2b6b" [label=""];
  "sha256:87c4d913ee96f5495aebf2a13667d24c63d4524ff96c3d27d170478640573aca" -> "sha256:bb3a9719abc139f672f571230802d30e780974984f011a8ceae5ae54f95a2b6b" [label=""];
  "sha256:bb3a9719abc139f672f571230802d30e780974984f011a8ceae5ae54f95a2b6b" -> "sha256:650debb8e812053f45d80d4d44cf8aa005eaaa01c85bc635fd94cfca68d50655" [label=""];
}

