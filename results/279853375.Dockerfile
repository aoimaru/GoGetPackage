[app/sources/279853375.Dockerfile]
digraph {
  "sha256:516976f2a1ccbcc4bc3356aca273787c93c42dd9b641ddf5f1d4f7443d9a2eb9" [label="docker-image://docker.io/bitnami/minideb-extras:jessie-r15@sha256:7bfe55ecdef28736622fe947fb4101b9bceffe72580a468d72143bc0eb5eb125" shape="ellipse"];
  "sha256:806ac9f2c62040b4ee057d32fee5068d2e75aabb6dbb748c0c03680cc4b81664" [label="/bin/sh -c echo \"deb http://http.debian.net/debian jessie-backports main\" >> /etc/apt/sources.list &&     install_packages ca-certificates-java/jessie-backports openjdk-8-jdk-headless bzip2" shape="box"];
  "sha256:5ed3c9ccebf4915d6e9de32b0d60fb5a09518a4270c1c863ce8adad173a2b73d" [label="/bin/sh -c mkdir /bitnami" shape="box"];
  "sha256:f3f6cd3e5d99f2196d0e6b5d2128d9b3c051884a1311ee1adbe710f73944dc11" [label="mkdir{path=/bitnami}" shape="note"];
  "sha256:5e7b526e4f7261f7dd497b748d3dd557c92f14755e2eb5fae55bf6ee106c3b35" [label="sha256:5e7b526e4f7261f7dd497b748d3dd557c92f14755e2eb5fae55bf6ee106c3b35" shape="plaintext"];
  "sha256:516976f2a1ccbcc4bc3356aca273787c93c42dd9b641ddf5f1d4f7443d9a2eb9" -> "sha256:806ac9f2c62040b4ee057d32fee5068d2e75aabb6dbb748c0c03680cc4b81664" [label=""];
  "sha256:806ac9f2c62040b4ee057d32fee5068d2e75aabb6dbb748c0c03680cc4b81664" -> "sha256:5ed3c9ccebf4915d6e9de32b0d60fb5a09518a4270c1c863ce8adad173a2b73d" [label=""];
  "sha256:5ed3c9ccebf4915d6e9de32b0d60fb5a09518a4270c1c863ce8adad173a2b73d" -> "sha256:f3f6cd3e5d99f2196d0e6b5d2128d9b3c051884a1311ee1adbe710f73944dc11" [label=""];
  "sha256:f3f6cd3e5d99f2196d0e6b5d2128d9b3c051884a1311ee1adbe710f73944dc11" -> "sha256:5e7b526e4f7261f7dd497b748d3dd557c92f14755e2eb5fae55bf6ee106c3b35" [label=""];
}

