[app/sources/291181159.Dockerfile]
digraph {
  "sha256:71253cfe4c07d95639c0d5569095a5944561e46c02a623beb612d4ce56ba8022" [label="docker-image://docker.io/circleci/mongo:4.0.0-rc2@sha256:86c41d2d8e231026daccf1f9768129c92fc91b3673bc725fce14c6ef08632549" shape="ellipse"];
  "sha256:eb1dd454d7233a059816305bc9e4788b4e81c7626ef0bb1d2d06a19cdc65041d" [label="/bin/sh -c sed -i '/exec \"$@\"/i mkdir \\/dev\\/shm\\/mongo' /usr/local/bin/docker-entrypoint.sh" shape="box"];
  "sha256:a7bb054a24115853c08cae4f21248ea26dfc99a09d33d12984f6939dc13989d7" [label="sha256:a7bb054a24115853c08cae4f21248ea26dfc99a09d33d12984f6939dc13989d7" shape="plaintext"];
  "sha256:71253cfe4c07d95639c0d5569095a5944561e46c02a623beb612d4ce56ba8022" -> "sha256:eb1dd454d7233a059816305bc9e4788b4e81c7626ef0bb1d2d06a19cdc65041d" [label=""];
  "sha256:eb1dd454d7233a059816305bc9e4788b4e81c7626ef0bb1d2d06a19cdc65041d" -> "sha256:a7bb054a24115853c08cae4f21248ea26dfc99a09d33d12984f6939dc13989d7" [label=""];
}

