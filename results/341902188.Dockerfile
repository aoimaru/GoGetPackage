[app/sources/341902188.Dockerfile]
digraph {
  "sha256:5a8ba9c384493a5ceb78a68b8ffa8632947a265815ece93240861a3d7c3dded8" [label="local://context" shape="ellipse"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:56679a24c12bf174d20ba140c474290f568b9574188a8f659321f8bf2ac167d4" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:95e881029c66bae590c058d901e51c4bb1ff622765c2d662f0736cc21117cc5c" [label="sha256:95e881029c66bae590c058d901e51c4bb1ff622765c2d662f0736cc21117cc5c" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:56679a24c12bf174d20ba140c474290f568b9574188a8f659321f8bf2ac167d4" [label=""];
  "sha256:5a8ba9c384493a5ceb78a68b8ffa8632947a265815ece93240861a3d7c3dded8" -> "sha256:56679a24c12bf174d20ba140c474290f568b9574188a8f659321f8bf2ac167d4" [label=""];
  "sha256:56679a24c12bf174d20ba140c474290f568b9574188a8f659321f8bf2ac167d4" -> "sha256:95e881029c66bae590c058d901e51c4bb1ff622765c2d662f0736cc21117cc5c" [label=""];
}
