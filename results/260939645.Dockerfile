[app/sources/260939645.Dockerfile]
digraph {
  "sha256:d664fb6ca96201aa38770557cab05c1caa37554aa77d2d1d12c130820f2601d1" [label="docker-image://docker.io/f69m/ubuntu32:xenial" shape="ellipse"];
  "sha256:9aaa66f66ff0a11bb7e0d937ba234e8b4c5c713f772109300cd91ccdb1b464ab" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:1a94c421a073ada9e4d17a21f6194ac735adfd64c72546ec4d6008d2791dff79" [label="/bin/sh -c apt-get install -y build-essential debhelper libhttp-parser-dev liblz4-dev libnatpmp-dev dh-systemd ruby-ronn g++ make devscripts clang-3.8" shape="box"];
  "sha256:700d6a45a51cd58fac5533f96ef7433d9cc26040eb0ee5c29568160be11201bf" [label="/bin/sh -c rm -f /usr/bin/clang++ /usr/bin/clang" shape="box"];
  "sha256:ec6f241f72fbd49682ba8c87ef535b9ab9b997290b903fd3c704d1ea9cc9605a" [label="/bin/sh -c dpkg --purge libhttp-parser-dev" shape="box"];
  "sha256:af4ca5fa5303c9e7e00e9d379ba23df2fb50be2104e89711911029c2238be0ac" [label="local://context" shape="ellipse"];
  "sha256:a8453270920ecc94157f36c8c70a9ff75b7d65e56fca377beec863a7d01a9a06" [label="copy{src=/zt1-src.tar.gz, dest=/}" shape="note"];
  "sha256:a4fc50d686ee8c89072c58bdd68973cf720cfcd8012ce29169ab0f29ec27e1ce" [label="sha256:a4fc50d686ee8c89072c58bdd68973cf720cfcd8012ce29169ab0f29ec27e1ce" shape="plaintext"];
  "sha256:d664fb6ca96201aa38770557cab05c1caa37554aa77d2d1d12c130820f2601d1" -> "sha256:9aaa66f66ff0a11bb7e0d937ba234e8b4c5c713f772109300cd91ccdb1b464ab" [label=""];
  "sha256:9aaa66f66ff0a11bb7e0d937ba234e8b4c5c713f772109300cd91ccdb1b464ab" -> "sha256:1a94c421a073ada9e4d17a21f6194ac735adfd64c72546ec4d6008d2791dff79" [label=""];
  "sha256:1a94c421a073ada9e4d17a21f6194ac735adfd64c72546ec4d6008d2791dff79" -> "sha256:700d6a45a51cd58fac5533f96ef7433d9cc26040eb0ee5c29568160be11201bf" [label=""];
  "sha256:700d6a45a51cd58fac5533f96ef7433d9cc26040eb0ee5c29568160be11201bf" -> "sha256:ec6f241f72fbd49682ba8c87ef535b9ab9b997290b903fd3c704d1ea9cc9605a" [label=""];
  "sha256:ec6f241f72fbd49682ba8c87ef535b9ab9b997290b903fd3c704d1ea9cc9605a" -> "sha256:a8453270920ecc94157f36c8c70a9ff75b7d65e56fca377beec863a7d01a9a06" [label=""];
  "sha256:af4ca5fa5303c9e7e00e9d379ba23df2fb50be2104e89711911029c2238be0ac" -> "sha256:a8453270920ecc94157f36c8c70a9ff75b7d65e56fca377beec863a7d01a9a06" [label=""];
  "sha256:a8453270920ecc94157f36c8c70a9ff75b7d65e56fca377beec863a7d01a9a06" -> "sha256:a4fc50d686ee8c89072c58bdd68973cf720cfcd8012ce29169ab0f29ec27e1ce" [label=""];
}

