[app/sources/326133841.Dockerfile]
digraph {
  "sha256:1a4d13023e1f02f144bdd4a43a932e64091d5300c85aa95c062210b7156b8cba" [label="local://context" shape="ellipse"];
  "sha256:40158ffa491d9346788b3c527e895c3a834f96ccf0e31dea482d521b159dd2a3" [label="docker-image://docker.io/library/mysql:5.6" shape="ellipse"];
  "sha256:6785a8c43b514636e5d1129b478cbe6e153a8d09accbaec5f8ba123e1073a47e" [label="copy{src=/azurevote.sql, dest=/docker-entrypoint-initdb.d}" shape="note"];
  "sha256:ca6e41c201077fc0864be1abfb36a1cf160ec777cf067dff212b85cb19ffd0f1" [label="sha256:ca6e41c201077fc0864be1abfb36a1cf160ec777cf067dff212b85cb19ffd0f1" shape="plaintext"];
  "sha256:40158ffa491d9346788b3c527e895c3a834f96ccf0e31dea482d521b159dd2a3" -> "sha256:6785a8c43b514636e5d1129b478cbe6e153a8d09accbaec5f8ba123e1073a47e" [label=""];
  "sha256:1a4d13023e1f02f144bdd4a43a932e64091d5300c85aa95c062210b7156b8cba" -> "sha256:6785a8c43b514636e5d1129b478cbe6e153a8d09accbaec5f8ba123e1073a47e" [label=""];
  "sha256:6785a8c43b514636e5d1129b478cbe6e153a8d09accbaec5f8ba123e1073a47e" -> "sha256:ca6e41c201077fc0864be1abfb36a1cf160ec777cf067dff212b85cb19ffd0f1" [label=""];
}

