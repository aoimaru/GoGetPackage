[app/sources/265022534.Dockerfile]
digraph {
  "sha256:82b0ab03c43981bd408deb7b1ca062dc5dfd19197f06be715ff118e626d39630" [label="docker-image://docker.io/library/alpine:3.5" shape="ellipse"];
  "sha256:0a9c9163464ed55fe229064e8912ccf90e73e429ea046b488db006dda9b3a71c" [label="/bin/sh -c apk --update add apache2 && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:f4861077dbe4896cc1d57218e3c2b5910420d39c3904170ad49f21ce2618b21d" [label="/bin/sh -c mkdir -p /run/apache2" shape="box"];
  "sha256:5d9aa4c38c0dd27a531f917857f7dc5fa5f1db7de649e7974da6acf6bb8d87f4" [label="sha256:5d9aa4c38c0dd27a531f917857f7dc5fa5f1db7de649e7974da6acf6bb8d87f4" shape="plaintext"];
  "sha256:82b0ab03c43981bd408deb7b1ca062dc5dfd19197f06be715ff118e626d39630" -> "sha256:0a9c9163464ed55fe229064e8912ccf90e73e429ea046b488db006dda9b3a71c" [label=""];
  "sha256:0a9c9163464ed55fe229064e8912ccf90e73e429ea046b488db006dda9b3a71c" -> "sha256:f4861077dbe4896cc1d57218e3c2b5910420d39c3904170ad49f21ce2618b21d" [label=""];
  "sha256:f4861077dbe4896cc1d57218e3c2b5910420d39c3904170ad49f21ce2618b21d" -> "sha256:5d9aa4c38c0dd27a531f917857f7dc5fa5f1db7de649e7974da6acf6bb8d87f4" [label=""];
}

