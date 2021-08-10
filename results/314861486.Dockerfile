[app/sources/314861486.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:220b386419dfe460c9591c55ec91df5af10d98b59b6573c47abb5fc4c4c43215" [label="/bin/sh -c apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 5072E1F5  && echo 'deb http://repo.mysql.com/apt/debian/ jessie mysql-5.7' > /etc/apt/sources.list.d/mysql.list  && apt-get update  && DEBIAN_FRONTEND=noninteractive     apt-get install -y --no-install-recommends       bzip2       libmysqlclient18       mysql-client       mysql-server  && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:b0b436621416f47ead97d91ef24a63d51800c0075922d3083186f8eb5f02d103" [label="local://context" shape="ellipse"];
  "sha256:324951b3c06bc957f0accb9a86f462bdd4142e4b212cf7316bc80364af77cc99" [label="copy{src=/lite/vt, dest=/vt}" shape="note"];
  "sha256:7752d092adb08ad4de0743e9138171dae0d1f4a0a391927553236740d3ab4c8b" [label="/bin/sh -c groupadd -r vitess && useradd -r -g vitess vitess &&     mkdir -p /vt/vtdataroot && chown -R vitess:vitess /vt" shape="box"];
  "sha256:a4a8479fde76c2f54faea41bb785d25ad510f0a2ca30167fb388284fed808124" [label="sha256:a4a8479fde76c2f54faea41bb785d25ad510f0a2ca30167fb388284fed808124" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:220b386419dfe460c9591c55ec91df5af10d98b59b6573c47abb5fc4c4c43215" [label=""];
  "sha256:220b386419dfe460c9591c55ec91df5af10d98b59b6573c47abb5fc4c4c43215" -> "sha256:324951b3c06bc957f0accb9a86f462bdd4142e4b212cf7316bc80364af77cc99" [label=""];
  "sha256:b0b436621416f47ead97d91ef24a63d51800c0075922d3083186f8eb5f02d103" -> "sha256:324951b3c06bc957f0accb9a86f462bdd4142e4b212cf7316bc80364af77cc99" [label=""];
  "sha256:324951b3c06bc957f0accb9a86f462bdd4142e4b212cf7316bc80364af77cc99" -> "sha256:7752d092adb08ad4de0743e9138171dae0d1f4a0a391927553236740d3ab4c8b" [label=""];
  "sha256:7752d092adb08ad4de0743e9138171dae0d1f4a0a391927553236740d3ab4c8b" -> "sha256:a4a8479fde76c2f54faea41bb785d25ad510f0a2ca30167fb388284fed808124" [label=""];
}

