[app/sources/282284296.Dockerfile]
digraph {
  "sha256:fcfd24ae0f49e70b74304735c5dd676ccc5e1ac66594d58f4c941f8740fdf31c" [label="docker-image://docker.io/library/node:8.12-alpine" shape="ellipse"];
  "sha256:c1c207d415427901f567f79761769f4c8c1342c6b5608e349fd1a87c38943240" [label="/bin/sh -c npm install elasticdump -g" shape="box"];
  "sha256:fe67a4cc12d735ebbdf5f4d403c1645a7c187fcc8a7efb3a0c03bed1e4dbfed5" [label="sha256:fe67a4cc12d735ebbdf5f4d403c1645a7c187fcc8a7efb3a0c03bed1e4dbfed5" shape="plaintext"];
  "sha256:fcfd24ae0f49e70b74304735c5dd676ccc5e1ac66594d58f4c941f8740fdf31c" -> "sha256:c1c207d415427901f567f79761769f4c8c1342c6b5608e349fd1a87c38943240" [label=""];
  "sha256:c1c207d415427901f567f79761769f4c8c1342c6b5608e349fd1a87c38943240" -> "sha256:fe67a4cc12d735ebbdf5f4d403c1645a7c187fcc8a7efb3a0c03bed1e4dbfed5" [label=""];
}

