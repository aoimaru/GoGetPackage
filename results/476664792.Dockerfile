[app/sources/476664792.Dockerfile]
digraph {
  "sha256:18b979bc2ad3d1930bf7e527388663f91b5b7809d65452ec73ddc487b0a3535f" [label="docker-image://docker.io/coinvault/client-base:latest" shape="ellipse"];
  "sha256:b9fc99d1a2445f64722b62fb0a04ba4391e508dfe3b62660b171ae3e3bff5abd" [label="/bin/sh -c apt-get update \t&& apt-get install -y git \t&& apt-get install -y libssl-dev libdb-dev libdb++-dev libboost-all-dev libqrencode-dev \t&& apt-get install -y qt-sdk qt4-default \t&& apt-get install -y libcurl3-dev \t&& apt-get install -y libzip-dev" shape="box"];
  "sha256:d952185029e3c95c8bb10c0f417221798b067adfdd92cad7b4a40da4f0711f05" [label="/bin/sh -c apt-get update     && cd ~ \t&& git clone https://github.com/dangershony/SahamDev.git" shape="box"];
  "sha256:a5723bb979e1888a1a856051b479bcb939281cf55c3637aa6e0f89f207adebfc" [label="/bin/sh -c cd ~/SahamDev/src \t&& mkdir -p obj \t&& chmod 755 leveldb/build_detect_platform \t&& make -f makefile.unix USE_UPNP=-" shape="box"];
  "sha256:67a1a8e4650a45ad7c7732e18eefa0315dc0c8ea01a748dd4ff977f98cbb434b" [label="/bin/sh -c cd ~/SahamDev/src     && strip sahamd \t&& install -m 755 sahamd /usr/local/bin" shape="box"];
  "sha256:01aeac81ce8ccbfe5a032b50a2e0881532851a60b488668436ed203ce58e1543" [label="/bin/sh -c apt-get purge -y --auto-remove git   && rm -r ~/SahamDev" shape="box"];
  "sha256:c9069aaedb70b470648374c775f3df85eb7f7aa4ecd2f0f2affa8773d9d79e53" [label="sha256:c9069aaedb70b470648374c775f3df85eb7f7aa4ecd2f0f2affa8773d9d79e53" shape="plaintext"];
  "sha256:18b979bc2ad3d1930bf7e527388663f91b5b7809d65452ec73ddc487b0a3535f" -> "sha256:b9fc99d1a2445f64722b62fb0a04ba4391e508dfe3b62660b171ae3e3bff5abd" [label=""];
  "sha256:b9fc99d1a2445f64722b62fb0a04ba4391e508dfe3b62660b171ae3e3bff5abd" -> "sha256:d952185029e3c95c8bb10c0f417221798b067adfdd92cad7b4a40da4f0711f05" [label=""];
  "sha256:d952185029e3c95c8bb10c0f417221798b067adfdd92cad7b4a40da4f0711f05" -> "sha256:a5723bb979e1888a1a856051b479bcb939281cf55c3637aa6e0f89f207adebfc" [label=""];
  "sha256:a5723bb979e1888a1a856051b479bcb939281cf55c3637aa6e0f89f207adebfc" -> "sha256:67a1a8e4650a45ad7c7732e18eefa0315dc0c8ea01a748dd4ff977f98cbb434b" [label=""];
  "sha256:67a1a8e4650a45ad7c7732e18eefa0315dc0c8ea01a748dd4ff977f98cbb434b" -> "sha256:01aeac81ce8ccbfe5a032b50a2e0881532851a60b488668436ed203ce58e1543" [label=""];
  "sha256:01aeac81ce8ccbfe5a032b50a2e0881532851a60b488668436ed203ce58e1543" -> "sha256:c9069aaedb70b470648374c775f3df85eb7f7aa4ecd2f0f2affa8773d9d79e53" [label=""];
}

