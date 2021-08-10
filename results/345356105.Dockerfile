[app/sources/345356105.Dockerfile]
digraph {
  "sha256:cfc18b4aa7c354ea28a5f02a12a056255ca4a5480b471158e832b49495781dbb" [label="docker-image://docker.io/balenalib/armv7hf-fedora:28-build" shape="ellipse"];
  "sha256:27f7c53e2b072c185504e6c26afd6a9f072a1fd7ead31b8246f8dc2aa8cd5cca" [label="/bin/sh -c dnf install -y \t\tless \t\tnano \t\tnet-tools \t\tusbutils \t\tgnupg \t\ti2c-tools \t&& dnf clean all" shape="box"];
  "sha256:36e1baa2c34b94485ca29c5467a65b453d31647ed5f9e6fb1589f7b9a8fac47a" [label="sha256:36e1baa2c34b94485ca29c5467a65b453d31647ed5f9e6fb1589f7b9a8fac47a" shape="plaintext"];
  "sha256:cfc18b4aa7c354ea28a5f02a12a056255ca4a5480b471158e832b49495781dbb" -> "sha256:27f7c53e2b072c185504e6c26afd6a9f072a1fd7ead31b8246f8dc2aa8cd5cca" [label=""];
  "sha256:27f7c53e2b072c185504e6c26afd6a9f072a1fd7ead31b8246f8dc2aa8cd5cca" -> "sha256:36e1baa2c34b94485ca29c5467a65b453d31647ed5f9e6fb1589f7b9a8fac47a" [label=""];
}

