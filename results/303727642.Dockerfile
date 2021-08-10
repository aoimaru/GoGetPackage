[app/sources/303727642.Dockerfile]
digraph {
  "sha256:2decfb74e0aa65913799a45c8484782265c5faca94343a4db4875716c9726eb8" [label="docker-image://docker.io/library/image:latest" shape="ellipse"];
  "sha256:88af59ff14b3a7780fb7babcbd1afca119493b9650b4a9af544ede28485107ae" [label="local://context" shape="ellipse"];
  "sha256:e0905c0e03087875197f3e754e31ac3453000debe6af72fa46e8daaf929edbfb" [label="copy{src=/src, dest=/maven/dest}" shape="note"];
  "sha256:b033829ab3d88c0a3569e8ffaa108720d694c04ecf020512d6b7ee334f789698" [label="sha256:b033829ab3d88c0a3569e8ffaa108720d694c04ecf020512d6b7ee334f789698" shape="plaintext"];
  "sha256:2decfb74e0aa65913799a45c8484782265c5faca94343a4db4875716c9726eb8" -> "sha256:e0905c0e03087875197f3e754e31ac3453000debe6af72fa46e8daaf929edbfb" [label=""];
  "sha256:88af59ff14b3a7780fb7babcbd1afca119493b9650b4a9af544ede28485107ae" -> "sha256:e0905c0e03087875197f3e754e31ac3453000debe6af72fa46e8daaf929edbfb" [label=""];
  "sha256:e0905c0e03087875197f3e754e31ac3453000debe6af72fa46e8daaf929edbfb" -> "sha256:b033829ab3d88c0a3569e8ffaa108720d694c04ecf020512d6b7ee334f789698" [label=""];
}

