[app/sources/350611778.Dockerfile]
digraph {
  "sha256:f4dfe2a5ad33f32188569ea421a8556459540d9a93263255883064cf89618d74" [label="docker-image://docker.io/gliderlabs/alpine:3.2" shape="ellipse"];
  "sha256:dbeeb423d789c00638e0f9763d1c0fb5f2b8da6885151474a134751d8672d675" [label="/bin/sh -c apk update && apk add go && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:0a045142e5d1328106b7a3cbf5bf3702b16578497fd679c20ee25378a8190132" [label="mkdir{path=/whereismypi}" shape="note"];
  "sha256:185db9799baf855f56adf2a5cb4a1d13d3f5ae6d5cf54546ad4753d15071d4a8" [label="local://context" shape="ellipse"];
  "sha256:e69877b8129643429dcc6901595e82db2ed0238efce5d6ce6f3ddc0a16c4aec7" [label="copy{src=/, dest=/whereismypi}" shape="note"];
  "sha256:efb75dfdf06f9b54a260df17e8aec8159028f87a2879547d9ddc8a34a26d469f" [label="/bin/sh -c go build ." shape="box"];
  "sha256:7f7318df5fdbd920e01c1e9d94607c11e7fed8c62425133315a5a1e0205e2ed1" [label="sha256:7f7318df5fdbd920e01c1e9d94607c11e7fed8c62425133315a5a1e0205e2ed1" shape="plaintext"];
  "sha256:f4dfe2a5ad33f32188569ea421a8556459540d9a93263255883064cf89618d74" -> "sha256:dbeeb423d789c00638e0f9763d1c0fb5f2b8da6885151474a134751d8672d675" [label=""];
  "sha256:dbeeb423d789c00638e0f9763d1c0fb5f2b8da6885151474a134751d8672d675" -> "sha256:0a045142e5d1328106b7a3cbf5bf3702b16578497fd679c20ee25378a8190132" [label=""];
  "sha256:0a045142e5d1328106b7a3cbf5bf3702b16578497fd679c20ee25378a8190132" -> "sha256:e69877b8129643429dcc6901595e82db2ed0238efce5d6ce6f3ddc0a16c4aec7" [label=""];
  "sha256:185db9799baf855f56adf2a5cb4a1d13d3f5ae6d5cf54546ad4753d15071d4a8" -> "sha256:e69877b8129643429dcc6901595e82db2ed0238efce5d6ce6f3ddc0a16c4aec7" [label=""];
  "sha256:e69877b8129643429dcc6901595e82db2ed0238efce5d6ce6f3ddc0a16c4aec7" -> "sha256:efb75dfdf06f9b54a260df17e8aec8159028f87a2879547d9ddc8a34a26d469f" [label=""];
  "sha256:efb75dfdf06f9b54a260df17e8aec8159028f87a2879547d9ddc8a34a26d469f" -> "sha256:7f7318df5fdbd920e01c1e9d94607c11e7fed8c62425133315a5a1e0205e2ed1" [label=""];
}

