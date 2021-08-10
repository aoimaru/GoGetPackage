[app/sources/423938423.Dockerfile]
digraph {
  "sha256:39a7f8daa0bab1ec0fd77aa11e4257159ad320fa221f2901f608a2a2528753cc" [label="local://context" shape="ellipse"];
  "sha256:f87916f7274f438daee376262feb44304435daf188d3dc4620c3c3130fb08067" [label="docker-image://registry.access.redhat.com/ubi7-dev-preview/ubi-minimal:7.6" shape="ellipse"];
  "sha256:a45b4f8f46aa32cbe45fd79bc482826a8e8c1457e53b0599ff61c689b357080b" [label="copy{src=/build/_output/bin/proxier, dest=/usr/local/bin/proxier}" shape="note"];
  "sha256:50c8e8663b06c6f2aaff1b1f5cd5e48ef0d7d5c04a606790107ee802728854e3" [label="copy{src=/build/bin, dest=/usr/local/bin}" shape="note"];
  "sha256:206978b6c16227e172f5dbf1464c059eb31db940bd3cdbddfa0eb0ea5ad9096b" [label="/bin/sh -c /usr/local/bin/user_setup" shape="box"];
  "sha256:96486f800876369e1698ec60da1c15f577946b61196d0f9d5a9f38dfce2e83be" [label="sha256:96486f800876369e1698ec60da1c15f577946b61196d0f9d5a9f38dfce2e83be" shape="plaintext"];
  "sha256:f87916f7274f438daee376262feb44304435daf188d3dc4620c3c3130fb08067" -> "sha256:a45b4f8f46aa32cbe45fd79bc482826a8e8c1457e53b0599ff61c689b357080b" [label=""];
  "sha256:39a7f8daa0bab1ec0fd77aa11e4257159ad320fa221f2901f608a2a2528753cc" -> "sha256:a45b4f8f46aa32cbe45fd79bc482826a8e8c1457e53b0599ff61c689b357080b" [label=""];
  "sha256:a45b4f8f46aa32cbe45fd79bc482826a8e8c1457e53b0599ff61c689b357080b" -> "sha256:50c8e8663b06c6f2aaff1b1f5cd5e48ef0d7d5c04a606790107ee802728854e3" [label=""];
  "sha256:39a7f8daa0bab1ec0fd77aa11e4257159ad320fa221f2901f608a2a2528753cc" -> "sha256:50c8e8663b06c6f2aaff1b1f5cd5e48ef0d7d5c04a606790107ee802728854e3" [label=""];
  "sha256:50c8e8663b06c6f2aaff1b1f5cd5e48ef0d7d5c04a606790107ee802728854e3" -> "sha256:206978b6c16227e172f5dbf1464c059eb31db940bd3cdbddfa0eb0ea5ad9096b" [label=""];
  "sha256:206978b6c16227e172f5dbf1464c059eb31db940bd3cdbddfa0eb0ea5ad9096b" -> "sha256:96486f800876369e1698ec60da1c15f577946b61196d0f9d5a9f38dfce2e83be" [label=""];
}

