[app/sources/237422132.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:60b03fcb1b343b273c0e4c64a24800682448caf2c3856221c5442d15846644cd" [label="/bin/sh -c apt-get update &&     apt-get install -y       gettext       git       liblua5.3-dev       libperl-dev       make       python-dev       python3-dev       ruby-dev       tcl-dev &&     apt-get clean &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:a5cff1cbed2a5cccbcb901896d165c9cadac6b9d27265c85c277c133f2774ce1" [label="/bin/sh -c ln -s /usr/include/lua5.3 /usr/include/lua &&     ln -s /usr/lib/x86_64-linux-gnu/liblua5.3.a /usr/lib/x86_64-linux-gnu/liblua.a &&     ln -s /usr/lib/x86_64-linux-gnu/liblua5.3-c++.a /usr/lib/x86_64-linux-gnu/liblua-c++.a" shape="box"];
  "sha256:6351f2efbcdac3bdecdc7eb5b8db463fbe0db73c025801fb986aa36adc65fd46" [label="sha256:6351f2efbcdac3bdecdc7eb5b8db463fbe0db73c025801fb986aa36adc65fd46" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:60b03fcb1b343b273c0e4c64a24800682448caf2c3856221c5442d15846644cd" [label=""];
  "sha256:60b03fcb1b343b273c0e4c64a24800682448caf2c3856221c5442d15846644cd" -> "sha256:a5cff1cbed2a5cccbcb901896d165c9cadac6b9d27265c85c277c133f2774ce1" [label=""];
  "sha256:a5cff1cbed2a5cccbcb901896d165c9cadac6b9d27265c85c277c133f2774ce1" -> "sha256:6351f2efbcdac3bdecdc7eb5b8db463fbe0db73c025801fb986aa36adc65fd46" [label=""];
}

