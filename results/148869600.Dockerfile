[app/sources/148869600.Dockerfile]
digraph {
  "sha256:762fd2bd94b248cbabbf4427f63f7f44bf538c45a9ab8e6ca4bed264db253fc5" [label="docker-image://docker.io/library/golang:1.12.4" shape="ellipse"];
  "sha256:ad6973f10ab0957400e19623ad87584cb8eee2d00db024020138593bca8c34e0" [label="mkdir{path=/app}" shape="note"];
  "sha256:eb9d56695e3eca005aa2e294e694a459f313d98eefca890b83fe12167cc8eda9" [label="local://context" shape="ellipse"];
  "sha256:e005e2dc8d9f21148a5526c87c9327eec7b781f1338356872d6b30975d4dbf9b" [label="copy{src=/myapp, dest=/app/}" shape="note"];
  "sha256:4fb9d1edd459af039f76c0a8bff06f880851c61a3624517605f720207687c644" [label="sha256:4fb9d1edd459af039f76c0a8bff06f880851c61a3624517605f720207687c644" shape="plaintext"];
  "sha256:762fd2bd94b248cbabbf4427f63f7f44bf538c45a9ab8e6ca4bed264db253fc5" -> "sha256:ad6973f10ab0957400e19623ad87584cb8eee2d00db024020138593bca8c34e0" [label=""];
  "sha256:ad6973f10ab0957400e19623ad87584cb8eee2d00db024020138593bca8c34e0" -> "sha256:e005e2dc8d9f21148a5526c87c9327eec7b781f1338356872d6b30975d4dbf9b" [label=""];
  "sha256:eb9d56695e3eca005aa2e294e694a459f313d98eefca890b83fe12167cc8eda9" -> "sha256:e005e2dc8d9f21148a5526c87c9327eec7b781f1338356872d6b30975d4dbf9b" [label=""];
  "sha256:e005e2dc8d9f21148a5526c87c9327eec7b781f1338356872d6b30975d4dbf9b" -> "sha256:4fb9d1edd459af039f76c0a8bff06f880851c61a3624517605f720207687c644" [label=""];
}

