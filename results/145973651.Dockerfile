[app/sources/145973651.Dockerfile]
digraph {
  "sha256:c127c440282553679b2eecea41c77852eef948163de39055d472d9739a517951" [label="docker-image://docker.io/pshannon/trenashinybase:latest" shape="ellipse"];
  "sha256:b3731c9957beaf51e216f3bcdfbe8e3e0fe44fca8489870f473a3c74b6c179f5" [label="local://context" shape="ellipse"];
  "sha256:6d618117f7822bb34f7596f072d8f06959a29cee4de53548c5ab12c9542e1a98" [label="copy{src=/Rprofile.site, dest=/usr/local/lib/R/etc/}" shape="note"];
  "sha256:49eda68127ac30701a7b36ebc8b5af521d039f1749c99f4e038e22657ff5a0ae" [label="/bin/sh -c mkdir -p /home/trena/app" shape="box"];
  "sha256:5ad87a6634825fe00feeba51f88a407a553091f27a82cd41a955b01670408aea" [label="mkdir{path=/home/trena/app}" shape="note"];
  "sha256:bb6c86c0f38e0be38304eaeae3c0c348039a52efedc2fe3fc249aefc53dee71d" [label="copy{src=/app/*, dest=/home/trena/app/}" shape="note"];
  "sha256:b67642f1634127f1dfedca616d6d973cf004f3fec60b08f7c022b741a0995701" [label="sha256:b67642f1634127f1dfedca616d6d973cf004f3fec60b08f7c022b741a0995701" shape="plaintext"];
  "sha256:c127c440282553679b2eecea41c77852eef948163de39055d472d9739a517951" -> "sha256:6d618117f7822bb34f7596f072d8f06959a29cee4de53548c5ab12c9542e1a98" [label=""];
  "sha256:b3731c9957beaf51e216f3bcdfbe8e3e0fe44fca8489870f473a3c74b6c179f5" -> "sha256:6d618117f7822bb34f7596f072d8f06959a29cee4de53548c5ab12c9542e1a98" [label=""];
  "sha256:6d618117f7822bb34f7596f072d8f06959a29cee4de53548c5ab12c9542e1a98" -> "sha256:49eda68127ac30701a7b36ebc8b5af521d039f1749c99f4e038e22657ff5a0ae" [label=""];
  "sha256:49eda68127ac30701a7b36ebc8b5af521d039f1749c99f4e038e22657ff5a0ae" -> "sha256:5ad87a6634825fe00feeba51f88a407a553091f27a82cd41a955b01670408aea" [label=""];
  "sha256:5ad87a6634825fe00feeba51f88a407a553091f27a82cd41a955b01670408aea" -> "sha256:bb6c86c0f38e0be38304eaeae3c0c348039a52efedc2fe3fc249aefc53dee71d" [label=""];
  "sha256:b3731c9957beaf51e216f3bcdfbe8e3e0fe44fca8489870f473a3c74b6c179f5" -> "sha256:bb6c86c0f38e0be38304eaeae3c0c348039a52efedc2fe3fc249aefc53dee71d" [label=""];
  "sha256:bb6c86c0f38e0be38304eaeae3c0c348039a52efedc2fe3fc249aefc53dee71d" -> "sha256:b67642f1634127f1dfedca616d6d973cf004f3fec60b08f7c022b741a0995701" [label=""];
}

