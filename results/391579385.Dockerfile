[app/sources/391579385.Dockerfile]
digraph {
  "sha256:c025c2da0d4d82d45d5f2a98b1f20c0a4531302b79db8d32af1dd6e94eee8fa3" [label="docker-image://docker.io/library/python:3" shape="ellipse"];
  "sha256:33c673ff265ef375b67694cd357053eab698f1dc13b19fc8b1c05221e47530ed" [label="mkdir{path=/usr/src}" shape="note"];
  "sha256:ae8e441153dc6dc008f8e01cc716c791abaa145e00e2374d00e862476ecfb541" [label="/bin/sh -c git clone https://github.com/D4-project/analyzer-d4-passivedns.git" shape="box"];
  "sha256:9b0899cbff03f8e59de3554dc385745257b55495e548f8a80e4a0ebaa42637a5" [label="mkdir{path=/usr/src/analyzer-d4-passivedns}" shape="note"];
  "sha256:4f9042310f9d210dc7a77c06702623dda07c7c902cc6aa32b86bd6506da02653" [label="/bin/sh -c pip install --no-cache-dir -r requirements" shape="box"];
  "sha256:0ec04994f795f12373c85d8be64e5bb330f6c0aec1dfc2ac29f8e10aa5e6fe46" [label="mkdir{path=/usr/src/analyzer-d4-passivedns/bin}" shape="note"];
  "sha256:f0cbbc5217f68ae046432f43ef02ba81c99c9c86452a65fee8ad50e77e23ce1b" [label="/bin/sh -c cp ../etc/analyzer.conf.sample ../etc/analyzer.conf" shape="box"];
  "sha256:57d129133cae44fd01619110d1321a8bbca5b21a6642e3a7fc55cbf73d57a823" [label="sha256:57d129133cae44fd01619110d1321a8bbca5b21a6642e3a7fc55cbf73d57a823" shape="plaintext"];
  "sha256:c025c2da0d4d82d45d5f2a98b1f20c0a4531302b79db8d32af1dd6e94eee8fa3" -> "sha256:33c673ff265ef375b67694cd357053eab698f1dc13b19fc8b1c05221e47530ed" [label=""];
  "sha256:33c673ff265ef375b67694cd357053eab698f1dc13b19fc8b1c05221e47530ed" -> "sha256:ae8e441153dc6dc008f8e01cc716c791abaa145e00e2374d00e862476ecfb541" [label=""];
  "sha256:ae8e441153dc6dc008f8e01cc716c791abaa145e00e2374d00e862476ecfb541" -> "sha256:9b0899cbff03f8e59de3554dc385745257b55495e548f8a80e4a0ebaa42637a5" [label=""];
  "sha256:9b0899cbff03f8e59de3554dc385745257b55495e548f8a80e4a0ebaa42637a5" -> "sha256:4f9042310f9d210dc7a77c06702623dda07c7c902cc6aa32b86bd6506da02653" [label=""];
  "sha256:4f9042310f9d210dc7a77c06702623dda07c7c902cc6aa32b86bd6506da02653" -> "sha256:0ec04994f795f12373c85d8be64e5bb330f6c0aec1dfc2ac29f8e10aa5e6fe46" [label=""];
  "sha256:0ec04994f795f12373c85d8be64e5bb330f6c0aec1dfc2ac29f8e10aa5e6fe46" -> "sha256:f0cbbc5217f68ae046432f43ef02ba81c99c9c86452a65fee8ad50e77e23ce1b" [label=""];
  "sha256:f0cbbc5217f68ae046432f43ef02ba81c99c9c86452a65fee8ad50e77e23ce1b" -> "sha256:57d129133cae44fd01619110d1321a8bbca5b21a6642e3a7fc55cbf73d57a823" [label=""];
}

