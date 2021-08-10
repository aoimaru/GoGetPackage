[app/sources/252794162.Dockerfile]
digraph {
  "sha256:7028487dea19d7e3d154401c29cedb8cad2dd18a9c608f2b1d7a9ac91d5ba004" [label="docker-image://docker.io/darron/nodejs-saucy:latest" shape="ellipse"];
  "sha256:c1ae171d581182cfc4faec44deb3e47a9934f542bd67c518222e6ad9b1075fa6" [label="/bin/sh -c npm install harp -g" shape="box"];
  "sha256:ce445ef2953975d7d05816a379330a78343a71492a4832da5e595819a1bf01cc" [label="sha256:ce445ef2953975d7d05816a379330a78343a71492a4832da5e595819a1bf01cc" shape="plaintext"];
  "sha256:7028487dea19d7e3d154401c29cedb8cad2dd18a9c608f2b1d7a9ac91d5ba004" -> "sha256:c1ae171d581182cfc4faec44deb3e47a9934f542bd67c518222e6ad9b1075fa6" [label=""];
  "sha256:c1ae171d581182cfc4faec44deb3e47a9934f542bd67c518222e6ad9b1075fa6" -> "sha256:ce445ef2953975d7d05816a379330a78343a71492a4832da5e595819a1bf01cc" [label=""];
}

