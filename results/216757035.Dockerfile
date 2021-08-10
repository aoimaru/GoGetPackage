[app/sources/216757035.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:752946bed353a5268c4950cb92e5739513e5ea5b6b690fa3aa67690147cfaf01" [label="mkdir{path=/root}" shape="note"];
  "sha256:3718cf1fc31041c0207af816a3db79409988f427a8017a2bf35b5419c3dbf90c" [label="/bin/sh -c apt update -qy && apt -qy --no-install-recommends install     build-essential python-dev autotools-dev libicu-dev libbz2-dev unzip wget  && apt clean  && apt autoremove  && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:4e68846921eb5ee6559bfe922b225de14d901018f301d5d16675b03f248ffefc" [label="/bin/sh -c wget --no-check-certificate -O boost_1_55_0.tar.gz https://sourceforge.net/projects/boost/files/boost/1.55.0/boost_1_55_0.tar.gz/download  && tar -zxvf boost_1_55_0.tar.gz  && cd boost_1_55_0  && ./bootstrap.sh --prefix=/usr/local  && ./b2 install --prefix=/usr/local -j4  && ldconfig -v  && cd ..  && rm -rf boost*" shape="box"];
  "sha256:fa8232b83b517592fdc1d32186cba0c0f4d6e9aee8f4627eec227336a3ca96ec" [label="local://context" shape="ellipse"];
  "sha256:772a4612e035e026c54e69631c1ba6e24db399c50f1e00e012d48460dfe06250" [label="copy{src=/vnsRelease.zip, dest=/root/vnsRelease.zip}" shape="note"];
  "sha256:9c71bf46b0d6c5838ec268e485420bbea19a5006fee48c399e45bc2d26709fa2" [label="/bin/sh -c unzip vnsRelease.zip && rm vnsRelease.zip && mv ./gvns /usr/local/bin/ && rm -rf ./vns-install.txt" shape="box"];
  "sha256:55cc2d7107a115df3000c78e99455621460d4e29d1dadeb8892f66420e2164ee" [label="sha256:55cc2d7107a115df3000c78e99455621460d4e29d1dadeb8892f66420e2164ee" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:752946bed353a5268c4950cb92e5739513e5ea5b6b690fa3aa67690147cfaf01" [label=""];
  "sha256:752946bed353a5268c4950cb92e5739513e5ea5b6b690fa3aa67690147cfaf01" -> "sha256:3718cf1fc31041c0207af816a3db79409988f427a8017a2bf35b5419c3dbf90c" [label=""];
  "sha256:3718cf1fc31041c0207af816a3db79409988f427a8017a2bf35b5419c3dbf90c" -> "sha256:4e68846921eb5ee6559bfe922b225de14d901018f301d5d16675b03f248ffefc" [label=""];
  "sha256:4e68846921eb5ee6559bfe922b225de14d901018f301d5d16675b03f248ffefc" -> "sha256:772a4612e035e026c54e69631c1ba6e24db399c50f1e00e012d48460dfe06250" [label=""];
  "sha256:fa8232b83b517592fdc1d32186cba0c0f4d6e9aee8f4627eec227336a3ca96ec" -> "sha256:772a4612e035e026c54e69631c1ba6e24db399c50f1e00e012d48460dfe06250" [label=""];
  "sha256:772a4612e035e026c54e69631c1ba6e24db399c50f1e00e012d48460dfe06250" -> "sha256:9c71bf46b0d6c5838ec268e485420bbea19a5006fee48c399e45bc2d26709fa2" [label=""];
  "sha256:9c71bf46b0d6c5838ec268e485420bbea19a5006fee48c399e45bc2d26709fa2" -> "sha256:55cc2d7107a115df3000c78e99455621460d4e29d1dadeb8892f66420e2164ee" [label=""];
}

