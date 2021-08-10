[app/sources/323202661.Dockerfile]
digraph {
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:a6299e01ebb4c4cd2b0134d688ae6fff12d3078d934e02f6dd86796831ad08b3" [label="mkdir{path=/home}" shape="note"];
  "sha256:76cb01ba5d663ff687cb749817f9345ab8288120e740385497281a7959a9b378" [label="/bin/sh -c yum install -y curl ca-certificates &&   curl -LO https://s3-us-west-2.amazonaws.com/sensu.io/sensu-go/5.0.0/sensu-go-5.0.0-linux-amd64.tar.gz &&   tar -xzf sensu-go-5.0.0-linux-amd64.tar.gz" shape="box"];
  "sha256:3f0bcc9fdcaf32008b84a39b4fd2a41f2d3020b8bae6cf1a89ce8ae05e30d4a7" [label="copy{src=/home/bin/sensu-backend, dest=/usr/bin/sensu-backend}" shape="note"];
  "sha256:a43120c4c7d4902547fe0ab7d814fe55210ef5a9329a7685625f9dd6a934f1cc" [label="sha256:a43120c4c7d4902547fe0ab7d814fe55210ef5a9329a7685625f9dd6a934f1cc" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:a6299e01ebb4c4cd2b0134d688ae6fff12d3078d934e02f6dd86796831ad08b3" [label=""];
  "sha256:a6299e01ebb4c4cd2b0134d688ae6fff12d3078d934e02f6dd86796831ad08b3" -> "sha256:76cb01ba5d663ff687cb749817f9345ab8288120e740385497281a7959a9b378" [label=""];
  "sha256:76cb01ba5d663ff687cb749817f9345ab8288120e740385497281a7959a9b378" -> "sha256:3f0bcc9fdcaf32008b84a39b4fd2a41f2d3020b8bae6cf1a89ce8ae05e30d4a7" [label=""];
  "sha256:3f0bcc9fdcaf32008b84a39b4fd2a41f2d3020b8bae6cf1a89ce8ae05e30d4a7" -> "sha256:a43120c4c7d4902547fe0ab7d814fe55210ef5a9329a7685625f9dd6a934f1cc" [label=""];
}

