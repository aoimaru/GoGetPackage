[app/sources/470028956.Dockerfile]
digraph {
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" [label="docker-image://docker.io/library/ubuntu:xenial" shape="ellipse"];
  "sha256:068c006a2e6d9829f0d1cabeac342d345d73b3936b30b54430d31e60be09287f" [label="/bin/sh -c apt-get update &&     apt-get install --yes --no-install-recommends       ca-certificates       curl       fuse       g++       gcc       git       iproute2       iputils-ping       less       libc6-dev       make       pkg-config       &&     apt-get clean" shape="box"];
  "sha256:de2b92b3a4a39ea4eeb938006164c1b117102dffd553ec6523bebca2b9ee46a2" [label="/bin/sh -c curl -fSLo golang.tar.gz \"https://golang.org/dl/go${GO_VERSION}.linux-amd64.tar.gz\" &&     tar -xzf golang.tar.gz -C /usr/local &&     rm golang.tar.gz" shape="box"];
  "sha256:ebee25047ca9e3083d3f1aa8131c9e0981ebd6ab9f5d9f08feb45c80fae98967" [label="/bin/sh -c curl -fSLo docker.tar.gz https://get.docker.com/builds/Linux/x86_64/docker-17.04.0-ce.tgz &&   tar -xzf docker.tar.gz -C /usr/local/bin --strip-components=1 docker/docker &&   rm docker.tar.gz" shape="box"];
  "sha256:bb865eacfab8f43dfc70848895bb032b6dd341b09e6ba73cbbe66f7fc730d835" [label="/bin/sh -c curl -fSLo /usr/local/bin/jq https://github.com/stedolan/jq/releases/download/jq-1.5/jq-linux64 &&     chmod +x /usr/local/bin/jq" shape="box"];
  "sha256:ad27ffe7fc96dd0b067b13f1c09e7c8b81b96949a90eb54faeb792bbe28ca521" [label="/bin/sh -c go get -u github.com/kardianos/govendor" shape="box"];
  "sha256:b861c1760644652cfc2281baabf1a78fae1ecd06638e026080f8e3f9b620261a" [label="local://context" shape="ellipse"];
  "sha256:8b421caf0536572a7dde961b6a29f3ac5cc234e07f2c29832d4406b5e2a92f90" [label="copy{src=/bashrc, dest=/root/.bashrc}" shape="note"];
  "sha256:43966c0aa8c5c608ba08dbb72ed68d765e8d17e28e3028eaa10c0807740a283b" [label="sha256:43966c0aa8c5c608ba08dbb72ed68d765e8d17e28e3028eaa10c0807740a283b" shape="plaintext"];
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" -> "sha256:068c006a2e6d9829f0d1cabeac342d345d73b3936b30b54430d31e60be09287f" [label=""];
  "sha256:068c006a2e6d9829f0d1cabeac342d345d73b3936b30b54430d31e60be09287f" -> "sha256:de2b92b3a4a39ea4eeb938006164c1b117102dffd553ec6523bebca2b9ee46a2" [label=""];
  "sha256:de2b92b3a4a39ea4eeb938006164c1b117102dffd553ec6523bebca2b9ee46a2" -> "sha256:ebee25047ca9e3083d3f1aa8131c9e0981ebd6ab9f5d9f08feb45c80fae98967" [label=""];
  "sha256:ebee25047ca9e3083d3f1aa8131c9e0981ebd6ab9f5d9f08feb45c80fae98967" -> "sha256:bb865eacfab8f43dfc70848895bb032b6dd341b09e6ba73cbbe66f7fc730d835" [label=""];
  "sha256:bb865eacfab8f43dfc70848895bb032b6dd341b09e6ba73cbbe66f7fc730d835" -> "sha256:ad27ffe7fc96dd0b067b13f1c09e7c8b81b96949a90eb54faeb792bbe28ca521" [label=""];
  "sha256:ad27ffe7fc96dd0b067b13f1c09e7c8b81b96949a90eb54faeb792bbe28ca521" -> "sha256:8b421caf0536572a7dde961b6a29f3ac5cc234e07f2c29832d4406b5e2a92f90" [label=""];
  "sha256:b861c1760644652cfc2281baabf1a78fae1ecd06638e026080f8e3f9b620261a" -> "sha256:8b421caf0536572a7dde961b6a29f3ac5cc234e07f2c29832d4406b5e2a92f90" [label=""];
  "sha256:8b421caf0536572a7dde961b6a29f3ac5cc234e07f2c29832d4406b5e2a92f90" -> "sha256:43966c0aa8c5c608ba08dbb72ed68d765e8d17e28e3028eaa10c0807740a283b" [label=""];
}
