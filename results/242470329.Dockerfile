[app/sources/242470329.Dockerfile]
digraph {
  "sha256:97f6e98ab13c3ef8c24d32c536d3ad21a8158439c7e3a98a4aadf1abcd97c3a4" [label="docker-image://docker.io/library/raster-vision-base:latest" shape="ellipse"];
  "sha256:916053eab49bd296666367a436cc4158a907b10c58eb6fe35f4c291ed1cf0f19" [label="local://context" shape="ellipse"];
  "sha256:6683234eb7e5585c8653bc67c23d64a15e15eaf4dc0509e875b36c29e7873a83" [label="copy{src=/scripts/rastervision, dest=/usr/local/bin/}" shape="note"];
  "sha256:ceafa747d16e2bcf81273bdbe30a2d73e6eea980f491522ba58c4663c53e15fd" [label="copy{src=/rastervision, dest=/opt/src/rastervision}" shape="note"];
  "sha256:16855667f248cad6dbba4a8ac2ff2157d787d8c2426b36b35ffa708708989c47" [label="copy{src=/scripts/compile, dest=/opt/src/scripts/compile}" shape="note"];
  "sha256:c5b1641db680b62216400f98d53c6bc76c545a915479ab51b3478401a7517b0e" [label="/bin/sh -c /opt/src/scripts/compile" shape="box"];
  "sha256:75fad830f7815bc619a76a95be1350c39fd688b09c614b48ed0cb31013574c1c" [label="sha256:75fad830f7815bc619a76a95be1350c39fd688b09c614b48ed0cb31013574c1c" shape="plaintext"];
  "sha256:97f6e98ab13c3ef8c24d32c536d3ad21a8158439c7e3a98a4aadf1abcd97c3a4" -> "sha256:6683234eb7e5585c8653bc67c23d64a15e15eaf4dc0509e875b36c29e7873a83" [label=""];
  "sha256:916053eab49bd296666367a436cc4158a907b10c58eb6fe35f4c291ed1cf0f19" -> "sha256:6683234eb7e5585c8653bc67c23d64a15e15eaf4dc0509e875b36c29e7873a83" [label=""];
  "sha256:6683234eb7e5585c8653bc67c23d64a15e15eaf4dc0509e875b36c29e7873a83" -> "sha256:ceafa747d16e2bcf81273bdbe30a2d73e6eea980f491522ba58c4663c53e15fd" [label=""];
  "sha256:916053eab49bd296666367a436cc4158a907b10c58eb6fe35f4c291ed1cf0f19" -> "sha256:ceafa747d16e2bcf81273bdbe30a2d73e6eea980f491522ba58c4663c53e15fd" [label=""];
  "sha256:ceafa747d16e2bcf81273bdbe30a2d73e6eea980f491522ba58c4663c53e15fd" -> "sha256:16855667f248cad6dbba4a8ac2ff2157d787d8c2426b36b35ffa708708989c47" [label=""];
  "sha256:916053eab49bd296666367a436cc4158a907b10c58eb6fe35f4c291ed1cf0f19" -> "sha256:16855667f248cad6dbba4a8ac2ff2157d787d8c2426b36b35ffa708708989c47" [label=""];
  "sha256:16855667f248cad6dbba4a8ac2ff2157d787d8c2426b36b35ffa708708989c47" -> "sha256:c5b1641db680b62216400f98d53c6bc76c545a915479ab51b3478401a7517b0e" [label=""];
  "sha256:c5b1641db680b62216400f98d53c6bc76c545a915479ab51b3478401a7517b0e" -> "sha256:75fad830f7815bc619a76a95be1350c39fd688b09c614b48ed0cb31013574c1c" [label=""];
}

