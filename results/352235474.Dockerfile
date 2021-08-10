[app/sources/352235474.Dockerfile]
digraph {
  "sha256:4667316f3a52dc8a4d7fd898240f26a8adfa16866dbc599287d190368906b84e" [label="docker-image://docker.io/library/openjdk:8-jre" shape="ellipse"];
  "sha256:9c0a7b7d5b969b1506c15b75dbf2c711ad59813ff003cf52a91e97345ee3c1bc" [label="/bin/sh -c mkdir /hygieia/config" shape="box"];
  "sha256:0f1a6324e2ed57ce348ba686b9e407a49d5478d98622a316eb197f42ec10cce6" [label="mkdir{path=/hygieia}" shape="note"];
  "sha256:90f90ef2d00d1ce54ece2b1c07e7ffa356de9b62dcfaa2498a26bf6ea8832f5c" [label="local://context" shape="ellipse"];
  "sha256:bae02a5aa5fdf37d6c4af64fedc48986b407dd84f1903f4bef820d7a8dbf5c83" [label="copy{src=/target/*.jar, dest=/hygieia}" shape="note"];
  "sha256:bf69293206d33d2947766368ad941bb71ceb1752615b6e0ee7b5908673dea76d" [label="copy{src=/docker/properties-builder.sh, dest=/hygieia/}" shape="note"];
  "sha256:6bd2591851f05806fc731567ce74fa5cbe93484c00188a6dc3c988f1b52614bf" [label="sha256:6bd2591851f05806fc731567ce74fa5cbe93484c00188a6dc3c988f1b52614bf" shape="plaintext"];
  "sha256:4667316f3a52dc8a4d7fd898240f26a8adfa16866dbc599287d190368906b84e" -> "sha256:9c0a7b7d5b969b1506c15b75dbf2c711ad59813ff003cf52a91e97345ee3c1bc" [label=""];
  "sha256:9c0a7b7d5b969b1506c15b75dbf2c711ad59813ff003cf52a91e97345ee3c1bc" -> "sha256:0f1a6324e2ed57ce348ba686b9e407a49d5478d98622a316eb197f42ec10cce6" [label=""];
  "sha256:0f1a6324e2ed57ce348ba686b9e407a49d5478d98622a316eb197f42ec10cce6" -> "sha256:bae02a5aa5fdf37d6c4af64fedc48986b407dd84f1903f4bef820d7a8dbf5c83" [label=""];
  "sha256:90f90ef2d00d1ce54ece2b1c07e7ffa356de9b62dcfaa2498a26bf6ea8832f5c" -> "sha256:bae02a5aa5fdf37d6c4af64fedc48986b407dd84f1903f4bef820d7a8dbf5c83" [label=""];
  "sha256:bae02a5aa5fdf37d6c4af64fedc48986b407dd84f1903f4bef820d7a8dbf5c83" -> "sha256:bf69293206d33d2947766368ad941bb71ceb1752615b6e0ee7b5908673dea76d" [label=""];
  "sha256:90f90ef2d00d1ce54ece2b1c07e7ffa356de9b62dcfaa2498a26bf6ea8832f5c" -> "sha256:bf69293206d33d2947766368ad941bb71ceb1752615b6e0ee7b5908673dea76d" [label=""];
  "sha256:bf69293206d33d2947766368ad941bb71ceb1752615b6e0ee7b5908673dea76d" -> "sha256:6bd2591851f05806fc731567ce74fa5cbe93484c00188a6dc3c988f1b52614bf" [label=""];
}

