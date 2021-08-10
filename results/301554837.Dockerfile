[app/sources/301554837.Dockerfile]
digraph {
  "sha256:7712921e361c2b79c9f90ec009777b0c7c02f519b4f99e7595ce107b6d276b5f" [label="docker-image://docker.io/microsoft/mssql-server-windows-express:latest" shape="ellipse"];
  "sha256:6ab51d9d6a283e211a5fc22dec2ec90403027a2e27e133b99b728a14c87da86e" [label="local://context" shape="ellipse"];
  "sha256:07b613e11d9aa111093b72283fafc1dad9b5e10593867cb048bcf4095db16aca" [label="copy{src=/init.ps1, dest=/}" shape="note"];
  "sha256:0c9379cdb26287c2e7990c56fa59d268fd7a93e648c322249937e55b5a1c5a87" [label="sha256:0c9379cdb26287c2e7990c56fa59d268fd7a93e648c322249937e55b5a1c5a87" shape="plaintext"];
  "sha256:7712921e361c2b79c9f90ec009777b0c7c02f519b4f99e7595ce107b6d276b5f" -> "sha256:07b613e11d9aa111093b72283fafc1dad9b5e10593867cb048bcf4095db16aca" [label=""];
  "sha256:6ab51d9d6a283e211a5fc22dec2ec90403027a2e27e133b99b728a14c87da86e" -> "sha256:07b613e11d9aa111093b72283fafc1dad9b5e10593867cb048bcf4095db16aca" [label=""];
  "sha256:07b613e11d9aa111093b72283fafc1dad9b5e10593867cb048bcf4095db16aca" -> "sha256:0c9379cdb26287c2e7990c56fa59d268fd7a93e648c322249937e55b5a1c5a87" [label=""];
}

