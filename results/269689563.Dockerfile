[app/sources/269689563.Dockerfile]
digraph {
  "sha256:e231423e04f1becf0d9b5f160a852a2b2596ed150e82b9d747d698a9782e3888" [label="docker-image://docker.io/frolvlad/alpine-oraclejdk8:slim" shape="ellipse"];
  "sha256:7f47cc9b34c69bfff2d1658a9e036f4aad40bdbca22736c2838beea1c88b43f5" [label="local://context" shape="ellipse"];
  "sha256:be6787dd6109b667ec060856557621e5316d85bc60d37cd7655b80589b11e4fb" [label="copy{src=/cloudE-pay-provider-1.0.0.jar, dest=/app.jar}" shape="note"];
  "sha256:afe4168ef7aeb62dcaea3529bd8b3f5690dacf59523649df12ac172d3cc93d6f" [label="sha256:afe4168ef7aeb62dcaea3529bd8b3f5690dacf59523649df12ac172d3cc93d6f" shape="plaintext"];
  "sha256:e231423e04f1becf0d9b5f160a852a2b2596ed150e82b9d747d698a9782e3888" -> "sha256:be6787dd6109b667ec060856557621e5316d85bc60d37cd7655b80589b11e4fb" [label=""];
  "sha256:7f47cc9b34c69bfff2d1658a9e036f4aad40bdbca22736c2838beea1c88b43f5" -> "sha256:be6787dd6109b667ec060856557621e5316d85bc60d37cd7655b80589b11e4fb" [label=""];
  "sha256:be6787dd6109b667ec060856557621e5316d85bc60d37cd7655b80589b11e4fb" -> "sha256:afe4168ef7aeb62dcaea3529bd8b3f5690dacf59523649df12ac172d3cc93d6f" [label=""];
}

