[app/sources/338566495.Dockerfile]
digraph {
  "sha256:5b7d6c822dae597c79af634e04838f8eff3e3d6b08530895f63cbbb1df90bf8a" [label="local://context" shape="ellipse"];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" [label="docker-image://docker.io/library/golang:latest" shape="ellipse"];
  "sha256:fb999393a9267c212ef5060e2569baa22c87fb3e168ee4bf865db7338cf7f816" [label="copy{src=/src, dest=/home}" shape="note"];
  "sha256:0c7928acbddac9ca2491d20c187a89f329d268fa5c21742133612adeba7dea4c" [label="sha256:0c7928acbddac9ca2491d20c187a89f329d268fa5c21742133612adeba7dea4c" shape="plaintext"];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" -> "sha256:fb999393a9267c212ef5060e2569baa22c87fb3e168ee4bf865db7338cf7f816" [label=""];
  "sha256:5b7d6c822dae597c79af634e04838f8eff3e3d6b08530895f63cbbb1df90bf8a" -> "sha256:fb999393a9267c212ef5060e2569baa22c87fb3e168ee4bf865db7338cf7f816" [label=""];
  "sha256:fb999393a9267c212ef5060e2569baa22c87fb3e168ee4bf865db7338cf7f816" -> "sha256:0c7928acbddac9ca2491d20c187a89f329d268fa5c21742133612adeba7dea4c" [label=""];
}

