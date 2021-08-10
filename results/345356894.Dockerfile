[app/sources/345356894.Dockerfile]
digraph {
  "sha256:34f670d9bf3fa6ca6b28a30af4b370a396cdf77ca2ab0cc2d93f2fc98fbd46ef" [label="docker-image://docker.io/balenalib/i386-ubuntu:artful-run" shape="ellipse"];
  "sha256:9680f9cb5586bd55bd95522fbab4c7b2f93670403f87b4d405603da49d691087" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tless \t\tkmod \t\tnano \t\tnet-tools \t\tifupdown \t\tiputils-ping \t\ti2c-tools \t\tusbutils \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:53da5a20450035f441bffb46606d2ed1be793d398eb109018370fedc65b6220f" [label="sha256:53da5a20450035f441bffb46606d2ed1be793d398eb109018370fedc65b6220f" shape="plaintext"];
  "sha256:34f670d9bf3fa6ca6b28a30af4b370a396cdf77ca2ab0cc2d93f2fc98fbd46ef" -> "sha256:9680f9cb5586bd55bd95522fbab4c7b2f93670403f87b4d405603da49d691087" [label=""];
  "sha256:9680f9cb5586bd55bd95522fbab4c7b2f93670403f87b4d405603da49d691087" -> "sha256:53da5a20450035f441bffb46606d2ed1be793d398eb109018370fedc65b6220f" [label=""];
}

