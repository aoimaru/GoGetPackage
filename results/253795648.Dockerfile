[app/sources/253795648.Dockerfile]
digraph {
  "sha256:9fcb75f8915500fef6fe04a02f5b9e92f320882accad1a2ea1eea00cbd3e0f17" [label="docker-image://docker.io/microsoft/aspnet:3.5-windowsservercore-10.0.14393.1715" shape="ellipse"];
  "sha256:06e07d2f0128dad92d5747a6db40676e60da85c3eee9f01ffa4d0b71e70f1ea6" [label="powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue'; Remove-Website 'Default Web Site';" shape="box"];
  "sha256:9ac7765c277203be2c7d20e6afd2c1798f77a4b27e71c09be03763bf59c053cf" [label="sha256:9ac7765c277203be2c7d20e6afd2c1798f77a4b27e71c09be03763bf59c053cf" shape="plaintext"];
  "sha256:9fcb75f8915500fef6fe04a02f5b9e92f320882accad1a2ea1eea00cbd3e0f17" -> "sha256:06e07d2f0128dad92d5747a6db40676e60da85c3eee9f01ffa4d0b71e70f1ea6" [label=""];
  "sha256:06e07d2f0128dad92d5747a6db40676e60da85c3eee9f01ffa4d0b71e70f1ea6" -> "sha256:9ac7765c277203be2c7d20e6afd2c1798f77a4b27e71c09be03763bf59c053cf" [label=""];
}

