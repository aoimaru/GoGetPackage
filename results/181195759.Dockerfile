[app/sources/181195759.Dockerfile]
digraph {
  "sha256:882712b7b18aedda2074bd62f1152dbfda979d53df7eb02c721db29ac875f244" [label="local://context" shape="ellipse"];
  "sha256:36a69aaf3f900080fa960735f5f488d4fc63bc7dd3b8a14ce431f23a96b501b6" [label="copy{src=/rootfs.tar.gz, dest=/}" shape="note"];
  "sha256:29bfb4c16dc3ca2a2eae5ebb9c2b15e731a2a3ba2a2b9394edaf7f05a6c97707" [label="copy{src=/UTC, dest=/etc/localtime}" shape="note"];
  "sha256:c30a661a7f7fae891ddf191b47cc2da9ce4204eb6183de80d86a7e9068fc7722" [label="sha256:c30a661a7f7fae891ddf191b47cc2da9ce4204eb6183de80d86a7e9068fc7722" shape="plaintext"];
  "sha256:882712b7b18aedda2074bd62f1152dbfda979d53df7eb02c721db29ac875f244" -> "sha256:36a69aaf3f900080fa960735f5f488d4fc63bc7dd3b8a14ce431f23a96b501b6" [label=""];
  "sha256:36a69aaf3f900080fa960735f5f488d4fc63bc7dd3b8a14ce431f23a96b501b6" -> "sha256:29bfb4c16dc3ca2a2eae5ebb9c2b15e731a2a3ba2a2b9394edaf7f05a6c97707" [label=""];
  "sha256:882712b7b18aedda2074bd62f1152dbfda979d53df7eb02c721db29ac875f244" -> "sha256:29bfb4c16dc3ca2a2eae5ebb9c2b15e731a2a3ba2a2b9394edaf7f05a6c97707" [label=""];
  "sha256:29bfb4c16dc3ca2a2eae5ebb9c2b15e731a2a3ba2a2b9394edaf7f05a6c97707" -> "sha256:c30a661a7f7fae891ddf191b47cc2da9ce4204eb6183de80d86a7e9068fc7722" [label=""];
}

