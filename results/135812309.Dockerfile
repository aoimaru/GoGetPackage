[app/sources/135812309.Dockerfile]
digraph {
  "sha256:a97e2d6a0b31d0dc7807d8846a206c3e7e059d6bd08fba57c5036fd141715d52" [label="docker-image://docker.io/library/souperweb_squashed:latest" shape="ellipse"];
  "sha256:2c470e4d5a28280a19bc274a2aa1124c64e1756bcf4561c6bf13e1cc1bda9b6e" [label="mkdir{path=/data}" shape="note"];
  "sha256:06bf2a5f0f075b6d9b6fcd8ab0ee0eca4c8fb4d74bd219042b3953fa4b6ca849" [label="sha256:06bf2a5f0f075b6d9b6fcd8ab0ee0eca4c8fb4d74bd219042b3953fa4b6ca849" shape="plaintext"];
  "sha256:a97e2d6a0b31d0dc7807d8846a206c3e7e059d6bd08fba57c5036fd141715d52" -> "sha256:2c470e4d5a28280a19bc274a2aa1124c64e1756bcf4561c6bf13e1cc1bda9b6e" [label=""];
  "sha256:2c470e4d5a28280a19bc274a2aa1124c64e1756bcf4561c6bf13e1cc1bda9b6e" -> "sha256:06bf2a5f0f075b6d9b6fcd8ab0ee0eca4c8fb4d74bd219042b3953fa4b6ca849" [label=""];
}

