[app/sources/334460235.Dockerfile]
digraph {
  "sha256:9f320b340763c8fae35c9dc98322bec4b0119087c71135c9244c6e8def8e44d5" [label="docker-image://docker.io/phusion/baseimage:0.10.0" shape="ellipse"];
  "sha256:19fbf79176767c0d2df0461fcbc094c4f86bf3f2dff48a94ad647afacedffc9b" [label="/bin/sh -c apt-add-repository -y ppa:bitcoin/bitcoin &&         add-apt-repository ppa:gophers/archive &&         echo 'deb http://ftp.debian.org/debian jessie-backports main' | tee /etc/apt/sources.list.d/jessie-backports.list &&         apt-key adv --recv-key --keyserver hkp://keyserver.ubuntu.com:80 8B48AD6246925553 &&         apt-get update &&         apt-get install -y --no-install-recommends bitcoind &&         apt-get install -y --no-install-recommends -t jessie-backports jq &&         rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:e87355b31827aaa59b8abc54b3e6c4d42afbd1b63de19798e2044b0c226f2895" [label="local://context" shape="ellipse"];
  "sha256:dd4792238041f5a21285f9576e5553ecdce7d519e6528f8ecefbcc89f1eaddf7" [label="copy{src=/container-files, dest=/}" shape="note"];
  "sha256:4d95cdf968c1d8fee0cbd6bdb467c00d5eaa14dd3e587448aa226f8a9e64a03c" [label="sha256:4d95cdf968c1d8fee0cbd6bdb467c00d5eaa14dd3e587448aa226f8a9e64a03c" shape="plaintext"];
  "sha256:9f320b340763c8fae35c9dc98322bec4b0119087c71135c9244c6e8def8e44d5" -> "sha256:19fbf79176767c0d2df0461fcbc094c4f86bf3f2dff48a94ad647afacedffc9b" [label=""];
  "sha256:19fbf79176767c0d2df0461fcbc094c4f86bf3f2dff48a94ad647afacedffc9b" -> "sha256:dd4792238041f5a21285f9576e5553ecdce7d519e6528f8ecefbcc89f1eaddf7" [label=""];
  "sha256:e87355b31827aaa59b8abc54b3e6c4d42afbd1b63de19798e2044b0c226f2895" -> "sha256:dd4792238041f5a21285f9576e5553ecdce7d519e6528f8ecefbcc89f1eaddf7" [label=""];
  "sha256:dd4792238041f5a21285f9576e5553ecdce7d519e6528f8ecefbcc89f1eaddf7" -> "sha256:4d95cdf968c1d8fee0cbd6bdb467c00d5eaa14dd3e587448aa226f8a9e64a03c" [label=""];
}

