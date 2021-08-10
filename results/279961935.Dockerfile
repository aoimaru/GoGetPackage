[app/sources/279961935.Dockerfile]
digraph {
  "sha256:d57fc12b45bc196776704fefb0ea5227d6ca0304c839ef52f4d9f02ee03ccc0b" [label="docker-image://docker.io/library/node:11" shape="ellipse"];
  "sha256:e0d2841f60b8ccd0efe32775601ac33d72fe9ab9f2d1bad322a7e1f14c75ce97" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:eb22cc70c5dac9a8b1bdcbca10b1c5a97c70d1a0896d76854fce5ea78e24dbce" [label="/bin/sh -c export DEBIAN_FRONTEND=noninteractive     && apt-get update -y     && apt-get upgrade -y     && apt-get install -y               abcm2ps               ca-certificates               cm-super               curl               fontconfig               fonts-liberation               git               graphviz               imagemagick               inotify-tools               latex-xcolor               make               python-pygraphviz               python3               texlive-bibtex-extra               texlive-fonts-extra               texlive-lang-all               texlive-latex-base               texlive-latex-extra               texlive-math-extra               texlive-xetex               wget     && apt-get clean -y     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:20eb7fd7fac7d0cf8479c6ff15ee63044c3ee8d0e6831a303fd38748ca2ec0a9" [label="local://context" shape="ellipse"];
  "sha256:3e3e7bd3edf29a5ce43ca50d77cd25ac98c5b0539718ce6dc6415c3d048a131c" [label="copy{src=/vendors/pandoc-2.6-1-amd64.deb, dest=/pandoc.deb}" shape="note"];
  "sha256:ab294c5ec94c754c2f3bf2d7fba0ef1aa424627c94b7909b9ad7ed5eac4f3d20" [label="/bin/sh -c export DEBIAN_FRONTEND=noninteractive     && dpkg -i /pandoc.deb     && rm /pandoc.deb" shape="box"];
  "sha256:cc63e19b40ecbabfea3784cd2617728553559cda17c797d4574b100711348558" [label="/bin/sh -c git clone https://github.com/jgm/pandocfilters.git /pandocfilters     && cd /pandocfilters     && python setup.py install     && python3 setup.py install     && cp examples/*.py /usr/bin     && ls examples/*.py > /installed-pandocfilters.txt     && rm -rf /pandocfilters" shape="box"];
  "sha256:072ea063dbd1444ba7162ba0ec5a606c0f0efa45c8ba79a573b4a0e1ec4de813" [label="copy{src=/vendors/git-diff.py, dest=/usr/bin/git-diff.py}" shape="note"];
  "sha256:bf8c9a0fa7a3221c6e7b3bb5560b0de9837bb5f63deb97f3bea53b18aee4a2cc" [label="/bin/sh -c echo \"examples/git-diff.py\" >> /installed-pandocfilters.txt" shape="box"];
  "sha256:d6acca6447b4f40a5212c4732a08af14608dd5bfcf0625fc648950606f89b6ea" [label="/bin/sh -c sed -i 's#examples#/usr/bin#' /installed-pandocfilters.txt" shape="box"];
  "sha256:5b6f7505bb5f97ae383ba80e5af1f94c6d9780a4011492b4153b19546a4dc950" [label="copy{src=/package.json, dest=/usr/src/app/}" shape="note"];
  "sha256:3a83deeb94d7ca2763ecc485457af735b803e80157fe3afbdae085a4f2f87406" [label="/bin/sh -c npm install" shape="box"];
  "sha256:1b195c32b08151ed103d3a0fb91b4363e784d5ece1a680816997eec601d21462" [label="copy{src=/src, dest=/usr/src/app/src}" shape="note"];
  "sha256:961fc11e0bda6c00d1ac034705f5d72087dc2cc244ce38ab8cdbebebef511069" [label="sha256:961fc11e0bda6c00d1ac034705f5d72087dc2cc244ce38ab8cdbebebef511069" shape="plaintext"];
  "sha256:d57fc12b45bc196776704fefb0ea5227d6ca0304c839ef52f4d9f02ee03ccc0b" -> "sha256:e0d2841f60b8ccd0efe32775601ac33d72fe9ab9f2d1bad322a7e1f14c75ce97" [label=""];
  "sha256:e0d2841f60b8ccd0efe32775601ac33d72fe9ab9f2d1bad322a7e1f14c75ce97" -> "sha256:eb22cc70c5dac9a8b1bdcbca10b1c5a97c70d1a0896d76854fce5ea78e24dbce" [label=""];
  "sha256:eb22cc70c5dac9a8b1bdcbca10b1c5a97c70d1a0896d76854fce5ea78e24dbce" -> "sha256:3e3e7bd3edf29a5ce43ca50d77cd25ac98c5b0539718ce6dc6415c3d048a131c" [label=""];
  "sha256:20eb7fd7fac7d0cf8479c6ff15ee63044c3ee8d0e6831a303fd38748ca2ec0a9" -> "sha256:3e3e7bd3edf29a5ce43ca50d77cd25ac98c5b0539718ce6dc6415c3d048a131c" [label=""];
  "sha256:3e3e7bd3edf29a5ce43ca50d77cd25ac98c5b0539718ce6dc6415c3d048a131c" -> "sha256:ab294c5ec94c754c2f3bf2d7fba0ef1aa424627c94b7909b9ad7ed5eac4f3d20" [label=""];
  "sha256:ab294c5ec94c754c2f3bf2d7fba0ef1aa424627c94b7909b9ad7ed5eac4f3d20" -> "sha256:cc63e19b40ecbabfea3784cd2617728553559cda17c797d4574b100711348558" [label=""];
  "sha256:cc63e19b40ecbabfea3784cd2617728553559cda17c797d4574b100711348558" -> "sha256:072ea063dbd1444ba7162ba0ec5a606c0f0efa45c8ba79a573b4a0e1ec4de813" [label=""];
  "sha256:20eb7fd7fac7d0cf8479c6ff15ee63044c3ee8d0e6831a303fd38748ca2ec0a9" -> "sha256:072ea063dbd1444ba7162ba0ec5a606c0f0efa45c8ba79a573b4a0e1ec4de813" [label=""];
  "sha256:072ea063dbd1444ba7162ba0ec5a606c0f0efa45c8ba79a573b4a0e1ec4de813" -> "sha256:bf8c9a0fa7a3221c6e7b3bb5560b0de9837bb5f63deb97f3bea53b18aee4a2cc" [label=""];
  "sha256:bf8c9a0fa7a3221c6e7b3bb5560b0de9837bb5f63deb97f3bea53b18aee4a2cc" -> "sha256:d6acca6447b4f40a5212c4732a08af14608dd5bfcf0625fc648950606f89b6ea" [label=""];
  "sha256:d6acca6447b4f40a5212c4732a08af14608dd5bfcf0625fc648950606f89b6ea" -> "sha256:5b6f7505bb5f97ae383ba80e5af1f94c6d9780a4011492b4153b19546a4dc950" [label=""];
  "sha256:20eb7fd7fac7d0cf8479c6ff15ee63044c3ee8d0e6831a303fd38748ca2ec0a9" -> "sha256:5b6f7505bb5f97ae383ba80e5af1f94c6d9780a4011492b4153b19546a4dc950" [label=""];
  "sha256:5b6f7505bb5f97ae383ba80e5af1f94c6d9780a4011492b4153b19546a4dc950" -> "sha256:3a83deeb94d7ca2763ecc485457af735b803e80157fe3afbdae085a4f2f87406" [label=""];
  "sha256:3a83deeb94d7ca2763ecc485457af735b803e80157fe3afbdae085a4f2f87406" -> "sha256:1b195c32b08151ed103d3a0fb91b4363e784d5ece1a680816997eec601d21462" [label=""];
  "sha256:20eb7fd7fac7d0cf8479c6ff15ee63044c3ee8d0e6831a303fd38748ca2ec0a9" -> "sha256:1b195c32b08151ed103d3a0fb91b4363e784d5ece1a680816997eec601d21462" [label=""];
  "sha256:1b195c32b08151ed103d3a0fb91b4363e784d5ece1a680816997eec601d21462" -> "sha256:961fc11e0bda6c00d1ac034705f5d72087dc2cc244ce38ab8cdbebebef511069" [label=""];
}

