[app/sources/252771262.Dockerfile]
digraph {
  "sha256:c75195e762116c0f57dfcc525e15f33187c6595b42ae6d2f9e313e730e56e0e2" [label="docker-image://docker.io/library/nginx:alpine" shape="ellipse"];
  "sha256:9bff4a5d2e95f1a93678089d0fe6e8f34f12fed7a06cd01835b890257491bffd" [label="local://context" shape="ellipse"];
  "sha256:ab08d896315f383b4c12a93d14704df8bedacad658c5b6d5b6f4c12d4076da48" [label="copy{src=/build, dest=/usr/share/nginx/html}" shape="note"];
  "sha256:073ba79d0e2265cb32361cd58179fd06163c25f9ab180548224cbe623204cd3c" [label="sha256:073ba79d0e2265cb32361cd58179fd06163c25f9ab180548224cbe623204cd3c" shape="plaintext"];
  "sha256:c75195e762116c0f57dfcc525e15f33187c6595b42ae6d2f9e313e730e56e0e2" -> "sha256:ab08d896315f383b4c12a93d14704df8bedacad658c5b6d5b6f4c12d4076da48" [label=""];
  "sha256:9bff4a5d2e95f1a93678089d0fe6e8f34f12fed7a06cd01835b890257491bffd" -> "sha256:ab08d896315f383b4c12a93d14704df8bedacad658c5b6d5b6f4c12d4076da48" [label=""];
  "sha256:ab08d896315f383b4c12a93d14704df8bedacad658c5b6d5b6f4c12d4076da48" -> "sha256:073ba79d0e2265cb32361cd58179fd06163c25f9ab180548224cbe623204cd3c" [label=""];
}

