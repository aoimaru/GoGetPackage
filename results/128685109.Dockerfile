[app/sources/128685109.Dockerfile]
digraph {
  "sha256:eeadafea373a85b54939fecb7f1e1deb816dccd462c0ee146c2088c4d1b74e01" [label="local://context" shape="ellipse"];
  "sha256:bf83a1745b12bf166c7cc5bdf3b93bb08da22e8e65143bb33d4216692870957f" [label="docker-image://docker.io/ppc64le/ubuntu:latest" shape="ellipse"];
  "sha256:4eaee75db66cf37cb412de25e5de0fd82040aabda9b780da8fb936be1b932a56" [label="copy{src=/jdk, dest=/jdk}" shape="note"];
  "sha256:47945fc5c1e96ac49a193a55c84bfb52baee315087004447f474170dad3a3110" [label="sha256:47945fc5c1e96ac49a193a55c84bfb52baee315087004447f474170dad3a3110" shape="plaintext"];
  "sha256:bf83a1745b12bf166c7cc5bdf3b93bb08da22e8e65143bb33d4216692870957f" -> "sha256:4eaee75db66cf37cb412de25e5de0fd82040aabda9b780da8fb936be1b932a56" [label=""];
  "sha256:eeadafea373a85b54939fecb7f1e1deb816dccd462c0ee146c2088c4d1b74e01" -> "sha256:4eaee75db66cf37cb412de25e5de0fd82040aabda9b780da8fb936be1b932a56" [label=""];
  "sha256:4eaee75db66cf37cb412de25e5de0fd82040aabda9b780da8fb936be1b932a56" -> "sha256:47945fc5c1e96ac49a193a55c84bfb52baee315087004447f474170dad3a3110" [label=""];
}

