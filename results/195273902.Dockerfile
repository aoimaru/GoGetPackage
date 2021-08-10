[app/sources/195273902.Dockerfile]
digraph {
  "sha256:f4527c3bbbd7e247a409e7aff6f419db87ae63f94dbedbb14ef3d7677dd180a0" [label="docker-image://docker.io/splatform/stratos-db-base:opensuse" shape="ellipse"];
  "sha256:0dff08594a8bda52ffcf58f575d7acdd4f157a71d0581bd19ce884d201436a45" [label="local://context" shape="ellipse"];
  "sha256:da2f8cfe554bb748d81b33ad3da9673fc864b7975c5920810c27fd15aafe2940" [label="copy{src=/mariadb-entrypoint.sh, dest=/docker-entrypoint.sh}" shape="note"];
  "sha256:b61290ced17415deb211ed7d9a7d883ada2f34172a03113afe0791d05901b7b4" [label="sha256:b61290ced17415deb211ed7d9a7d883ada2f34172a03113afe0791d05901b7b4" shape="plaintext"];
  "sha256:f4527c3bbbd7e247a409e7aff6f419db87ae63f94dbedbb14ef3d7677dd180a0" -> "sha256:da2f8cfe554bb748d81b33ad3da9673fc864b7975c5920810c27fd15aafe2940" [label=""];
  "sha256:0dff08594a8bda52ffcf58f575d7acdd4f157a71d0581bd19ce884d201436a45" -> "sha256:da2f8cfe554bb748d81b33ad3da9673fc864b7975c5920810c27fd15aafe2940" [label=""];
  "sha256:da2f8cfe554bb748d81b33ad3da9673fc864b7975c5920810c27fd15aafe2940" -> "sha256:b61290ced17415deb211ed7d9a7d883ada2f34172a03113afe0791d05901b7b4" [label=""];
}

