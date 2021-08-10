[app/sources/207530739.Dockerfile]
digraph {
  "sha256:774ffa5db6d0af4ce1522d6dd724e043681be19a4b99ad88448c54257bca21ec" [label="local://context" shape="ellipse"];
  "sha256:a622b98169ee380d13214e17184c78a117123d17873400a3554105b21fc9d397" [label="docker-image://docker.io/library/python:2-slim" shape="ellipse"];
  "sha256:0a04a51cb764255b15dbff86cbfd5c8cd1bf0eb60c5cda1b45e2681177cf4b58" [label="/bin/sh -c mkdir -p /usr/src/app" shape="box"];
  "sha256:ecc1860e39aac64b32a56f2e3b0c303f423261d895124cf0addb48509a26af24" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:fb6d23eb8fc5f79eac8a9abca1e8d90d181b633953fbac3d3784758dc067e2c9" [label="copy{src=/requirements.txt, dest=/usr/src/app}" shape="note"];
  "sha256:d0cc56fddfcc582ac86722e7d35a71bb60cb541459bcb3069260753dce3c72ce" [label="/bin/sh -c pip install --no-cache-dir -r requirements.txt" shape="box"];
  "sha256:9c2bc0c289ca1ca6bdaf83f8f2a460a4a2c67de3822abe9d893fccd27e9537fb" [label="copy{src=/jenkins_exporter.py, dest=/usr/src/app}" shape="note"];
  "sha256:2b2a45b96d35eec4b56ce03ffdfa6cc42aad703f0463591ec0b2a0785ecab89d" [label="sha256:2b2a45b96d35eec4b56ce03ffdfa6cc42aad703f0463591ec0b2a0785ecab89d" shape="plaintext"];
  "sha256:a622b98169ee380d13214e17184c78a117123d17873400a3554105b21fc9d397" -> "sha256:0a04a51cb764255b15dbff86cbfd5c8cd1bf0eb60c5cda1b45e2681177cf4b58" [label=""];
  "sha256:0a04a51cb764255b15dbff86cbfd5c8cd1bf0eb60c5cda1b45e2681177cf4b58" -> "sha256:ecc1860e39aac64b32a56f2e3b0c303f423261d895124cf0addb48509a26af24" [label=""];
  "sha256:ecc1860e39aac64b32a56f2e3b0c303f423261d895124cf0addb48509a26af24" -> "sha256:fb6d23eb8fc5f79eac8a9abca1e8d90d181b633953fbac3d3784758dc067e2c9" [label=""];
  "sha256:774ffa5db6d0af4ce1522d6dd724e043681be19a4b99ad88448c54257bca21ec" -> "sha256:fb6d23eb8fc5f79eac8a9abca1e8d90d181b633953fbac3d3784758dc067e2c9" [label=""];
  "sha256:fb6d23eb8fc5f79eac8a9abca1e8d90d181b633953fbac3d3784758dc067e2c9" -> "sha256:d0cc56fddfcc582ac86722e7d35a71bb60cb541459bcb3069260753dce3c72ce" [label=""];
  "sha256:d0cc56fddfcc582ac86722e7d35a71bb60cb541459bcb3069260753dce3c72ce" -> "sha256:9c2bc0c289ca1ca6bdaf83f8f2a460a4a2c67de3822abe9d893fccd27e9537fb" [label=""];
  "sha256:774ffa5db6d0af4ce1522d6dd724e043681be19a4b99ad88448c54257bca21ec" -> "sha256:9c2bc0c289ca1ca6bdaf83f8f2a460a4a2c67de3822abe9d893fccd27e9537fb" [label=""];
  "sha256:9c2bc0c289ca1ca6bdaf83f8f2a460a4a2c67de3822abe9d893fccd27e9537fb" -> "sha256:2b2a45b96d35eec4b56ce03ffdfa6cc42aad703f0463591ec0b2a0785ecab89d" [label=""];
}

