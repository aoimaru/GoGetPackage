[app/sources/290019662.Dockerfile]
digraph {
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" [label="docker-image://docker.io/library/fedora:latest" shape="ellipse"];
  "sha256:5c96b20e5b6eb51cfc408cf97797866495b3add4bced9e37afb4dfc5c470d8b0" [label="local://context" shape="ellipse"];
  "sha256:352d2db371c4b91f3f6f1517700f0b1779816e4bc760ae1d152e7634be77d35f" [label="copy{src=/kube-sample-apiserver, dest=/}" shape="note"];
  "sha256:d27536f7c45aa77d7b85b66ec97d79610b3584db37ab0da3ae5164d34e75f5f1" [label="sha256:d27536f7c45aa77d7b85b66ec97d79610b3584db37ab0da3ae5164d34e75f5f1" shape="plaintext"];
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" -> "sha256:352d2db371c4b91f3f6f1517700f0b1779816e4bc760ae1d152e7634be77d35f" [label=""];
  "sha256:5c96b20e5b6eb51cfc408cf97797866495b3add4bced9e37afb4dfc5c470d8b0" -> "sha256:352d2db371c4b91f3f6f1517700f0b1779816e4bc760ae1d152e7634be77d35f" [label=""];
  "sha256:352d2db371c4b91f3f6f1517700f0b1779816e4bc760ae1d152e7634be77d35f" -> "sha256:d27536f7c45aa77d7b85b66ec97d79610b3584db37ab0da3ae5164d34e75f5f1" [label=""];
}

