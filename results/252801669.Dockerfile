[app/sources/252801669.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:d07b39e89e23d274d9f124b6f8380f36d25c058cbe03f9f75651f196422290d8" [label="/bin/sh -c mkdir /covalic" shape="box"];
  "sha256:8c18dc764ea4fac8b2e6bcd9273d8988160f7ea9b43e6b6ad96680b3ffae57b2" [label="local://context" shape="ellipse"];
  "sha256:bf9af4ea9fda7504752afae65e10c65ab3f6d7467e32b3e2acd16109714a053a" [label="copy{src=/Python, dest=/covalic/Python}" shape="note"];
  "sha256:1ca17206b1a68facac57e7feee40fc3d5b65ac82df0cf13fd1894f3c2a1f01ba" [label="/bin/sh -c apt-get update && apt-get install -y build-essential cmake freeglut3-dev git mesa-common-dev python python-pip libpython-dev liblapack-dev gfortran" shape="box"];
  "sha256:acfefb64c8236eec8f638423232c12f268f70729dded08060c6c5ec16b77f8d8" [label="/bin/sh -c pip install numpy scipy" shape="box"];
  "sha256:3d5ef05ecadb6968dc3e2768714b85e25e14c8678cb4ba8ccda47ad546ae681d" [label="sha256:3d5ef05ecadb6968dc3e2768714b85e25e14c8678cb4ba8ccda47ad546ae681d" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:d07b39e89e23d274d9f124b6f8380f36d25c058cbe03f9f75651f196422290d8" [label=""];
  "sha256:d07b39e89e23d274d9f124b6f8380f36d25c058cbe03f9f75651f196422290d8" -> "sha256:bf9af4ea9fda7504752afae65e10c65ab3f6d7467e32b3e2acd16109714a053a" [label=""];
  "sha256:8c18dc764ea4fac8b2e6bcd9273d8988160f7ea9b43e6b6ad96680b3ffae57b2" -> "sha256:bf9af4ea9fda7504752afae65e10c65ab3f6d7467e32b3e2acd16109714a053a" [label=""];
  "sha256:bf9af4ea9fda7504752afae65e10c65ab3f6d7467e32b3e2acd16109714a053a" -> "sha256:1ca17206b1a68facac57e7feee40fc3d5b65ac82df0cf13fd1894f3c2a1f01ba" [label=""];
  "sha256:1ca17206b1a68facac57e7feee40fc3d5b65ac82df0cf13fd1894f3c2a1f01ba" -> "sha256:acfefb64c8236eec8f638423232c12f268f70729dded08060c6c5ec16b77f8d8" [label=""];
  "sha256:acfefb64c8236eec8f638423232c12f268f70729dded08060c6c5ec16b77f8d8" -> "sha256:3d5ef05ecadb6968dc3e2768714b85e25e14c8678cb4ba8ccda47ad546ae681d" [label=""];
}

