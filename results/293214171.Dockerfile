[app/sources/293214171.Dockerfile]
digraph {
  "sha256:d20029e6da5ee62f143d53bd3ac8bc169940d82a921fe26eaaf03f2977c65579" [label="docker-image://docker.io/library/ubuntu:bionic" shape="ellipse"];
  "sha256:a876bb383e4cf9052c7bc4ae48cd6ceb47f5bb26d3b402b978f336cf2c1ea25f" [label="/bin/sh -c apt-get update && apt-get upgrade -y && apt-get install -y vim git build-essential python3.6-dev python3.6 python3-pip libpcap-dev graphviz python3-pyroute2 python3-scapy libgmp3-dev" shape="box"];
  "sha256:e2d29909e5551f6336cb4308be9b3ce36a883b6caf31134388c7be5d59a0e5ee" [label="/bin/sh -c pip3 install sphinx pylint sphinx_rtd_theme pcapy gmpy pyroute2" shape="box"];
  "sha256:730028289dceee3e76ac56d99c460d239d887829d1f3c5903c6cf421c8923408" [label="mkdir{path=/pw}" shape="note"];
  "sha256:8b3010521caf27ec47d91b827fa368bb0d8acba50e7cde2b8847d6c967b788e7" [label="local://context" shape="ellipse"];
  "sha256:c45a2b4dfa3a8c71302e4a82bad935484362d520f3fc6e274d8d0714450df2da" [label="copy{src=/, dest=/pw/}" shape="note"];
  "sha256:e1e5c28b6fc8047743d464e59c6b7b0e5b9e028031e32572e7b4e134cfa32c31" [label="mkdir{path=/pw/packetweaver/doc}" shape="note"];
  "sha256:f051a554ee04162dda00a2aba94e4d15fb97372ca5892f30eafed1b6e1f587a2" [label="/bin/sh -c make all" shape="box"];
  "sha256:32a2f459b085e04c9cfee9625a60fff36d1bfcccb5429444da5aea40f153c540" [label="mkdir{path=/pw}" shape="note"];
  "sha256:f296021edbefb758a954085af458d72fede5b704be2174898f669990e7ef46f1" [label="sha256:f296021edbefb758a954085af458d72fede5b704be2174898f669990e7ef46f1" shape="plaintext"];
  "sha256:d20029e6da5ee62f143d53bd3ac8bc169940d82a921fe26eaaf03f2977c65579" -> "sha256:a876bb383e4cf9052c7bc4ae48cd6ceb47f5bb26d3b402b978f336cf2c1ea25f" [label=""];
  "sha256:a876bb383e4cf9052c7bc4ae48cd6ceb47f5bb26d3b402b978f336cf2c1ea25f" -> "sha256:e2d29909e5551f6336cb4308be9b3ce36a883b6caf31134388c7be5d59a0e5ee" [label=""];
  "sha256:e2d29909e5551f6336cb4308be9b3ce36a883b6caf31134388c7be5d59a0e5ee" -> "sha256:730028289dceee3e76ac56d99c460d239d887829d1f3c5903c6cf421c8923408" [label=""];
  "sha256:730028289dceee3e76ac56d99c460d239d887829d1f3c5903c6cf421c8923408" -> "sha256:c45a2b4dfa3a8c71302e4a82bad935484362d520f3fc6e274d8d0714450df2da" [label=""];
  "sha256:8b3010521caf27ec47d91b827fa368bb0d8acba50e7cde2b8847d6c967b788e7" -> "sha256:c45a2b4dfa3a8c71302e4a82bad935484362d520f3fc6e274d8d0714450df2da" [label=""];
  "sha256:c45a2b4dfa3a8c71302e4a82bad935484362d520f3fc6e274d8d0714450df2da" -> "sha256:e1e5c28b6fc8047743d464e59c6b7b0e5b9e028031e32572e7b4e134cfa32c31" [label=""];
  "sha256:e1e5c28b6fc8047743d464e59c6b7b0e5b9e028031e32572e7b4e134cfa32c31" -> "sha256:f051a554ee04162dda00a2aba94e4d15fb97372ca5892f30eafed1b6e1f587a2" [label=""];
  "sha256:f051a554ee04162dda00a2aba94e4d15fb97372ca5892f30eafed1b6e1f587a2" -> "sha256:32a2f459b085e04c9cfee9625a60fff36d1bfcccb5429444da5aea40f153c540" [label=""];
  "sha256:32a2f459b085e04c9cfee9625a60fff36d1bfcccb5429444da5aea40f153c540" -> "sha256:f296021edbefb758a954085af458d72fede5b704be2174898f669990e7ef46f1" [label=""];
}

