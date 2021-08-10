[app/sources/457454053.Dockerfile]
digraph {
  "sha256:888c7f876e92451237081d2b3e2c88ec1e8eaf58b2b8f936daf3f0eb5ac6cd05" [label="docker-image://docker.io/library/mariadb:latest" shape="ellipse"];
  "sha256:a09e5b7d39df057ad6ff12a8207fe84eb57f5fb5377fe34367c5c7498e929f2e" [label="local://context" shape="ellipse"];
  "sha256:d38b8def58409eb54eb4f9833d8b9b4dd763a3821cf2d0fea181ee909e330672" [label="copy{src=/my.cnf, dest=/etc/mysql/my.cnf}" shape="note"];
  "sha256:fb821335b6d3ed9def2ebe5a57a15d61045f0276fc09fb28383fbbd090e0c9b8" [label="sha256:fb821335b6d3ed9def2ebe5a57a15d61045f0276fc09fb28383fbbd090e0c9b8" shape="plaintext"];
  "sha256:888c7f876e92451237081d2b3e2c88ec1e8eaf58b2b8f936daf3f0eb5ac6cd05" -> "sha256:d38b8def58409eb54eb4f9833d8b9b4dd763a3821cf2d0fea181ee909e330672" [label=""];
  "sha256:a09e5b7d39df057ad6ff12a8207fe84eb57f5fb5377fe34367c5c7498e929f2e" -> "sha256:d38b8def58409eb54eb4f9833d8b9b4dd763a3821cf2d0fea181ee909e330672" [label=""];
  "sha256:d38b8def58409eb54eb4f9833d8b9b4dd763a3821cf2d0fea181ee909e330672" -> "sha256:fb821335b6d3ed9def2ebe5a57a15d61045f0276fc09fb28383fbbd090e0c9b8" [label=""];
}

