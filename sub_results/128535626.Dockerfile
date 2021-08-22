[app/sub_sources/128535626.Dockerfile]
digraph {
  "sha256:6a992accf2379ea0277bf4c912f91bb7ad8a7faa1d1423537beadfb4cc61b0b4" [label="docker-image://docker.io/library/ubuntu:16.04@sha256:6a3ac136b6ca623d6a6fa20a7622f098b2fae1ac05f0114386ef439d8ca89a4a" shape="ellipse"];
  "sha256:16a2a79be5b18b5fc04a64546bc1435d8fbfa7b61bcbe0ccbdeb8b43c446c372" [label="local://context" shape="ellipse"];
  "sha256:3261ce3716b389ff97552f304ef7c5b9183dcdddc4b15c5274e32a71b3d90204" [label="copy{src=/scripts/cross-apt-packages.sh, dest=/scripts/}" shape="note"];
  "sha256:b89273a4dbd30da8ff22f6307a76f7c911e34e78ad16e4585bf04554e5ce2216" [label="/bin/sh -c sh /scripts/cross-apt-packages.sh" shape="box"];
  "sha256:b078b1ae0bc420bc5755b2d2c72fab4e00fa4f6aa1a1a45e2e7ec5bce5d37b04" [label="copy{src=/scripts/crosstool-ng.sh, dest=/scripts/}" shape="note"];
  "sha256:8b62339df42ca79c40a26d8fc721f7203618639c4e56cb5a64d7afd6bb825f55" [label="/bin/sh -c sh /scripts/crosstool-ng.sh" shape="box"];
  "sha256:d83a205ac1d8639b99b0b3d41f77d487be02bdbec90af991825823dfed633090" [label="mkdir{path=/tmp}" shape="note"];
  "sha256:25eb1873f78875ff90a0d996693f0a69a393dfc9eab7fc13f7cc3c2150777185" [label="copy{src=/cross/install-x86_64-redox.sh, dest=/tmp/}" shape="note"];
  "sha256:1d122b1729a89cef3a67121ce34ab774d1ef4504eec09b98f5fbce9448ddb019" [label="/bin/sh -c ./install-x86_64-redox.sh" shape="box"];
  "sha256:826daa832b4bbea487c8e8717817371772a14a20e0bdecd42a60e3c2ef26efa1" [label="copy{src=/scripts/sccache.sh, dest=/scripts/}" shape="note"];
  "sha256:b3d626ed996a1b40171fdd743a49ab36009e3c8daa8d50d88164129d4e8149b0" [label="/bin/sh -c sh /scripts/sccache.sh" shape="box"];
  "sha256:f7401530458d635bddcaefbf5426bfb1d396471372cbd6fa2dc7fd6d77b9afc5" [label="sha256:f7401530458d635bddcaefbf5426bfb1d396471372cbd6fa2dc7fd6d77b9afc5" shape="plaintext"];
  "sha256:6a992accf2379ea0277bf4c912f91bb7ad8a7faa1d1423537beadfb4cc61b0b4" -> "sha256:3261ce3716b389ff97552f304ef7c5b9183dcdddc4b15c5274e32a71b3d90204" [label=""];
  "sha256:16a2a79be5b18b5fc04a64546bc1435d8fbfa7b61bcbe0ccbdeb8b43c446c372" -> "sha256:3261ce3716b389ff97552f304ef7c5b9183dcdddc4b15c5274e32a71b3d90204" [label=""];
  "sha256:3261ce3716b389ff97552f304ef7c5b9183dcdddc4b15c5274e32a71b3d90204" -> "sha256:b89273a4dbd30da8ff22f6307a76f7c911e34e78ad16e4585bf04554e5ce2216" [label=""];
  "sha256:b89273a4dbd30da8ff22f6307a76f7c911e34e78ad16e4585bf04554e5ce2216" -> "sha256:b078b1ae0bc420bc5755b2d2c72fab4e00fa4f6aa1a1a45e2e7ec5bce5d37b04" [label=""];
  "sha256:16a2a79be5b18b5fc04a64546bc1435d8fbfa7b61bcbe0ccbdeb8b43c446c372" -> "sha256:b078b1ae0bc420bc5755b2d2c72fab4e00fa4f6aa1a1a45e2e7ec5bce5d37b04" [label=""];
  "sha256:b078b1ae0bc420bc5755b2d2c72fab4e00fa4f6aa1a1a45e2e7ec5bce5d37b04" -> "sha256:8b62339df42ca79c40a26d8fc721f7203618639c4e56cb5a64d7afd6bb825f55" [label=""];
  "sha256:8b62339df42ca79c40a26d8fc721f7203618639c4e56cb5a64d7afd6bb825f55" -> "sha256:d83a205ac1d8639b99b0b3d41f77d487be02bdbec90af991825823dfed633090" [label=""];
  "sha256:d83a205ac1d8639b99b0b3d41f77d487be02bdbec90af991825823dfed633090" -> "sha256:25eb1873f78875ff90a0d996693f0a69a393dfc9eab7fc13f7cc3c2150777185" [label=""];
  "sha256:16a2a79be5b18b5fc04a64546bc1435d8fbfa7b61bcbe0ccbdeb8b43c446c372" -> "sha256:25eb1873f78875ff90a0d996693f0a69a393dfc9eab7fc13f7cc3c2150777185" [label=""];
  "sha256:25eb1873f78875ff90a0d996693f0a69a393dfc9eab7fc13f7cc3c2150777185" -> "sha256:1d122b1729a89cef3a67121ce34ab774d1ef4504eec09b98f5fbce9448ddb019" [label=""];
  "sha256:1d122b1729a89cef3a67121ce34ab774d1ef4504eec09b98f5fbce9448ddb019" -> "sha256:826daa832b4bbea487c8e8717817371772a14a20e0bdecd42a60e3c2ef26efa1" [label=""];
  "sha256:16a2a79be5b18b5fc04a64546bc1435d8fbfa7b61bcbe0ccbdeb8b43c446c372" -> "sha256:826daa832b4bbea487c8e8717817371772a14a20e0bdecd42a60e3c2ef26efa1" [label=""];
  "sha256:826daa832b4bbea487c8e8717817371772a14a20e0bdecd42a60e3c2ef26efa1" -> "sha256:b3d626ed996a1b40171fdd743a49ab36009e3c8daa8d50d88164129d4e8149b0" [label=""];
  "sha256:b3d626ed996a1b40171fdd743a49ab36009e3c8daa8d50d88164129d4e8149b0" -> "sha256:f7401530458d635bddcaefbf5426bfb1d396471372cbd6fa2dc7fd6d77b9afc5" [label=""];
}

