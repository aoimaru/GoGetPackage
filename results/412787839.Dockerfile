[app/sources/412787839.Dockerfile]
digraph {
  "sha256:d1d84ca6720f1adddffda1926746cd11a73bc1b8923b6d723923132e0e3c94d8" [label="docker-image://docker.io/japaric/i686-unknown-linux-gnu:latest" shape="ellipse"];
  "sha256:dc7982bc53b169a97ab0153ce1fbd6db6d376d5cec741a5b9ccd7d66eaa0804a" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:2ec7d10b22e4b93702b1fc4b1e80f0be66e8770d0377cd14c6d94e645eca2760" [label="/bin/sh -c apt-get install -y  lib32ncurses5                         lib32ncursesw5                         lib32ncurses5-dev                         lib32ncursesw5-dev" shape="box"];
  "sha256:846ac26cf1a032de04c3512e4ff2442959eb38bfe4925725d8714e22bb3d3952" [label="sha256:846ac26cf1a032de04c3512e4ff2442959eb38bfe4925725d8714e22bb3d3952" shape="plaintext"];
  "sha256:d1d84ca6720f1adddffda1926746cd11a73bc1b8923b6d723923132e0e3c94d8" -> "sha256:dc7982bc53b169a97ab0153ce1fbd6db6d376d5cec741a5b9ccd7d66eaa0804a" [label=""];
  "sha256:dc7982bc53b169a97ab0153ce1fbd6db6d376d5cec741a5b9ccd7d66eaa0804a" -> "sha256:2ec7d10b22e4b93702b1fc4b1e80f0be66e8770d0377cd14c6d94e645eca2760" [label=""];
  "sha256:2ec7d10b22e4b93702b1fc4b1e80f0be66e8770d0377cd14c6d94e645eca2760" -> "sha256:846ac26cf1a032de04c3512e4ff2442959eb38bfe4925725d8714e22bb3d3952" [label=""];
}

