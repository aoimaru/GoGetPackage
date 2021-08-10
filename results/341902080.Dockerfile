[app/sources/341902080.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:1087b81a48bca8fded1e8406f3ed8b2338fb45a676df2b1ac1768048786927fa" [label="local://context" shape="ellipse"];
  "sha256:40bfa4032edbc9a0236b008cdcbfaa9096f2a72539e43bb488d21d2ec6b08988" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:522d3ba7aebb1cf19cee69eebb8d688715c9b2d6badfdbbdbe2b25d9465370da" [label="pip install pip" shape="box"];
  "sha256:31ac53c8e55125492f55ee08e9a00166e7a33ed7839f6daa60df719d893308dc" [label="pip install fabric" shape="box"];
  "sha256:e96d91d466b3846dc2cedb3547a715b185776dfb5670d2420f67430bcf60505f" [label="sha256:e96d91d466b3846dc2cedb3547a715b185776dfb5670d2420f67430bcf60505f" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:40bfa4032edbc9a0236b008cdcbfaa9096f2a72539e43bb488d21d2ec6b08988" [label=""];
  "sha256:1087b81a48bca8fded1e8406f3ed8b2338fb45a676df2b1ac1768048786927fa" -> "sha256:40bfa4032edbc9a0236b008cdcbfaa9096f2a72539e43bb488d21d2ec6b08988" [label=""];
  "sha256:40bfa4032edbc9a0236b008cdcbfaa9096f2a72539e43bb488d21d2ec6b08988" -> "sha256:522d3ba7aebb1cf19cee69eebb8d688715c9b2d6badfdbbdbe2b25d9465370da" [label=""];
  "sha256:522d3ba7aebb1cf19cee69eebb8d688715c9b2d6badfdbbdbe2b25d9465370da" -> "sha256:31ac53c8e55125492f55ee08e9a00166e7a33ed7839f6daa60df719d893308dc" [label=""];
  "sha256:31ac53c8e55125492f55ee08e9a00166e7a33ed7839f6daa60df719d893308dc" -> "sha256:e96d91d466b3846dc2cedb3547a715b185776dfb5670d2420f67430bcf60505f" [label=""];
}

