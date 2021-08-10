[app/sources/137937403.Dockerfile]
digraph {
  "sha256:5535e7021e7e8ccd8fe3f4f699787e3aaf261a9661fc7016ed8e4d2bab93949c" [label="docker-image://docker.io/bobpace/devbox:latest" shape="ellipse"];
  "sha256:227f7aa82f5522024fc28e867beb70e041077965abdef2cf2304d361f3fc742d" [label="/bin/sh -c apt-key adv --keyserver keyserver.ubuntu.com --recv-keys F6F88286  && echo 'deb     http://ppa.launchpad.net/hvr/ghc/ubuntu trusty main' >> /etc/apt/sources.list.d/haskell.list  && echo 'deb-src http://ppa.launchpad.net/hvr/ghc/ubuntu trusty main' >> /etc/apt/sources.list.d/haskell.list" shape="box"];
  "sha256:e1bb52128226fc6aa175e98716f3a71a0399f00970d1f926e2d53d2249011b89" [label="/bin/sh -c apt-get update     && apt-get install ${OPTS_APT}     gcc     libc6     libc6-dev     libgmp10     libgmp-dev     libncursesw5     libtinfo5     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:be97f4cfafe0becc7257d0f781a5ba2162c25ca060138db32986931d6f90f1ad" [label="/bin/sh -c apt-get update     && apt-get install ${OPTS_APT} llvm     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:f53ca07fd0da083c8cf7725611fd99d98fafed43f490fb729953e74f6a2bd1b0" [label="/bin/sh -c apt-get update     && apt-get install ${OPTS_APT}     alex-\"${VERSION_ALEX}\"     cabal-install-\"${VERSION_CABAL}\"     happy-\"${VERSION_HAPPY}\"     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:74e8ee3b02277ea29e34d18945cf5c3af08b78dd511ea6e8d392f9430c2404ca" [label="/bin/sh -c apt-get update     && apt-get install ${OPTS_APT}     ghc-\"${VERSION_GHC}\"" shape="box"];
  "sha256:b2ff92501b42775debbe882214b3e4c0edca312c39ad9515a8feca73ffda38a3" [label="/bin/sh -c ( exec >> /etc/profile.d/haskell.sh && echo \"VERSION_ALEX=${VERSION_ALEX}\" && echo \"VERSION_CABAL=${VERSION_CABAL}\" && echo \"VERSION_HAPPY=${VERSION_HAPPY}\" && echo \"VERSION_GHC=${VERSION_GHC}\" && echo 'PATH=${HOME}/.cabal/bin:${PATH}'  )" shape="box"];
  "sha256:66b7bdd0de7524680f2659fd92471886a069cd233fd3563ed4c0a8b3ad42984d" [label="/bin/sh -c find /opt -maxdepth 3 -name bin -type d   -exec sh -c    'cd {} && ls .      | egrep -v ^.*\\-[.[:digit:]]+$      | xargs -I % ln -s `pwd`/% /usr/local/bin/%' \\;" shape="box"];
  "sha256:d46554b6172951f69eccd870846b51024a15abacceb81b4a424592a710d1e7b2" [label="sha256:d46554b6172951f69eccd870846b51024a15abacceb81b4a424592a710d1e7b2" shape="plaintext"];
  "sha256:5535e7021e7e8ccd8fe3f4f699787e3aaf261a9661fc7016ed8e4d2bab93949c" -> "sha256:227f7aa82f5522024fc28e867beb70e041077965abdef2cf2304d361f3fc742d" [label=""];
  "sha256:227f7aa82f5522024fc28e867beb70e041077965abdef2cf2304d361f3fc742d" -> "sha256:e1bb52128226fc6aa175e98716f3a71a0399f00970d1f926e2d53d2249011b89" [label=""];
  "sha256:e1bb52128226fc6aa175e98716f3a71a0399f00970d1f926e2d53d2249011b89" -> "sha256:be97f4cfafe0becc7257d0f781a5ba2162c25ca060138db32986931d6f90f1ad" [label=""];
  "sha256:be97f4cfafe0becc7257d0f781a5ba2162c25ca060138db32986931d6f90f1ad" -> "sha256:f53ca07fd0da083c8cf7725611fd99d98fafed43f490fb729953e74f6a2bd1b0" [label=""];
  "sha256:f53ca07fd0da083c8cf7725611fd99d98fafed43f490fb729953e74f6a2bd1b0" -> "sha256:74e8ee3b02277ea29e34d18945cf5c3af08b78dd511ea6e8d392f9430c2404ca" [label=""];
  "sha256:74e8ee3b02277ea29e34d18945cf5c3af08b78dd511ea6e8d392f9430c2404ca" -> "sha256:b2ff92501b42775debbe882214b3e4c0edca312c39ad9515a8feca73ffda38a3" [label=""];
  "sha256:b2ff92501b42775debbe882214b3e4c0edca312c39ad9515a8feca73ffda38a3" -> "sha256:66b7bdd0de7524680f2659fd92471886a069cd233fd3563ed4c0a8b3ad42984d" [label=""];
  "sha256:66b7bdd0de7524680f2659fd92471886a069cd233fd3563ed4c0a8b3ad42984d" -> "sha256:d46554b6172951f69eccd870846b51024a15abacceb81b4a424592a710d1e7b2" [label=""];
}

