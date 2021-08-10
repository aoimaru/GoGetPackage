[app/sources/365803607.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:a03f8894e46aa8ca292b30e3513e9ce12dfeded662eab6c01c8144e8fbce63d2" [label="/bin/sh -c set -o xtrace     && sed -i 's,^deb-src,# no src # &,; s,http://archive.ubuntu.com/ubuntu/,mirror://mirrors.ubuntu.com/mirrors.txt,' /etc/apt/sources.list     && apt-get update     && apt-get install -y squid3" shape="box"];
  "sha256:2153f62c73d93b96219d0cdb4fe35cec0c771b8a46b7ddf3312d8b71aec41477" [label="local://context" shape="ellipse"];
  "sha256:04f8d3f5e51bdd5b34384d74f38bca526736f22bf40ce5463af879c14cb6118c" [label="copy{src=/squid-?.conf, dest=/etc/squid3/},copy{src=/basic.passwd, dest=/etc/squid3/},copy{src=/digest.passwd, dest=/etc/squid3/}" shape="note"];
  "sha256:e0df8e77fd2d69526f9be95261b5e087443accce2cefb4776c6167078868a1a4" [label="sha256:e0df8e77fd2d69526f9be95261b5e087443accce2cefb4776c6167078868a1a4" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:a03f8894e46aa8ca292b30e3513e9ce12dfeded662eab6c01c8144e8fbce63d2" [label=""];
  "sha256:a03f8894e46aa8ca292b30e3513e9ce12dfeded662eab6c01c8144e8fbce63d2" -> "sha256:04f8d3f5e51bdd5b34384d74f38bca526736f22bf40ce5463af879c14cb6118c" [label=""];
  "sha256:2153f62c73d93b96219d0cdb4fe35cec0c771b8a46b7ddf3312d8b71aec41477" -> "sha256:04f8d3f5e51bdd5b34384d74f38bca526736f22bf40ce5463af879c14cb6118c" [label=""];
  "sha256:04f8d3f5e51bdd5b34384d74f38bca526736f22bf40ce5463af879c14cb6118c" -> "sha256:e0df8e77fd2d69526f9be95261b5e087443accce2cefb4776c6167078868a1a4" [label=""];
}

