[app/sources/341900920.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:439b1088302cf76409347ce59390306defe1dde31ac434d81b0f1911959203a3" [label="local://context" shape="ellipse"];
  "sha256:b1017f6c694d8b64ac199fbab523fc94199540d6c8679c5447b7a63ea331dd36" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:cd0ad27c40596edcabd7d1442abb864ed44be135d02bb3a4c20591739a244e00" [label="pip install misaka" shape="box"];
  "sha256:80a6db662c9a635041ee4387eb014c3fa1e7e713aa6c7c167b0acb7194329e3b" [label="sha256:80a6db662c9a635041ee4387eb014c3fa1e7e713aa6c7c167b0acb7194329e3b" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:b1017f6c694d8b64ac199fbab523fc94199540d6c8679c5447b7a63ea331dd36" [label=""];
  "sha256:439b1088302cf76409347ce59390306defe1dde31ac434d81b0f1911959203a3" -> "sha256:b1017f6c694d8b64ac199fbab523fc94199540d6c8679c5447b7a63ea331dd36" [label=""];
  "sha256:b1017f6c694d8b64ac199fbab523fc94199540d6c8679c5447b7a63ea331dd36" -> "sha256:cd0ad27c40596edcabd7d1442abb864ed44be135d02bb3a4c20591739a244e00" [label=""];
  "sha256:cd0ad27c40596edcabd7d1442abb864ed44be135d02bb3a4c20591739a244e00" -> "sha256:80a6db662c9a635041ee4387eb014c3fa1e7e713aa6c7c167b0acb7194329e3b" [label=""];
}
