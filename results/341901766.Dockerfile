[app/sources/341901766.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:5440ea406d594c109d0390cb813c724d25e78393b2899d9d3fb398768d786399" [label="local://context" shape="ellipse"];
  "sha256:c8ef55a1006ef5fca16dbd0b5835c35204a669f7c04ba44cd3c1901ed06eee28" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:add54cca5594122c2be364e83f187df3eefd22ea8a45d706bd370399e216b439" [label="sha256:add54cca5594122c2be364e83f187df3eefd22ea8a45d706bd370399e216b439" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:c8ef55a1006ef5fca16dbd0b5835c35204a669f7c04ba44cd3c1901ed06eee28" [label=""];
  "sha256:5440ea406d594c109d0390cb813c724d25e78393b2899d9d3fb398768d786399" -> "sha256:c8ef55a1006ef5fca16dbd0b5835c35204a669f7c04ba44cd3c1901ed06eee28" [label=""];
  "sha256:c8ef55a1006ef5fca16dbd0b5835c35204a669f7c04ba44cd3c1901ed06eee28" -> "sha256:add54cca5594122c2be364e83f187df3eefd22ea8a45d706bd370399e216b439" [label=""];
}

