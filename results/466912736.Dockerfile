[app/sources/466912736.Dockerfile]
digraph {
  "sha256:8f7970040209ccbacc78f4ff9e980c1c2ff50bd2436d22d528f4ec3e5a9fc0e2" [label="docker-image://docker.io/tensorflow/tensorflow:1.11.0-gpu-py3" shape="ellipse"];
  "sha256:79a31a4190a27793a24532053b4599901b342de1e83c62d1667a14883b180c13" [label="local://context" shape="ellipse"];
  "sha256:a6362666efea9467fbc36930f5914af2e0683b345ccb4eb8829a7900365dfb2b" [label="copy{src=/deepseg, dest=/root/deepseg}" shape="note"];
  "sha256:a115fe2010dae7c19103b908a0d488d9feb6e8c9eeeee01eec632fc8cba3a4aa" [label="mkdir{path=/root/deepseg}" shape="note"];
  "sha256:7632be70b74cc509c38b7e9d4d994a486b9a3f88fa5528410682227847f25fbd" [label="sha256:7632be70b74cc509c38b7e9d4d994a486b9a3f88fa5528410682227847f25fbd" shape="plaintext"];
  "sha256:8f7970040209ccbacc78f4ff9e980c1c2ff50bd2436d22d528f4ec3e5a9fc0e2" -> "sha256:a6362666efea9467fbc36930f5914af2e0683b345ccb4eb8829a7900365dfb2b" [label=""];
  "sha256:79a31a4190a27793a24532053b4599901b342de1e83c62d1667a14883b180c13" -> "sha256:a6362666efea9467fbc36930f5914af2e0683b345ccb4eb8829a7900365dfb2b" [label=""];
  "sha256:a6362666efea9467fbc36930f5914af2e0683b345ccb4eb8829a7900365dfb2b" -> "sha256:a115fe2010dae7c19103b908a0d488d9feb6e8c9eeeee01eec632fc8cba3a4aa" [label=""];
  "sha256:a115fe2010dae7c19103b908a0d488d9feb6e8c9eeeee01eec632fc8cba3a4aa" -> "sha256:7632be70b74cc509c38b7e9d4d994a486b9a3f88fa5528410682227847f25fbd" [label=""];
}

