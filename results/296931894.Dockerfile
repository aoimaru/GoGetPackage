[app/sources/296931894.Dockerfile]
digraph {
  "sha256:a61fade9d1f35f956a2a32d2f88bdcdcacde2923af633f5e1c71844083556ff2" [label="local://context" shape="ellipse"];
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" [label="docker-image://docker.io/library/fedora:latest" shape="ellipse"];
  "sha256:ca05e0b0f465c8e492b66e951a6dde56fe2a62168686bdabbb4967ed744a92e5" [label="copy{src=/apiextensions-apiserver, dest=/}" shape="note"];
  "sha256:e551510c69771b800b35ee214ea7e13dc7869cc2b85b298b0fab196a9bce3f62" [label="sha256:e551510c69771b800b35ee214ea7e13dc7869cc2b85b298b0fab196a9bce3f62" shape="plaintext"];
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" -> "sha256:ca05e0b0f465c8e492b66e951a6dde56fe2a62168686bdabbb4967ed744a92e5" [label=""];
  "sha256:a61fade9d1f35f956a2a32d2f88bdcdcacde2923af633f5e1c71844083556ff2" -> "sha256:ca05e0b0f465c8e492b66e951a6dde56fe2a62168686bdabbb4967ed744a92e5" [label=""];
  "sha256:ca05e0b0f465c8e492b66e951a6dde56fe2a62168686bdabbb4967ed744a92e5" -> "sha256:e551510c69771b800b35ee214ea7e13dc7869cc2b85b298b0fab196a9bce3f62" [label=""];
}

