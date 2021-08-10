[app/sources/252788151.Dockerfile]
digraph {
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" [label="docker-image://docker.io/library/alpine:3.6" shape="ellipse"];
  "sha256:148b27d77250a0d68f265f077073c95f50a5c003bc4320621102539c5201c5eb" [label="/bin/sh -c apk --no-cache add bash curl" shape="box"];
  "sha256:d19ba6e6b1597f06d62a35e9910b430e0a4c4c62eb5ce470771784abd47aee1c" [label="https://storage.googleapis.com/kubernetes-helm/helm-v2.8.1-linux-amd64.tar.gz" shape="ellipse"];
  "sha256:1692ce6deb4472c5fbe183514ba1c02b31ba45b5924ed7318d52a6544a56fcba" [label="copy{src=/helm-v2.8.1-linux-amd64.tar.gz, dest=/tmp}" shape="note"];
  "sha256:e9cc0c2c91b3d6f49ed867edec3e50bdc51014e94b1fd95ecb72349fd81dfa00" [label="/bin/sh -c tar -zxvf /tmp/${FILENAME} -C /tmp && mv /tmp/linux-amd64/helm /bin/helm && rm -rf /tmp" shape="box"];
  "sha256:fb519ccb3d8d4df258d27c2720fca619f29f3abc9f8c12471cb75d4635f4720c" [label="/bin/sh -c helm init --client-only" shape="box"];
  "sha256:df015236215afa8b7d677bb8f9683bef05764226626ae16101afcbf34c9c13d6" [label="sha256:df015236215afa8b7d677bb8f9683bef05764226626ae16101afcbf34c9c13d6" shape="plaintext"];
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" -> "sha256:148b27d77250a0d68f265f077073c95f50a5c003bc4320621102539c5201c5eb" [label=""];
  "sha256:148b27d77250a0d68f265f077073c95f50a5c003bc4320621102539c5201c5eb" -> "sha256:1692ce6deb4472c5fbe183514ba1c02b31ba45b5924ed7318d52a6544a56fcba" [label=""];
  "sha256:d19ba6e6b1597f06d62a35e9910b430e0a4c4c62eb5ce470771784abd47aee1c" -> "sha256:1692ce6deb4472c5fbe183514ba1c02b31ba45b5924ed7318d52a6544a56fcba" [label=""];
  "sha256:1692ce6deb4472c5fbe183514ba1c02b31ba45b5924ed7318d52a6544a56fcba" -> "sha256:e9cc0c2c91b3d6f49ed867edec3e50bdc51014e94b1fd95ecb72349fd81dfa00" [label=""];
  "sha256:e9cc0c2c91b3d6f49ed867edec3e50bdc51014e94b1fd95ecb72349fd81dfa00" -> "sha256:fb519ccb3d8d4df258d27c2720fca619f29f3abc9f8c12471cb75d4635f4720c" [label=""];
  "sha256:fb519ccb3d8d4df258d27c2720fca619f29f3abc9f8c12471cb75d4635f4720c" -> "sha256:df015236215afa8b7d677bb8f9683bef05764226626ae16101afcbf34c9c13d6" [label=""];
}

