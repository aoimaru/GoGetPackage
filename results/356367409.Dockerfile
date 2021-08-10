[app/sources/356367409.Dockerfile]
digraph {
  "sha256:d3575ac41a0b0874a0b92f2376b4357024823d0228fc1c0f154ab0100b2b60d9" [label="docker-image://docker.io/library/golang:1.6" shape="ellipse"];
  "sha256:597bae93cd028e66c329de48f4dcde5e20bc4c74882f4383200e118548fbbcf6" [label="local://context" shape="ellipse"];
  "sha256:443c7daf5e20b34883e89fead2bde706f07df2cf6aa45bfb6eca1b8219e81e02" [label="copy{src=/, dest=/go/src/github.com/sethgrid/fakettp}" shape="note"];
  "sha256:5ddd360cd121594a60fd44b9694d90c19a255675616269c60a8512e4adba361f" [label="/bin/sh -c go install github.com/sethgrid/fakettp" shape="box"];
  "sha256:9d6db696e75a70251b472f1036b26567bf94dc98e1f12b0a94cfabb84ddda263" [label="sha256:9d6db696e75a70251b472f1036b26567bf94dc98e1f12b0a94cfabb84ddda263" shape="plaintext"];
  "sha256:d3575ac41a0b0874a0b92f2376b4357024823d0228fc1c0f154ab0100b2b60d9" -> "sha256:443c7daf5e20b34883e89fead2bde706f07df2cf6aa45bfb6eca1b8219e81e02" [label=""];
  "sha256:597bae93cd028e66c329de48f4dcde5e20bc4c74882f4383200e118548fbbcf6" -> "sha256:443c7daf5e20b34883e89fead2bde706f07df2cf6aa45bfb6eca1b8219e81e02" [label=""];
  "sha256:443c7daf5e20b34883e89fead2bde706f07df2cf6aa45bfb6eca1b8219e81e02" -> "sha256:5ddd360cd121594a60fd44b9694d90c19a255675616269c60a8512e4adba361f" [label=""];
  "sha256:5ddd360cd121594a60fd44b9694d90c19a255675616269c60a8512e4adba361f" -> "sha256:9d6db696e75a70251b472f1036b26567bf94dc98e1f12b0a94cfabb84ddda263" [label=""];
}

