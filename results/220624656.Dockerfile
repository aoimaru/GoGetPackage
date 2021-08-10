[app/sources/220624656.Dockerfile]
digraph {
  "sha256:d161fb213acab70228f54436e51c2c7652400ffa5c78ffc691243aec7c811595" [label="local://context" shape="ellipse"];
  "sha256:9ed31df4e6731a1718ea93bfa77354ad1ea2d1625c1cb16e2087d16d0b84bd00" [label="docker-image://docker.io/library/openjdk:8-jre-alpine" shape="ellipse"];
  "sha256:c0ee16d68161b60deccb446800ebf0b3948bc268e09cda35df62d0de6fd14173" [label="/bin/sh -c apk add --no-cache --quiet     bash     curl" shape="box"];
  "sha256:f80b4ff7a08fb4527a0f1606f5f99c091050a205a16f9aff2ac48211391d9c3f" [label="copy{src=/local-package/*, dest=/tmp/}" shape="note"];
  "sha256:9f66e0b5ffe3589a60fd070435f4a04ea232be95afa3e3086ec17c4aad244934" [label="/bin/sh -c curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo \"${NEO4J_SHA256}  ${NEO4J_TARBALL}\" | sha256sum -csw -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}     && mv /var/lib/neo4j/data /data     && ln -s /data /var/lib/neo4j/data     && apk del curl" shape="box"];
  "sha256:1a75c2edfeaf67c2bfc03590027a4b07eeaabab4dd1e0fbf4605a321a7ef1ad6" [label="mkdir{path=/var/lib/neo4j}" shape="note"];
  "sha256:5d81a138d05fdcf620948c1c40a56097ca82d191be9153d25e2a82ecc2d5daa0" [label="copy{src=/docker-entrypoint.sh, dest=/docker-entrypoint.sh}" shape="note"];
  "sha256:8b442cbe3137de0385133d724c86370510f251caf22914fafec259eabb9f91e5" [label="sha256:8b442cbe3137de0385133d724c86370510f251caf22914fafec259eabb9f91e5" shape="plaintext"];
  "sha256:9ed31df4e6731a1718ea93bfa77354ad1ea2d1625c1cb16e2087d16d0b84bd00" -> "sha256:c0ee16d68161b60deccb446800ebf0b3948bc268e09cda35df62d0de6fd14173" [label=""];
  "sha256:c0ee16d68161b60deccb446800ebf0b3948bc268e09cda35df62d0de6fd14173" -> "sha256:f80b4ff7a08fb4527a0f1606f5f99c091050a205a16f9aff2ac48211391d9c3f" [label=""];
  "sha256:d161fb213acab70228f54436e51c2c7652400ffa5c78ffc691243aec7c811595" -> "sha256:f80b4ff7a08fb4527a0f1606f5f99c091050a205a16f9aff2ac48211391d9c3f" [label=""];
  "sha256:f80b4ff7a08fb4527a0f1606f5f99c091050a205a16f9aff2ac48211391d9c3f" -> "sha256:9f66e0b5ffe3589a60fd070435f4a04ea232be95afa3e3086ec17c4aad244934" [label=""];
  "sha256:9f66e0b5ffe3589a60fd070435f4a04ea232be95afa3e3086ec17c4aad244934" -> "sha256:1a75c2edfeaf67c2bfc03590027a4b07eeaabab4dd1e0fbf4605a321a7ef1ad6" [label=""];
  "sha256:1a75c2edfeaf67c2bfc03590027a4b07eeaabab4dd1e0fbf4605a321a7ef1ad6" -> "sha256:5d81a138d05fdcf620948c1c40a56097ca82d191be9153d25e2a82ecc2d5daa0" [label=""];
  "sha256:d161fb213acab70228f54436e51c2c7652400ffa5c78ffc691243aec7c811595" -> "sha256:5d81a138d05fdcf620948c1c40a56097ca82d191be9153d25e2a82ecc2d5daa0" [label=""];
  "sha256:5d81a138d05fdcf620948c1c40a56097ca82d191be9153d25e2a82ecc2d5daa0" -> "sha256:8b442cbe3137de0385133d724c86370510f251caf22914fafec259eabb9f91e5" [label=""];
}

