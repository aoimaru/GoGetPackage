[app/sources/176510973.Dockerfile]
digraph {
  "sha256:9c3d832424c4ee2b326f594163fa766aa88ed23c8b35566a9b98f7f4065ac2d5" [label="docker-image://docker.io/library/golang:1.9.3" shape="ellipse"];
  "sha256:a77ca094cbde19ba4413fc4dd5f3051b4b47020bc68156e0744c9e552f4f4b81" [label="local://context" shape="ellipse"];
  "sha256:1aa4b7c90f7ca036d9f9a571a0f941e0185f5fc3580feaa7eb950188774d57f4" [label="copy{src=/, dest=/go/src/github.com/rynop/twirpl}" shape="note"];
  "sha256:568a21cb086787e4089045bf7d1d23c33f55b296617a77ba2bac6f71824dd8a8" [label="mkdir{path=/go/src/github.com/rynop/twirpl/cmd/twirpl-webservices}" shape="note"];
  "sha256:f25361377bfc95075a39a93e86a47969c1f9935dda1e5ae6dc46f2f29761c7c6" [label="/bin/sh -c go build -o main ." shape="box"];
  "sha256:cd38db753b0cbb6fa2cd26419eb8278d869eab43ab797e8618faff986c981ee1" [label="sha256:cd38db753b0cbb6fa2cd26419eb8278d869eab43ab797e8618faff986c981ee1" shape="plaintext"];
  "sha256:9c3d832424c4ee2b326f594163fa766aa88ed23c8b35566a9b98f7f4065ac2d5" -> "sha256:1aa4b7c90f7ca036d9f9a571a0f941e0185f5fc3580feaa7eb950188774d57f4" [label=""];
  "sha256:a77ca094cbde19ba4413fc4dd5f3051b4b47020bc68156e0744c9e552f4f4b81" -> "sha256:1aa4b7c90f7ca036d9f9a571a0f941e0185f5fc3580feaa7eb950188774d57f4" [label=""];
  "sha256:1aa4b7c90f7ca036d9f9a571a0f941e0185f5fc3580feaa7eb950188774d57f4" -> "sha256:568a21cb086787e4089045bf7d1d23c33f55b296617a77ba2bac6f71824dd8a8" [label=""];
  "sha256:568a21cb086787e4089045bf7d1d23c33f55b296617a77ba2bac6f71824dd8a8" -> "sha256:f25361377bfc95075a39a93e86a47969c1f9935dda1e5ae6dc46f2f29761c7c6" [label=""];
  "sha256:f25361377bfc95075a39a93e86a47969c1f9935dda1e5ae6dc46f2f29761c7c6" -> "sha256:cd38db753b0cbb6fa2cd26419eb8278d869eab43ab797e8618faff986c981ee1" [label=""];
}

