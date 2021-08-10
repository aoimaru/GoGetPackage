[app/sources/341905127.Dockerfile]
digraph {
  "sha256:b4425aad9c26b7e7c06eb1c48f4f4bbcc6e64fc9a8ca964b8301c78a58fd3521" [label="local://context" shape="ellipse"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:6be51697b1cfa47c5d3762c3a3fe932200673a2d88690fc7fa8d133a40e5b2b4" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:bb0f1a7137b2dc1a341999c26b6d04ac9d9c901099a937399e08ee97db0dbad5" [label="pip install requests" shape="box"];
  "sha256:11898e4dfe42bc30cd03cc16508975cbf441aab5ba5b82e85154b66876fbe43b" [label="sha256:11898e4dfe42bc30cd03cc16508975cbf441aab5ba5b82e85154b66876fbe43b" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:6be51697b1cfa47c5d3762c3a3fe932200673a2d88690fc7fa8d133a40e5b2b4" [label=""];
  "sha256:b4425aad9c26b7e7c06eb1c48f4f4bbcc6e64fc9a8ca964b8301c78a58fd3521" -> "sha256:6be51697b1cfa47c5d3762c3a3fe932200673a2d88690fc7fa8d133a40e5b2b4" [label=""];
  "sha256:6be51697b1cfa47c5d3762c3a3fe932200673a2d88690fc7fa8d133a40e5b2b4" -> "sha256:bb0f1a7137b2dc1a341999c26b6d04ac9d9c901099a937399e08ee97db0dbad5" [label=""];
  "sha256:bb0f1a7137b2dc1a341999c26b6d04ac9d9c901099a937399e08ee97db0dbad5" -> "sha256:11898e4dfe42bc30cd03cc16508975cbf441aab5ba5b82e85154b66876fbe43b" [label=""];
}

