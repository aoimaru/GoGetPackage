[app/sources/455092130.Dockerfile]
digraph {
  "sha256:5a5ce20cac2499cc09f78407ae082b8cf47a49758e7c627c84b7198140007f19" [label="docker-image://docker.io/library/node:4.3.0" shape="ellipse"];
  "sha256:b2f3bc24ad2f3f20b3d0f9ea0383020796ef7906fe035e5522fc5ee6b63aa3cc" [label="mkdir{path=/code}" shape="note"];
  "sha256:081b90b5d06d8c669a14805e040bb741031a21bd3c7de475773cac440d1fe708" [label="sha256:081b90b5d06d8c669a14805e040bb741031a21bd3c7de475773cac440d1fe708" shape="plaintext"];
  "sha256:5a5ce20cac2499cc09f78407ae082b8cf47a49758e7c627c84b7198140007f19" -> "sha256:b2f3bc24ad2f3f20b3d0f9ea0383020796ef7906fe035e5522fc5ee6b63aa3cc" [label=""];
  "sha256:b2f3bc24ad2f3f20b3d0f9ea0383020796ef7906fe035e5522fc5ee6b63aa3cc" -> "sha256:081b90b5d06d8c669a14805e040bb741031a21bd3c7de475773cac440d1fe708" [label=""];
}

