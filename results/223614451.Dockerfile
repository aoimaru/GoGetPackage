[app/sources/223614451.Dockerfile]
digraph {
  "sha256:684b5473156430d755d21039f74659a2b0231c28c835de287c026b7e4d25b087" [label="local://context" shape="ellipse"];
  "sha256:d73d6d8671e6b1f5e0cb42a702e0d2738d6e58a05b01ba5e95ea070628e4b203" [label="docker-image://docker.io/library/node:4.6.1-slim" shape="ellipse"];
  "sha256:294534ffb9c25aecc28bf3d3af87e06243953460563c24d7cfef987a1779f570" [label="copy{src=/bundle, dest=/bundle/}" shape="note"];
  "sha256:ea42dbf05931734e42ad7c411b9e2aaf179454e9edbb24319af319e86b9b18e6" [label="mkdir{path=/bundle}" shape="note"];
  "sha256:762203578de38089708d5c3a2aa8f427eb6e74f78889f22eddb90c7494dc0b87" [label="/bin/sh -c (cd programs/server && npm install)" shape="box"];
  "sha256:70a64c6b44f5eb1ffb5710c25d1e76c2724ab3489bb20096a456def94ce379c9" [label="sha256:70a64c6b44f5eb1ffb5710c25d1e76c2724ab3489bb20096a456def94ce379c9" shape="plaintext"];
  "sha256:d73d6d8671e6b1f5e0cb42a702e0d2738d6e58a05b01ba5e95ea070628e4b203" -> "sha256:294534ffb9c25aecc28bf3d3af87e06243953460563c24d7cfef987a1779f570" [label=""];
  "sha256:684b5473156430d755d21039f74659a2b0231c28c835de287c026b7e4d25b087" -> "sha256:294534ffb9c25aecc28bf3d3af87e06243953460563c24d7cfef987a1779f570" [label=""];
  "sha256:294534ffb9c25aecc28bf3d3af87e06243953460563c24d7cfef987a1779f570" -> "sha256:ea42dbf05931734e42ad7c411b9e2aaf179454e9edbb24319af319e86b9b18e6" [label=""];
  "sha256:ea42dbf05931734e42ad7c411b9e2aaf179454e9edbb24319af319e86b9b18e6" -> "sha256:762203578de38089708d5c3a2aa8f427eb6e74f78889f22eddb90c7494dc0b87" [label=""];
  "sha256:762203578de38089708d5c3a2aa8f427eb6e74f78889f22eddb90c7494dc0b87" -> "sha256:70a64c6b44f5eb1ffb5710c25d1e76c2724ab3489bb20096a456def94ce379c9" [label=""];
}

