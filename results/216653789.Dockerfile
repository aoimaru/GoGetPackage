[app/sources/216653789.Dockerfile]
digraph {
  "sha256:8669d3e8dd5b6bfa31135487d425387ade9589c03df7385ce661880f103d7059" [label="local://context" shape="ellipse"];
  "sha256:8cd37c05f11f342b0a7f250316089baf67dbd8eedfba0560bc244190ccf1a639" [label="copy{src=/explorer, dest=/explorer}" shape="note"];
  "sha256:30673a992abda1e2e6a6697152046b37afdbbb30f24a0d144ae251dd195ab569" [label="copy{src=/README.md, dest=/README.md}" shape="note"];
  "sha256:09d0fc0556b962cd61c8a033e754fc24abfb0ce54194978fdd03cf708c81cbd4" [label="sha256:09d0fc0556b962cd61c8a033e754fc24abfb0ce54194978fdd03cf708c81cbd4" shape="plaintext"];
  "sha256:8669d3e8dd5b6bfa31135487d425387ade9589c03df7385ce661880f103d7059" -> "sha256:8cd37c05f11f342b0a7f250316089baf67dbd8eedfba0560bc244190ccf1a639" [label=""];
  "sha256:8cd37c05f11f342b0a7f250316089baf67dbd8eedfba0560bc244190ccf1a639" -> "sha256:30673a992abda1e2e6a6697152046b37afdbbb30f24a0d144ae251dd195ab569" [label=""];
  "sha256:8669d3e8dd5b6bfa31135487d425387ade9589c03df7385ce661880f103d7059" -> "sha256:30673a992abda1e2e6a6697152046b37afdbbb30f24a0d144ae251dd195ab569" [label=""];
  "sha256:30673a992abda1e2e6a6697152046b37afdbbb30f24a0d144ae251dd195ab569" -> "sha256:09d0fc0556b962cd61c8a033e754fc24abfb0ce54194978fdd03cf708c81cbd4" [label=""];
}

