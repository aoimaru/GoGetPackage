[app/sources/342067770.Dockerfile]
digraph {
  "sha256:2e0360e5bed6afec437ec7056887c0e7e63bbd87cec9a445fc3fd7bed1666831" [label="local://context" shape="ellipse"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:b9279870befbfa6f30baebc36c9f01f9cd247853062d792e4c785d1daf4d58b7" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:3ea0fd858b014940db890a60dbcc6a2a92d3a1ebf66ee44f94e59bb97f3c8c4e" [label="pip install tables" shape="box"];
  "sha256:36ec276f6ea4b6ee281b4320810a5be03bf67541194e6b64e62c2048b9ac2aa0" [label="pip install numpy" shape="box"];
  "sha256:d8e57d46497dd29621df39aa21d1e3cc80f1aa6b4a7644c8534cb958dca7300b" [label="sha256:d8e57d46497dd29621df39aa21d1e3cc80f1aa6b4a7644c8534cb958dca7300b" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:b9279870befbfa6f30baebc36c9f01f9cd247853062d792e4c785d1daf4d58b7" [label=""];
  "sha256:2e0360e5bed6afec437ec7056887c0e7e63bbd87cec9a445fc3fd7bed1666831" -> "sha256:b9279870befbfa6f30baebc36c9f01f9cd247853062d792e4c785d1daf4d58b7" [label=""];
  "sha256:b9279870befbfa6f30baebc36c9f01f9cd247853062d792e4c785d1daf4d58b7" -> "sha256:3ea0fd858b014940db890a60dbcc6a2a92d3a1ebf66ee44f94e59bb97f3c8c4e" [label=""];
  "sha256:3ea0fd858b014940db890a60dbcc6a2a92d3a1ebf66ee44f94e59bb97f3c8c4e" -> "sha256:36ec276f6ea4b6ee281b4320810a5be03bf67541194e6b64e62c2048b9ac2aa0" [label=""];
  "sha256:36ec276f6ea4b6ee281b4320810a5be03bf67541194e6b64e62c2048b9ac2aa0" -> "sha256:d8e57d46497dd29621df39aa21d1e3cc80f1aa6b4a7644c8534cb958dca7300b" [label=""];
}

