[app/sources/301828821.Dockerfile]
digraph {
  "sha256:6bc57c2c760d2925db1071e5d869736101f9680b31e3a1035bd9ec988292474a" [label="docker-image://docker.io/pveber/bistro-base:stretch" shape="ellipse"];
  "sha256:35512bdaa3416f65679c6b21cc0377109e491b242ac3a5e77caa5afec6164112" [label="/bin/sh -c wget -O bowtie2.zip \"https://downloads.sourceforge.net/project/bowtie-bio/bowtie2/2.3.3.1/bowtie2-2.3.3.1-linux-x86_64.zip?r=https%3A%2F%2Fsourceforge.net%2Fprojects%2Fbowtie-bio%2Ffiles%2Fbowtie2%2F2.3.3.1&ts=1508932398&use_mirror=kent\"" shape="box"];
  "sha256:14bde7975e6400532ce353fc051608d5c20e322a84239232431606ae6aa23ef5" [label="/bin/sh -c unzip bowtie2.zip && cd bowtie2-2.3.3.1-linux-x86_64 && cp bowtie2* /usr/bin" shape="box"];
  "sha256:7745d576e32398f5a52f317b55994fb917c5b5787ddffd3912b6fcca4686c6c9" [label="/bin/sh -c apt-get update && apt-get install libpython-stdlib libtbb2 python python-minimal python2.7 python2.7-minimal" shape="box"];
  "sha256:4ff04b6ea150d1b42f6c5f7704b7c9e46c0844b5fbbf182f394019e9f4097ab2" [label="sha256:4ff04b6ea150d1b42f6c5f7704b7c9e46c0844b5fbbf182f394019e9f4097ab2" shape="plaintext"];
  "sha256:6bc57c2c760d2925db1071e5d869736101f9680b31e3a1035bd9ec988292474a" -> "sha256:35512bdaa3416f65679c6b21cc0377109e491b242ac3a5e77caa5afec6164112" [label=""];
  "sha256:35512bdaa3416f65679c6b21cc0377109e491b242ac3a5e77caa5afec6164112" -> "sha256:14bde7975e6400532ce353fc051608d5c20e322a84239232431606ae6aa23ef5" [label=""];
  "sha256:14bde7975e6400532ce353fc051608d5c20e322a84239232431606ae6aa23ef5" -> "sha256:7745d576e32398f5a52f317b55994fb917c5b5787ddffd3912b6fcca4686c6c9" [label=""];
  "sha256:7745d576e32398f5a52f317b55994fb917c5b5787ddffd3912b6fcca4686c6c9" -> "sha256:4ff04b6ea150d1b42f6c5f7704b7c9e46c0844b5fbbf182f394019e9f4097ab2" [label=""];
}

