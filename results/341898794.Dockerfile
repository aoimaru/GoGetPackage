[app/sources/341898794.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:0727d1d0379d6e9d7570154d7c8fb5b79e9507ba455420fce2b89a86ace539a2" [label="local://context" shape="ellipse"];
  "sha256:d2e50a2a42b1492118b2816c8ff55323d3226ba4290f660d5b974fc138560e8d" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:429aba2d26abaeaaec4413e8bc3f37964ed4cf647c527d810a8bcefe3ec4ddce" [label="pip install email" shape="box"];
  "sha256:c9092149bf0cc82679533c9ab3daedbcef29ee7ad0aca67761975d6c29b4d32c" [label="pip install email" shape="box"];
  "sha256:ec9e0c7c89b5cd24c135bdf84ed8dc8631a2ee6c69938e3772aef98e115200e3" [label="pip install boto" shape="box"];
  "sha256:44a7150f53013cb7c8ffd4269dcd424ce17d8c4c7409808720dc7575fddcc480" [label="pip install email" shape="box"];
  "sha256:99b70f917bbf4527b036b17645450710b3f083c4b4dc5993fcb65e9ff47109a8" [label="sha256:99b70f917bbf4527b036b17645450710b3f083c4b4dc5993fcb65e9ff47109a8" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:d2e50a2a42b1492118b2816c8ff55323d3226ba4290f660d5b974fc138560e8d" [label=""];
  "sha256:0727d1d0379d6e9d7570154d7c8fb5b79e9507ba455420fce2b89a86ace539a2" -> "sha256:d2e50a2a42b1492118b2816c8ff55323d3226ba4290f660d5b974fc138560e8d" [label=""];
  "sha256:d2e50a2a42b1492118b2816c8ff55323d3226ba4290f660d5b974fc138560e8d" -> "sha256:429aba2d26abaeaaec4413e8bc3f37964ed4cf647c527d810a8bcefe3ec4ddce" [label=""];
  "sha256:429aba2d26abaeaaec4413e8bc3f37964ed4cf647c527d810a8bcefe3ec4ddce" -> "sha256:c9092149bf0cc82679533c9ab3daedbcef29ee7ad0aca67761975d6c29b4d32c" [label=""];
  "sha256:c9092149bf0cc82679533c9ab3daedbcef29ee7ad0aca67761975d6c29b4d32c" -> "sha256:ec9e0c7c89b5cd24c135bdf84ed8dc8631a2ee6c69938e3772aef98e115200e3" [label=""];
  "sha256:ec9e0c7c89b5cd24c135bdf84ed8dc8631a2ee6c69938e3772aef98e115200e3" -> "sha256:44a7150f53013cb7c8ffd4269dcd424ce17d8c4c7409808720dc7575fddcc480" [label=""];
  "sha256:44a7150f53013cb7c8ffd4269dcd424ce17d8c4c7409808720dc7575fddcc480" -> "sha256:99b70f917bbf4527b036b17645450710b3f083c4b4dc5993fcb65e9ff47109a8" [label=""];
}

