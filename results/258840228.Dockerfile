[app/sources/258840228.Dockerfile]
digraph {
  "sha256:62e7d73d2ce6b18ef173c5ca78d09b90c105317c3f54958b94a909b4aaf0f162" [label="docker-image://docker.io/distribution/golem:0.1" shape="ellipse"];
  "sha256:1048444118a1775e823633445559bbe004a74cc92bb70c31bd0b2c637fba41ad" [label="/bin/sh -c apk add --no-cache git" shape="box"];
  "sha256:087b16e222512f8dcf229e5d58ff1e33af0b66cf7668411f807eca95845bbccc" [label="mkdir{path=/go/src/github.com/docker/distribution/contrib/docker-integration}" shape="note"];
  "sha256:2b6bf33ec662f9e9932d40d9ed779950cf8a829bedb33d73655701722ee9dfd6" [label="sha256:2b6bf33ec662f9e9932d40d9ed779950cf8a829bedb33d73655701722ee9dfd6" shape="plaintext"];
  "sha256:62e7d73d2ce6b18ef173c5ca78d09b90c105317c3f54958b94a909b4aaf0f162" -> "sha256:1048444118a1775e823633445559bbe004a74cc92bb70c31bd0b2c637fba41ad" [label=""];
  "sha256:1048444118a1775e823633445559bbe004a74cc92bb70c31bd0b2c637fba41ad" -> "sha256:087b16e222512f8dcf229e5d58ff1e33af0b66cf7668411f807eca95845bbccc" [label=""];
  "sha256:087b16e222512f8dcf229e5d58ff1e33af0b66cf7668411f807eca95845bbccc" -> "sha256:2b6bf33ec662f9e9932d40d9ed779950cf8a829bedb33d73655701722ee9dfd6" [label=""];
}

