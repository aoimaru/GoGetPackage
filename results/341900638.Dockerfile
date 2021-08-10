[app/sources/341900638.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:7e06bc01ee8895a2f7f22d140cd435bd7c478ec266457fded53b9fb71480c8ed" [label="local://context" shape="ellipse"];
  "sha256:e391c43e61ed559da1864206dccf2a55e74f28719b5eee5931ac87ddb2ffef65" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:5cb150863cb06696452a3ecc9cd1d80933a28eb909d8c3df74a0c4fae1c25f76" [label="pip install markdown" shape="box"];
  "sha256:65950ddd44fb3cdbeb610d2132c914bb7059dd4e89ae1bc89054f768630f9c66" [label="pip install markdown" shape="box"];
  "sha256:42488cb3a5a291196bfc0ecf6971fe7e1a5f0b2e7991247c92fee96837a6b330" [label="sha256:42488cb3a5a291196bfc0ecf6971fe7e1a5f0b2e7991247c92fee96837a6b330" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:e391c43e61ed559da1864206dccf2a55e74f28719b5eee5931ac87ddb2ffef65" [label=""];
  "sha256:7e06bc01ee8895a2f7f22d140cd435bd7c478ec266457fded53b9fb71480c8ed" -> "sha256:e391c43e61ed559da1864206dccf2a55e74f28719b5eee5931ac87ddb2ffef65" [label=""];
  "sha256:e391c43e61ed559da1864206dccf2a55e74f28719b5eee5931ac87ddb2ffef65" -> "sha256:5cb150863cb06696452a3ecc9cd1d80933a28eb909d8c3df74a0c4fae1c25f76" [label=""];
  "sha256:5cb150863cb06696452a3ecc9cd1d80933a28eb909d8c3df74a0c4fae1c25f76" -> "sha256:65950ddd44fb3cdbeb610d2132c914bb7059dd4e89ae1bc89054f768630f9c66" [label=""];
  "sha256:65950ddd44fb3cdbeb610d2132c914bb7059dd4e89ae1bc89054f768630f9c66" -> "sha256:42488cb3a5a291196bfc0ecf6971fe7e1a5f0b2e7991247c92fee96837a6b330" [label=""];
}

