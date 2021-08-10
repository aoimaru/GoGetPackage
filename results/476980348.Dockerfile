[app/sources/476980348.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:a91fff7da8c8ca811e0662bf979e7423c683042c79716378985a11c8edd53d7f" [label="/bin/sh -c echo \"==> Install curl and helper tools...\"  &&     apt-get update                      &&     apt-get install -y  curl make gcc   &&             echo \"==> Download, compile, and install...\"  &&     curl -L $TARBALL | tar zxv  &&     cd redis-$VER               &&     make                        &&     make install                &&             echo \"==> Configure for Dockerized version of Redis...\"     &&     mkdir -p /etc/redis                                         &&     cp -f *.conf /etc/redis                                     &&             echo \"==> Clean up...\"  &&     apt-get remove -y --auto-remove curl make gcc  &&     apt-get clean                                  &&     rm -rf /var/lib/apt/lists/*  /redis-$VER" shape="box"];
  "sha256:0a99e79e4b1eb3cdeeb5a6123a27ad1b430929707ad02b805cec5f9e2f7ffec5" [label="sha256:0a99e79e4b1eb3cdeeb5a6123a27ad1b430929707ad02b805cec5f9e2f7ffec5" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:a91fff7da8c8ca811e0662bf979e7423c683042c79716378985a11c8edd53d7f" [label=""];
  "sha256:a91fff7da8c8ca811e0662bf979e7423c683042c79716378985a11c8edd53d7f" -> "sha256:0a99e79e4b1eb3cdeeb5a6123a27ad1b430929707ad02b805cec5f9e2f7ffec5" [label=""];
}

