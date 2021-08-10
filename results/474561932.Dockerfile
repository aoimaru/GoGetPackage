[app/sources/474561932.Dockerfile]
digraph {
  "sha256:5a32e3d0bda319696c554d2d6a456984667fea761df7d632b039c14bb898429e" [label="docker-image://docker.io/jess/stress:latest" shape="ellipse"];
  "sha256:298634977a30bb7e2744e37005e2eaeba70960f1e2495f0e57319725e109030b" [label="local://context" shape="ellipse"];
  "sha256:dcf9bd2d13fb47c42f959360ab0e4ead812a171f2ad414e7f5ac04ef3adabc52" [label="copy{src=/consumer, dest=/consumer}" shape="note"];
  "sha256:c39f878e4d5fbbc55aab6859d2a7fcaac23155afa7c3c314141b6fa91dc504d4" [label="copy{src=/consume-cpu, dest=/consume-cpu}" shape="note"];
  "sha256:d58b2a7f4d70377643a64d05827fa7efc8beda47af64d5148125b120002e8cac" [label="sha256:d58b2a7f4d70377643a64d05827fa7efc8beda47af64d5148125b120002e8cac" shape="plaintext"];
  "sha256:5a32e3d0bda319696c554d2d6a456984667fea761df7d632b039c14bb898429e" -> "sha256:dcf9bd2d13fb47c42f959360ab0e4ead812a171f2ad414e7f5ac04ef3adabc52" [label=""];
  "sha256:298634977a30bb7e2744e37005e2eaeba70960f1e2495f0e57319725e109030b" -> "sha256:dcf9bd2d13fb47c42f959360ab0e4ead812a171f2ad414e7f5ac04ef3adabc52" [label=""];
  "sha256:dcf9bd2d13fb47c42f959360ab0e4ead812a171f2ad414e7f5ac04ef3adabc52" -> "sha256:c39f878e4d5fbbc55aab6859d2a7fcaac23155afa7c3c314141b6fa91dc504d4" [label=""];
  "sha256:298634977a30bb7e2744e37005e2eaeba70960f1e2495f0e57319725e109030b" -> "sha256:c39f878e4d5fbbc55aab6859d2a7fcaac23155afa7c3c314141b6fa91dc504d4" [label=""];
  "sha256:c39f878e4d5fbbc55aab6859d2a7fcaac23155afa7c3c314141b6fa91dc504d4" -> "sha256:d58b2a7f4d70377643a64d05827fa7efc8beda47af64d5148125b120002e8cac" [label=""];
}

