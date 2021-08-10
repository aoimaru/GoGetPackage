[app/sources/341898890.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:66dcc17da972ba86d6e55304b5753111bd04340d334d2f077cd265df623e09bc" [label="local://context" shape="ellipse"];
  "sha256:7fabc05978a473bcd28afa9d57bff8f20be9479c71dcf6bec6e1266f17098c86" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:90a10f9e54b63425c9fa3b85605aaef6f75f6c39fe89687ab72b48fdbf688f92" [label="pip install gevent" shape="box"];
  "sha256:18b7ff2d94a466f275cfe303fec26711aa1e38bbdc1cb17b72fd86ebace7e7cf" [label="pip install gevent" shape="box"];
  "sha256:304fac5978bf02e0e3af8d237945d2fa323a1052a91b63ca292e0d9cbf8d654f" [label="pip install gevent" shape="box"];
  "sha256:2c0e6ae7e3ee4005dab05f7fd95332d81e75bee33ae26897ef6097f5e8836af3" [label="sha256:2c0e6ae7e3ee4005dab05f7fd95332d81e75bee33ae26897ef6097f5e8836af3" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:7fabc05978a473bcd28afa9d57bff8f20be9479c71dcf6bec6e1266f17098c86" [label=""];
  "sha256:66dcc17da972ba86d6e55304b5753111bd04340d334d2f077cd265df623e09bc" -> "sha256:7fabc05978a473bcd28afa9d57bff8f20be9479c71dcf6bec6e1266f17098c86" [label=""];
  "sha256:7fabc05978a473bcd28afa9d57bff8f20be9479c71dcf6bec6e1266f17098c86" -> "sha256:90a10f9e54b63425c9fa3b85605aaef6f75f6c39fe89687ab72b48fdbf688f92" [label=""];
  "sha256:90a10f9e54b63425c9fa3b85605aaef6f75f6c39fe89687ab72b48fdbf688f92" -> "sha256:18b7ff2d94a466f275cfe303fec26711aa1e38bbdc1cb17b72fd86ebace7e7cf" [label=""];
  "sha256:18b7ff2d94a466f275cfe303fec26711aa1e38bbdc1cb17b72fd86ebace7e7cf" -> "sha256:304fac5978bf02e0e3af8d237945d2fa323a1052a91b63ca292e0d9cbf8d654f" [label=""];
  "sha256:304fac5978bf02e0e3af8d237945d2fa323a1052a91b63ca292e0d9cbf8d654f" -> "sha256:2c0e6ae7e3ee4005dab05f7fd95332d81e75bee33ae26897ef6097f5e8836af3" [label=""];
}

