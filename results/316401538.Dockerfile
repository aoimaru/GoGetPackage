[app/sources/316401538.Dockerfile]
digraph {
  "sha256:159b3ddb02fb7bc894c02d3e674efb75bb8c61a426f3063835660013fdbf62dc" [label="local://context" shape="ellipse"];
  "sha256:bfbd10bfdc6ca3f72d2121a2b9865f57dee8b672c449f7092dd230123e47feed" [label="docker-image://docker.io/library/python:2.7-slim-jessie" shape="ellipse"];
  "sha256:8556dcc34b9f56998cb637ab4a55499f42bd6023b51e16eea68fa5f013427e5a" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\twget patch \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:7c8207d7019481d1ecaa222b4e7404ee8c331835b05856354fee4406b5bdeea9" [label="/bin/sh -c pip2 install apache-beam[gcp]==2.10.0" shape="box"];
  "sha256:679733fe9ba92edcdafd8aa472c79093d114de3fd1f01f0600601a6381f41e37" [label="copy{src=/build, dest=/ml}" shape="note"];
  "sha256:dae4a171f902e980461dd70f5403f9efb6fd1fc798dd6f4fdee12410d8231703" [label="mkdir{path=/ml}" shape="note"];
  "sha256:af5c08fac6a02a040419e4da3cf044ecb36be01f7bfdb3fb3549a3ca7e0c4fd7" [label="/bin/sh -c pip install ." shape="box"];
  "sha256:4fc657133632e9e677716a7e9894ec4dd7677ec4d2b5392d780258ea55e006f2" [label="/bin/sh -c mkdir /usr/licenses &&     /ml/license.sh /ml/third_party_licenses.csv /usr/licenses" shape="box"];
  "sha256:9dbccf430f3706c0f6023dd9e82376054a76db4fbac56873f12c46140fd01d25" [label="/bin/sh -c patch /usr/local/lib/python2.7/site-packages/googleapiclient/http.py < /ml/patches/http.patch" shape="box"];
  "sha256:71882d36df37e8ac054f47fa0101f81d92be8bd042187ce21b8a190250936277" [label="sha256:71882d36df37e8ac054f47fa0101f81d92be8bd042187ce21b8a190250936277" shape="plaintext"];
  "sha256:bfbd10bfdc6ca3f72d2121a2b9865f57dee8b672c449f7092dd230123e47feed" -> "sha256:8556dcc34b9f56998cb637ab4a55499f42bd6023b51e16eea68fa5f013427e5a" [label=""];
  "sha256:8556dcc34b9f56998cb637ab4a55499f42bd6023b51e16eea68fa5f013427e5a" -> "sha256:7c8207d7019481d1ecaa222b4e7404ee8c331835b05856354fee4406b5bdeea9" [label=""];
  "sha256:7c8207d7019481d1ecaa222b4e7404ee8c331835b05856354fee4406b5bdeea9" -> "sha256:679733fe9ba92edcdafd8aa472c79093d114de3fd1f01f0600601a6381f41e37" [label=""];
  "sha256:159b3ddb02fb7bc894c02d3e674efb75bb8c61a426f3063835660013fdbf62dc" -> "sha256:679733fe9ba92edcdafd8aa472c79093d114de3fd1f01f0600601a6381f41e37" [label=""];
  "sha256:679733fe9ba92edcdafd8aa472c79093d114de3fd1f01f0600601a6381f41e37" -> "sha256:dae4a171f902e980461dd70f5403f9efb6fd1fc798dd6f4fdee12410d8231703" [label=""];
  "sha256:dae4a171f902e980461dd70f5403f9efb6fd1fc798dd6f4fdee12410d8231703" -> "sha256:af5c08fac6a02a040419e4da3cf044ecb36be01f7bfdb3fb3549a3ca7e0c4fd7" [label=""];
  "sha256:af5c08fac6a02a040419e4da3cf044ecb36be01f7bfdb3fb3549a3ca7e0c4fd7" -> "sha256:4fc657133632e9e677716a7e9894ec4dd7677ec4d2b5392d780258ea55e006f2" [label=""];
  "sha256:4fc657133632e9e677716a7e9894ec4dd7677ec4d2b5392d780258ea55e006f2" -> "sha256:9dbccf430f3706c0f6023dd9e82376054a76db4fbac56873f12c46140fd01d25" [label=""];
  "sha256:9dbccf430f3706c0f6023dd9e82376054a76db4fbac56873f12c46140fd01d25" -> "sha256:71882d36df37e8ac054f47fa0101f81d92be8bd042187ce21b8a190250936277" [label=""];
}

