[app/sources/361780563.Dockerfile]
digraph {
  "sha256:c735fb7f447c51d14a476ae7a56855a089b7150b69d34f6a080b74ea6d48fec7" [label="docker-image://docker.io/library/centos:centos7" shape="ellipse"];
  "sha256:c8225b5f6d4eb201e659ad34cddb05fe958d989c14d72fca737fa454c7159e75" [label="/bin/sh -c yum install -y -q wget &&     mkdir -p /opt/golang &&     cd /opt/golang &&     wget https://storage.googleapis.com/golang/go1.7.5.linux-amd64.tar.gz &&     tar xf go1.7.5.linux-amd64.tar.gz" shape="box"];
  "sha256:7cfd877b1421e5634d6028ef5cbd20171af1efaef61cf874d3f20bf4b7e54f84" [label="local://context" shape="ellipse"];
  "sha256:84c4bb900370e799a940d6993fbbca41e4c0d153f74dd9e5e95108161dfa32bb" [label="copy{src=/BZ1465532.patch, dest=/tmp/}" shape="note"];
  "sha256:f8e8bcb9ee89c0497f885edf25604b3c29f9a7f0da085078b7930c91d9c0ec4d" [label="copy{src=/BZ1474099.patch, dest=/tmp/}" shape="note"];
  "sha256:7486286e120b3dd94b3375ccaa30838dddf5cea104b23847927dfbfe5bb98d01" [label="/bin/sh -c yum install -y -q go git wget make patch &&     yum clean all &&     cd /tmp &&     export GOPATH=/tmp/gopath &&     export PATH=$PATH:$GOPATH/bin &&     mkdir -p $GOPATH/src/k8s.io &&     cd $GOPATH/src/k8s.io &&     git clone https://github.com/kubernetes/heapster &&     cd heapster &&     git checkout $HEAPSTER_COMMIT &&     git apply /tmp/BZ1465532.patch &&     git apply /tmp/BZ1474099.patch &&     make &&     cp heapster /opt &&     rm -rf $GOPATH &&     yum remove -y -q go git wget make" shape="box"];
  "sha256:7d8321a9f319ee3e7e746da24939664dc8da8eb3965f352d4bce2f87ce93ecc8" [label="/bin/sh -c groupadd -r heapster -g 1000 &&     useradd -u 1000 -r -g heapster -m -d /home/heapster -s /sbin/nologin heapster &&     chmod 755 /home/heapster" shape="box"];
  "sha256:795bb9779de7cefe6a9327b188a5c20435ee6c3433edbe757fa86b441f8398cc" [label="mkdir{path=/opt}" shape="note"];
  "sha256:e166ec0f97ae54c163c29605c7e9fcc0698aa5d1a625f025ce26f07346d1374c" [label="sha256:e166ec0f97ae54c163c29605c7e9fcc0698aa5d1a625f025ce26f07346d1374c" shape="plaintext"];
  "sha256:c735fb7f447c51d14a476ae7a56855a089b7150b69d34f6a080b74ea6d48fec7" -> "sha256:c8225b5f6d4eb201e659ad34cddb05fe958d989c14d72fca737fa454c7159e75" [label=""];
  "sha256:c8225b5f6d4eb201e659ad34cddb05fe958d989c14d72fca737fa454c7159e75" -> "sha256:84c4bb900370e799a940d6993fbbca41e4c0d153f74dd9e5e95108161dfa32bb" [label=""];
  "sha256:7cfd877b1421e5634d6028ef5cbd20171af1efaef61cf874d3f20bf4b7e54f84" -> "sha256:84c4bb900370e799a940d6993fbbca41e4c0d153f74dd9e5e95108161dfa32bb" [label=""];
  "sha256:84c4bb900370e799a940d6993fbbca41e4c0d153f74dd9e5e95108161dfa32bb" -> "sha256:f8e8bcb9ee89c0497f885edf25604b3c29f9a7f0da085078b7930c91d9c0ec4d" [label=""];
  "sha256:7cfd877b1421e5634d6028ef5cbd20171af1efaef61cf874d3f20bf4b7e54f84" -> "sha256:f8e8bcb9ee89c0497f885edf25604b3c29f9a7f0da085078b7930c91d9c0ec4d" [label=""];
  "sha256:f8e8bcb9ee89c0497f885edf25604b3c29f9a7f0da085078b7930c91d9c0ec4d" -> "sha256:7486286e120b3dd94b3375ccaa30838dddf5cea104b23847927dfbfe5bb98d01" [label=""];
  "sha256:7486286e120b3dd94b3375ccaa30838dddf5cea104b23847927dfbfe5bb98d01" -> "sha256:7d8321a9f319ee3e7e746da24939664dc8da8eb3965f352d4bce2f87ce93ecc8" [label=""];
  "sha256:7d8321a9f319ee3e7e746da24939664dc8da8eb3965f352d4bce2f87ce93ecc8" -> "sha256:795bb9779de7cefe6a9327b188a5c20435ee6c3433edbe757fa86b441f8398cc" [label=""];
  "sha256:795bb9779de7cefe6a9327b188a5c20435ee6c3433edbe757fa86b441f8398cc" -> "sha256:e166ec0f97ae54c163c29605c7e9fcc0698aa5d1a625f025ce26f07346d1374c" [label=""];
}

