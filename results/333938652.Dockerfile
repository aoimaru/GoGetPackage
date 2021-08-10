[app/sources/333938652.Dockerfile]
digraph {
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" [label="docker-image://docker.io/library/fedora:latest" shape="ellipse"];
  "sha256:244bd98f253b2264f95ede4e9eaab2ae1cde2a61cb26f502e19a7cb158d72717" [label="local://context" shape="ellipse"];
  "sha256:f36a76dd8b10609fd7b4f7ee165bf1d0063b58e9cdb29fc1320b77332212996c" [label="copy{src=/apiextensions-apiserver, dest=/}" shape="note"];
  "sha256:83b4075957751d1f89ef8ea986404776a664fdeeca1b8601a27c96c5ed94fb70" [label="sha256:83b4075957751d1f89ef8ea986404776a664fdeeca1b8601a27c96c5ed94fb70" shape="plaintext"];
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" -> "sha256:f36a76dd8b10609fd7b4f7ee165bf1d0063b58e9cdb29fc1320b77332212996c" [label=""];
  "sha256:244bd98f253b2264f95ede4e9eaab2ae1cde2a61cb26f502e19a7cb158d72717" -> "sha256:f36a76dd8b10609fd7b4f7ee165bf1d0063b58e9cdb29fc1320b77332212996c" [label=""];
  "sha256:f36a76dd8b10609fd7b4f7ee165bf1d0063b58e9cdb29fc1320b77332212996c" -> "sha256:83b4075957751d1f89ef8ea986404776a664fdeeca1b8601a27c96c5ed94fb70" [label=""];
}

