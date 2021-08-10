[app/sources/225807950.Dockerfile]
digraph {
  "sha256:b18d00cdc3935a1f0e3b09bef982d4251c456e408c034f1241c4fe42a1e34b1a" [label="docker-image://docker.io/lunik/node-alpine-onbuild:latest" shape="ellipse"];
  "sha256:ce8b8459e01d5f2723506215bda52af2344fbfa6daf23e961ad2efabb3f4bc63" [label="/bin/sh -c npm run postinstall" shape="box"];
  "sha256:1f1ccb1126b6644188fd5d725f6aaca21edf136fc046f21cad80cd0c101dfbc9" [label="sha256:1f1ccb1126b6644188fd5d725f6aaca21edf136fc046f21cad80cd0c101dfbc9" shape="plaintext"];
  "sha256:b18d00cdc3935a1f0e3b09bef982d4251c456e408c034f1241c4fe42a1e34b1a" -> "sha256:ce8b8459e01d5f2723506215bda52af2344fbfa6daf23e961ad2efabb3f4bc63" [label=""];
  "sha256:ce8b8459e01d5f2723506215bda52af2344fbfa6daf23e961ad2efabb3f4bc63" -> "sha256:1f1ccb1126b6644188fd5d725f6aaca21edf136fc046f21cad80cd0c101dfbc9" [label=""];
}

