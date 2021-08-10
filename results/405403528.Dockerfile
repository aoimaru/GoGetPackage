[app/sources/405403528.Dockerfile]
digraph {
  "sha256:b8fb73ba8882930ef7ed5215fa026ca36a643dcf000ebd081936df4d6cba73ff" [label="local://context" shape="ellipse"];
  "sha256:6f135f490b6492e0afe3cfd87ed52c212cbd15f0e9071468670e3681093db144" [label="copy{src=/ca-certificates.crt, dest=/etc/ssl/certs/}" shape="note"];
  "sha256:956e81e2085373510007d85bdbf08e9ba5c89e94c8ce773e6579a30f023ff21a" [label="copy{src=/h2demo, dest=/}" shape="note"];
  "sha256:3cc083f3962bfafc1109f45a8b0bb50adccc4b0c5df0323daa5e8c2ca89c12d1" [label="sha256:3cc083f3962bfafc1109f45a8b0bb50adccc4b0c5df0323daa5e8c2ca89c12d1" shape="plaintext"];
  "sha256:b8fb73ba8882930ef7ed5215fa026ca36a643dcf000ebd081936df4d6cba73ff" -> "sha256:6f135f490b6492e0afe3cfd87ed52c212cbd15f0e9071468670e3681093db144" [label=""];
  "sha256:6f135f490b6492e0afe3cfd87ed52c212cbd15f0e9071468670e3681093db144" -> "sha256:956e81e2085373510007d85bdbf08e9ba5c89e94c8ce773e6579a30f023ff21a" [label=""];
  "sha256:b8fb73ba8882930ef7ed5215fa026ca36a643dcf000ebd081936df4d6cba73ff" -> "sha256:956e81e2085373510007d85bdbf08e9ba5c89e94c8ce773e6579a30f023ff21a" [label=""];
  "sha256:956e81e2085373510007d85bdbf08e9ba5c89e94c8ce773e6579a30f023ff21a" -> "sha256:3cc083f3962bfafc1109f45a8b0bb50adccc4b0c5df0323daa5e8c2ca89c12d1" [label=""];
}

