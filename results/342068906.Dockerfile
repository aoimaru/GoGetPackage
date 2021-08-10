[app/sources/342068906.Dockerfile]
digraph {
  "sha256:1f9e773268b1ef8b014cca0dfc16dbd947919363975c8f0d62dc526f788e21f9" [label="local://context" shape="ellipse"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:3e3275174005a8e9696de5b85a59fae45e7bbd136b96d1387641a142e8e5f276" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:1846b0d94f7fcefcde03766a84de5be69d99e24eed14a25fca120fc5967d321a" [label="pip install twitter" shape="box"];
  "sha256:4f68cfd3c29166f4039aae54b0c155780650fc80fab245a96c06ad3772cc8e86" [label="sha256:4f68cfd3c29166f4039aae54b0c155780650fc80fab245a96c06ad3772cc8e86" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:3e3275174005a8e9696de5b85a59fae45e7bbd136b96d1387641a142e8e5f276" [label=""];
  "sha256:1f9e773268b1ef8b014cca0dfc16dbd947919363975c8f0d62dc526f788e21f9" -> "sha256:3e3275174005a8e9696de5b85a59fae45e7bbd136b96d1387641a142e8e5f276" [label=""];
  "sha256:3e3275174005a8e9696de5b85a59fae45e7bbd136b96d1387641a142e8e5f276" -> "sha256:1846b0d94f7fcefcde03766a84de5be69d99e24eed14a25fca120fc5967d321a" [label=""];
  "sha256:1846b0d94f7fcefcde03766a84de5be69d99e24eed14a25fca120fc5967d321a" -> "sha256:4f68cfd3c29166f4039aae54b0c155780650fc80fab245a96c06ad3772cc8e86" [label=""];
}

