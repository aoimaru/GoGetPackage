[app/sources/322215015.Dockerfile]
digraph {
  "sha256:7099b236a233d293f28975a322fb9cef52577a9880093081a1a148f8300b0cde" [label="docker-image://docker.io/daq/aardvark:latest" shape="ellipse"];
  "sha256:602d7ba1ffc9538ba8965033d65a6ad4542a340e5331ff9ec6d20929dd713335" [label="/bin/sh -c $AG update && $AG install openjdk-8-jre" shape="box"];
  "sha256:826716774a5b006db622c74fb2a2ee865eed50e2cc32e0c0278f6de8bd8fb9b3" [label="/bin/sh -c $AG update && $AG install openjdk-8-jdk git" shape="box"];
  "sha256:048d4f1254e0bf687994694202d7eb4fa0472c7bf8e7c11c0aaed050711bce76" [label="local://context" shape="ellipse"];
  "sha256:8676b8d2a7d4337a98d9c2bde56c6e1a4d2149280be12e6e0806fe397ddde94a" [label="copy{src=/subset/connection, dest=/}" shape="note"];
  "sha256:623b05a6792c872c1f5ce8525fca944f1d0dd910f7d1935cc583424ac659b797" [label="/bin/sh -c cd mac_oui && ./gradlew shadowJar" shape="box"];
  "sha256:c061dfa6b609ca93bbeadddbcc1da3643691a6fd8dd25d9928f42a2b64549252" [label="sha256:c061dfa6b609ca93bbeadddbcc1da3643691a6fd8dd25d9928f42a2b64549252" shape="plaintext"];
  "sha256:7099b236a233d293f28975a322fb9cef52577a9880093081a1a148f8300b0cde" -> "sha256:602d7ba1ffc9538ba8965033d65a6ad4542a340e5331ff9ec6d20929dd713335" [label=""];
  "sha256:602d7ba1ffc9538ba8965033d65a6ad4542a340e5331ff9ec6d20929dd713335" -> "sha256:826716774a5b006db622c74fb2a2ee865eed50e2cc32e0c0278f6de8bd8fb9b3" [label=""];
  "sha256:826716774a5b006db622c74fb2a2ee865eed50e2cc32e0c0278f6de8bd8fb9b3" -> "sha256:8676b8d2a7d4337a98d9c2bde56c6e1a4d2149280be12e6e0806fe397ddde94a" [label=""];
  "sha256:048d4f1254e0bf687994694202d7eb4fa0472c7bf8e7c11c0aaed050711bce76" -> "sha256:8676b8d2a7d4337a98d9c2bde56c6e1a4d2149280be12e6e0806fe397ddde94a" [label=""];
  "sha256:8676b8d2a7d4337a98d9c2bde56c6e1a4d2149280be12e6e0806fe397ddde94a" -> "sha256:623b05a6792c872c1f5ce8525fca944f1d0dd910f7d1935cc583424ac659b797" [label=""];
  "sha256:623b05a6792c872c1f5ce8525fca944f1d0dd910f7d1935cc583424ac659b797" -> "sha256:c061dfa6b609ca93bbeadddbcc1da3643691a6fd8dd25d9928f42a2b64549252" [label=""];
}

