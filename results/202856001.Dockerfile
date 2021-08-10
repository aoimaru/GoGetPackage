[app/sources/202856001.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:56a204b2842e96ad838df42dc903cdecc4cdb590f0c19d859637030d89095c23" [label="/bin/sh -c apt-get update && apt-get install -y   wget ca-certificates git mercurial bzr   --no-install-recommends   && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:0e140190ba563eaea9fcea084ca5cce4da8860e9ddab2eb862418e2c248f4718" [label="/bin/sh -c wget https://golang.org/dl/go$GOLANG_VERSION.linux-amd64.tar.gz --quiet &&   tar -C /usr/local -xzf go$GOLANG_VERSION.linux-amd64.tar.gz &&   rm go${GOLANG_VERSION}.linux-amd64.tar.gz" shape="box"];
  "sha256:87a4e06ce44fcc98404324ffec9128a9f6106dfc9ce1d2c7bfd6b2fc3ca17e3b" [label="/bin/sh -c go get github.com/axw/gocov/gocov github.com/mattn/goveralls github.com/golang/lint/golint" shape="box"];
  "sha256:21489233fce2032484e9f9999d46d429c4b03dc8d020028e19a48075c681a2f2" [label="sha256:21489233fce2032484e9f9999d46d429c4b03dc8d020028e19a48075c681a2f2" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:56a204b2842e96ad838df42dc903cdecc4cdb590f0c19d859637030d89095c23" [label=""];
  "sha256:56a204b2842e96ad838df42dc903cdecc4cdb590f0c19d859637030d89095c23" -> "sha256:0e140190ba563eaea9fcea084ca5cce4da8860e9ddab2eb862418e2c248f4718" [label=""];
  "sha256:0e140190ba563eaea9fcea084ca5cce4da8860e9ddab2eb862418e2c248f4718" -> "sha256:87a4e06ce44fcc98404324ffec9128a9f6106dfc9ce1d2c7bfd6b2fc3ca17e3b" [label=""];
  "sha256:87a4e06ce44fcc98404324ffec9128a9f6106dfc9ce1d2c7bfd6b2fc3ca17e3b" -> "sha256:21489233fce2032484e9f9999d46d429c4b03dc8d020028e19a48075c681a2f2" [label=""];
}

