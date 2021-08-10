[app/sources/252769752.Dockerfile]
digraph {
  "sha256:d1437477133116cb37d3a67455cdfdabe2f431ac3d71380555e6c90158044a8d" [label="docker-image://docker.io/microsoft/dotnet:2.0.0-runtime-deps" shape="ellipse"];
  "sha256:6be6be2e33c7292048da5bbe09b1cc0b01b565c2d9e286580528a5443316c57d" [label="mkdir{path=/app}" shape="note"];
  "sha256:956b9f0dc27993dc9079de46a32232cb9d278387ff8d4b73cb326d6dd2979ac1" [label="local://context" shape="ellipse"];
  "sha256:e47dbafd12c828d26945da446b003448238c5d0ceb6822236da4ea26849b0e70" [label="copy{src=/--from=builder, dest=/app/},copy{src=/root/src/app/amimedia/published, dest=/app/}" shape="note"];
  "sha256:b11528887633b29f803a31f369cc41f64d4a5920444a3b7994612df00e32abd8" [label="sha256:b11528887633b29f803a31f369cc41f64d4a5920444a3b7994612df00e32abd8" shape="plaintext"];
  "sha256:d1437477133116cb37d3a67455cdfdabe2f431ac3d71380555e6c90158044a8d" -> "sha256:6be6be2e33c7292048da5bbe09b1cc0b01b565c2d9e286580528a5443316c57d" [label=""];
  "sha256:6be6be2e33c7292048da5bbe09b1cc0b01b565c2d9e286580528a5443316c57d" -> "sha256:e47dbafd12c828d26945da446b003448238c5d0ceb6822236da4ea26849b0e70" [label=""];
  "sha256:956b9f0dc27993dc9079de46a32232cb9d278387ff8d4b73cb326d6dd2979ac1" -> "sha256:e47dbafd12c828d26945da446b003448238c5d0ceb6822236da4ea26849b0e70" [label=""];
  "sha256:e47dbafd12c828d26945da446b003448238c5d0ceb6822236da4ea26849b0e70" -> "sha256:b11528887633b29f803a31f369cc41f64d4a5920444a3b7994612df00e32abd8" [label=""];
}

