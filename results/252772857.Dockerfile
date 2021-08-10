[app/sources/252772857.Dockerfile]
digraph {
  "sha256:53d27a5cb692e7d21f47c9cfdfd1010a621d253745af3b5cf6c61f5b6295389b" [label="docker-image://docker.io/library/python:3@sha256:7a93befe45f3afb6b3377c91ef1e8b28e7b84dc70bbb43fc723415d1ad613bdc" shape="ellipse"];
  "sha256:0ad2e88257befaef7001445a72230542ac79d84f74c30fb4ee1a38ef3a4c635d" [label="/bin/sh -c git clone https://github.com/linickx/crassh.git" shape="box"];
  "sha256:de8eee96a5627c1d4c59b0bb6822a748901109ea385c08e6c4c4d585f92f4e71" [label="mkdir{path=/crassh}" shape="note"];
  "sha256:c74e21c1f9a472bfbb70e8ea2646ed8c523b8e62b5d072338f0cf8a6597ee936" [label="/bin/sh -c /bin/bash -c \"pip install -r requirements.txt\"" shape="box"];
  "sha256:030dc1f5efe2f3168f0a35dbd6e4727b9ccf4708999375f0fea12fe7cd4406d5" [label="sha256:030dc1f5efe2f3168f0a35dbd6e4727b9ccf4708999375f0fea12fe7cd4406d5" shape="plaintext"];
  "sha256:53d27a5cb692e7d21f47c9cfdfd1010a621d253745af3b5cf6c61f5b6295389b" -> "sha256:0ad2e88257befaef7001445a72230542ac79d84f74c30fb4ee1a38ef3a4c635d" [label=""];
  "sha256:0ad2e88257befaef7001445a72230542ac79d84f74c30fb4ee1a38ef3a4c635d" -> "sha256:de8eee96a5627c1d4c59b0bb6822a748901109ea385c08e6c4c4d585f92f4e71" [label=""];
  "sha256:de8eee96a5627c1d4c59b0bb6822a748901109ea385c08e6c4c4d585f92f4e71" -> "sha256:c74e21c1f9a472bfbb70e8ea2646ed8c523b8e62b5d072338f0cf8a6597ee936" [label=""];
  "sha256:c74e21c1f9a472bfbb70e8ea2646ed8c523b8e62b5d072338f0cf8a6597ee936" -> "sha256:030dc1f5efe2f3168f0a35dbd6e4727b9ccf4708999375f0fea12fe7cd4406d5" [label=""];
}

