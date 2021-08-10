[app/sources/469464145.Dockerfile]
digraph {
  "sha256:58b45e2b7512199302a29c5729cd615d8a5201f2174984bf55db19aabd00d010" [label="docker-image://docker.io/brimstone/ubuntu:14.04" shape="ellipse"];
  "sha256:9a00586b552723cec74c1684544004c705ffba0783259b61ff635db0e85f17c3" [label="/bin/sh -c apt-get update \t&& dpkg -l | awk '/^ii/ {print $2}' > /tmp/dpkg.clean     && apt-get install -y --no-install-recommends git golang ca-certificates     && apt-get clean     && rm -rf /var/lib/apt/lists \t&& go get -v github.com/brimstone/consuldock     && mv $GOPATH/bin/consuldock /usr/local/bin/consuldock \t&& dpkg -l | awk '/^ii/ {print $2}' > /tmp/dpkg.dirty \t&& apt-get remove --purge -y $(diff /tmp/dpkg.clean /tmp/dpkg.dirty | awk '/^>/ {print $2}') \t&& rm /tmp/dpkg.* \t&& rm -rf $GOPATH" shape="box"];
  "sha256:77ac0e5d43a7efca57f360fac81a2e6ecc05868d96c16b362f0319dac3702c35" [label="sha256:77ac0e5d43a7efca57f360fac81a2e6ecc05868d96c16b362f0319dac3702c35" shape="plaintext"];
  "sha256:58b45e2b7512199302a29c5729cd615d8a5201f2174984bf55db19aabd00d010" -> "sha256:9a00586b552723cec74c1684544004c705ffba0783259b61ff635db0e85f17c3" [label=""];
  "sha256:9a00586b552723cec74c1684544004c705ffba0783259b61ff635db0e85f17c3" -> "sha256:77ac0e5d43a7efca57f360fac81a2e6ecc05868d96c16b362f0319dac3702c35" [label=""];
}

