[app/sources/252799301.Dockerfile]
digraph {
  "sha256:a5c23d8953fcea7f1e0e4eed65d93519c71fc6a7838317d4b8d47ff8763bf504" [label="docker-image://docker.io/library/centos:7.2.1511" shape="ellipse"];
  "sha256:b037451334f1670a1b66ce9690be04e569489eb82feaa27b6036f1c1b0ce4fd7" [label="local://context" shape="ellipse"];
  "sha256:079c27bfe6e5391fe911c08361dd19103c8055dc818f073cd5a5d5ccdf23378e" [label="copy{src=/bootstrap.sh, dest=/tmp/bootstrap.sh}" shape="note"];
  "sha256:235a3f5b1c31d96a2f3503ddcec808a93bd1eef95cf936d9f02922703b886541" [label="/bin/sh -c yum -y install wget" shape="box"];
  "sha256:83cc20647e0888aec58b1eb76094dacd15277e8c04de4041ceaedcf36133fcd8" [label="/bin/sh -c sh /tmp/bootstrap.sh" shape="box"];
  "sha256:10e616370d6e3863cc4916dba28cc06237618363f9629213382f62e20606e6d1" [label="sha256:10e616370d6e3863cc4916dba28cc06237618363f9629213382f62e20606e6d1" shape="plaintext"];
  "sha256:a5c23d8953fcea7f1e0e4eed65d93519c71fc6a7838317d4b8d47ff8763bf504" -> "sha256:079c27bfe6e5391fe911c08361dd19103c8055dc818f073cd5a5d5ccdf23378e" [label=""];
  "sha256:b037451334f1670a1b66ce9690be04e569489eb82feaa27b6036f1c1b0ce4fd7" -> "sha256:079c27bfe6e5391fe911c08361dd19103c8055dc818f073cd5a5d5ccdf23378e" [label=""];
  "sha256:079c27bfe6e5391fe911c08361dd19103c8055dc818f073cd5a5d5ccdf23378e" -> "sha256:235a3f5b1c31d96a2f3503ddcec808a93bd1eef95cf936d9f02922703b886541" [label=""];
  "sha256:235a3f5b1c31d96a2f3503ddcec808a93bd1eef95cf936d9f02922703b886541" -> "sha256:83cc20647e0888aec58b1eb76094dacd15277e8c04de4041ceaedcf36133fcd8" [label=""];
  "sha256:83cc20647e0888aec58b1eb76094dacd15277e8c04de4041ceaedcf36133fcd8" -> "sha256:10e616370d6e3863cc4916dba28cc06237618363f9629213382f62e20606e6d1" [label=""];
}

