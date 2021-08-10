[app/sources/181805986.Dockerfile]
digraph {
  "sha256:a1edaa6e084f8589253bb2d36c467a2feba13a56383aab09721d5c4c8f24ddb9" [label="docker-image://docker.io/tianon/debian-devel:latest" shape="ellipse"];
  "sha256:289a058caca49a1b64eeb939fa51f2a2139c696a68690fa8feff40dc7c5925ac" [label="/bin/sh -c git clone --no-checkout git://anonscm.debian.org/pkg-go/packages/golang-pty.git /usr/src/golang-pty" shape="box"];
  "sha256:4714f460a15586332141ab350b4bb6b09a3caeb2725f461646e1501eb9bfd3ac" [label="local://context" shape="ellipse"];
  "sha256:043a18f0e3c9500b3984c84b9759e1b033b4af117b6609d60cecaef421d6e18e" [label="copy{src=/control, dest=/usr/src/golang-pty/debian/}" shape="note"];
  "sha256:36b5fa587cc2ca97e10bc5bfeb923ee35171c61e8073c25d9700f164c60d4dd9" [label="mkdir{path=/usr/src/golang-pty}" shape="note"];
  "sha256:c7b9e1b2bc4d717e5ee0eb90e75cdf689544502b76ca9a77b52e6d221095d9d4" [label="/bin/sh -c apt-get update && mk-build-deps -irt'apt-get --no-install-recommends -yq' debian/control" shape="box"];
  "sha256:7d3e29e14569eab65071d8136e428f577867b513a7e266486d37b6ad0444249b" [label="copy{src=/, dest=/usr/src/golang-pty/debian}" shape="note"];
  "sha256:a15abcb573387b28c29438990ea5757cfc58ceebe3716b10662e511708af61cd" [label="/bin/sh -c git fetch --tags && ./debian/helpers/generate-tarball.sh ../" shape="box"];
  "sha256:2cece002b0e886d334c2b8185cdc2262c4e02e7a65bdd062cd65fa08df64e193" [label="/bin/sh -c origtargz --unpack" shape="box"];
  "sha256:c8117fc21a4f443ab6853a9d3b79b6b26d3b34175f381e5311de74984dd0edca" [label="/bin/sh -c echo 'origtargz --unpack && dpkg-buildpackage -us -uc && lintian -EvIL+pedantic' >> /root/.bash_history" shape="box"];
  "sha256:75e3e300856127014bd9c09fcfeb80491e9385ad898164ce8b851a3b43a04e84" [label="sha256:75e3e300856127014bd9c09fcfeb80491e9385ad898164ce8b851a3b43a04e84" shape="plaintext"];
  "sha256:a1edaa6e084f8589253bb2d36c467a2feba13a56383aab09721d5c4c8f24ddb9" -> "sha256:289a058caca49a1b64eeb939fa51f2a2139c696a68690fa8feff40dc7c5925ac" [label=""];
  "sha256:289a058caca49a1b64eeb939fa51f2a2139c696a68690fa8feff40dc7c5925ac" -> "sha256:043a18f0e3c9500b3984c84b9759e1b033b4af117b6609d60cecaef421d6e18e" [label=""];
  "sha256:4714f460a15586332141ab350b4bb6b09a3caeb2725f461646e1501eb9bfd3ac" -> "sha256:043a18f0e3c9500b3984c84b9759e1b033b4af117b6609d60cecaef421d6e18e" [label=""];
  "sha256:043a18f0e3c9500b3984c84b9759e1b033b4af117b6609d60cecaef421d6e18e" -> "sha256:36b5fa587cc2ca97e10bc5bfeb923ee35171c61e8073c25d9700f164c60d4dd9" [label=""];
  "sha256:36b5fa587cc2ca97e10bc5bfeb923ee35171c61e8073c25d9700f164c60d4dd9" -> "sha256:c7b9e1b2bc4d717e5ee0eb90e75cdf689544502b76ca9a77b52e6d221095d9d4" [label=""];
  "sha256:c7b9e1b2bc4d717e5ee0eb90e75cdf689544502b76ca9a77b52e6d221095d9d4" -> "sha256:7d3e29e14569eab65071d8136e428f577867b513a7e266486d37b6ad0444249b" [label=""];
  "sha256:4714f460a15586332141ab350b4bb6b09a3caeb2725f461646e1501eb9bfd3ac" -> "sha256:7d3e29e14569eab65071d8136e428f577867b513a7e266486d37b6ad0444249b" [label=""];
  "sha256:7d3e29e14569eab65071d8136e428f577867b513a7e266486d37b6ad0444249b" -> "sha256:a15abcb573387b28c29438990ea5757cfc58ceebe3716b10662e511708af61cd" [label=""];
  "sha256:a15abcb573387b28c29438990ea5757cfc58ceebe3716b10662e511708af61cd" -> "sha256:2cece002b0e886d334c2b8185cdc2262c4e02e7a65bdd062cd65fa08df64e193" [label=""];
  "sha256:2cece002b0e886d334c2b8185cdc2262c4e02e7a65bdd062cd65fa08df64e193" -> "sha256:c8117fc21a4f443ab6853a9d3b79b6b26d3b34175f381e5311de74984dd0edca" [label=""];
  "sha256:c8117fc21a4f443ab6853a9d3b79b6b26d3b34175f381e5311de74984dd0edca" -> "sha256:75e3e300856127014bd9c09fcfeb80491e9385ad898164ce8b851a3b43a04e84" [label=""];
}

