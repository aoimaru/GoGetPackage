[app/sources/382352431.Dockerfile]
digraph {
  "sha256:946935cddf9259dd58e4d7a3c76840014d23b1a9a0ecdadee89ea14805ec4b35" [label="docker-image://docker.io/library/python:2.7-onbuild" shape="ellipse"];
  "sha256:5669b590bfeebe87be0d7fc42115cad77c37b7ebdf580f0e7e2657dd655d2dbb" [label="/bin/sh -c wget https://storage.googleapis.com/kubernetes-helm/helm-v${HELM_VERSION}-linux-amd64.tar.gz &&     tar xfv helm-v${HELM_VERSION}-linux-amd64.tar.gz &&     mv linux-amd64/helm /usr/local/bin/ &&     rm -rf linux-amd64" shape="box"];
  "sha256:32078679b2831b36f457a69c0b11b96fdfabf756c4847200501d5547a750d890" [label="sha256:32078679b2831b36f457a69c0b11b96fdfabf756c4847200501d5547a750d890" shape="plaintext"];
  "sha256:946935cddf9259dd58e4d7a3c76840014d23b1a9a0ecdadee89ea14805ec4b35" -> "sha256:5669b590bfeebe87be0d7fc42115cad77c37b7ebdf580f0e7e2657dd655d2dbb" [label=""];
  "sha256:5669b590bfeebe87be0d7fc42115cad77c37b7ebdf580f0e7e2657dd655d2dbb" -> "sha256:32078679b2831b36f457a69c0b11b96fdfabf756c4847200501d5547a750d890" [label=""];
}

