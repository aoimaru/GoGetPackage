[app/sources/326523593.Dockerfile]
digraph {
  "sha256:9c4d21a419da60f9fcc52a5e827cbd976adfa9a6afc84927a8790862376b75c2" [label="docker-image://docker.io/library/node:carbon" shape="ellipse"];
  "sha256:6ec64d381258ad15a0736404583041da26ed2bb14fcf973765000725fafec96b" [label="mkdir{path=/app}" shape="note"];
  "sha256:a2c6ba50d97b8fa21a6a74d077f3dd0f05c1f9d7c4c6c050083f4f14b7ea88bc" [label="local://context" shape="ellipse"];
  "sha256:9e302a1e006ace2d9dd0d6ac4f8669b93014a8ee928a7d88aa5f1b72de0a2296" [label="copy{src=/package.json, dest=/app/}" shape="note"];
  "sha256:6c2f39cf725c43207e9cd23e80ea58ffba83c97c3ec0e2c6dc97641df14dc9c1" [label="/bin/sh -c npm install" shape="box"];
  "sha256:2275a02fff8cfb8167a22c6f62c1d0f81e614a27e23254da501c6ca1593d15e1" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:88302692e6546e0ea2db7bba03841644105ab4df567a79e25ac84a6b5005a984" [label="sha256:88302692e6546e0ea2db7bba03841644105ab4df567a79e25ac84a6b5005a984" shape="plaintext"];
  "sha256:9c4d21a419da60f9fcc52a5e827cbd976adfa9a6afc84927a8790862376b75c2" -> "sha256:6ec64d381258ad15a0736404583041da26ed2bb14fcf973765000725fafec96b" [label=""];
  "sha256:6ec64d381258ad15a0736404583041da26ed2bb14fcf973765000725fafec96b" -> "sha256:9e302a1e006ace2d9dd0d6ac4f8669b93014a8ee928a7d88aa5f1b72de0a2296" [label=""];
  "sha256:a2c6ba50d97b8fa21a6a74d077f3dd0f05c1f9d7c4c6c050083f4f14b7ea88bc" -> "sha256:9e302a1e006ace2d9dd0d6ac4f8669b93014a8ee928a7d88aa5f1b72de0a2296" [label=""];
  "sha256:9e302a1e006ace2d9dd0d6ac4f8669b93014a8ee928a7d88aa5f1b72de0a2296" -> "sha256:6c2f39cf725c43207e9cd23e80ea58ffba83c97c3ec0e2c6dc97641df14dc9c1" [label=""];
  "sha256:6c2f39cf725c43207e9cd23e80ea58ffba83c97c3ec0e2c6dc97641df14dc9c1" -> "sha256:2275a02fff8cfb8167a22c6f62c1d0f81e614a27e23254da501c6ca1593d15e1" [label=""];
  "sha256:a2c6ba50d97b8fa21a6a74d077f3dd0f05c1f9d7c4c6c050083f4f14b7ea88bc" -> "sha256:2275a02fff8cfb8167a22c6f62c1d0f81e614a27e23254da501c6ca1593d15e1" [label=""];
  "sha256:2275a02fff8cfb8167a22c6f62c1d0f81e614a27e23254da501c6ca1593d15e1" -> "sha256:88302692e6546e0ea2db7bba03841644105ab4df567a79e25ac84a6b5005a984" [label=""];
}

