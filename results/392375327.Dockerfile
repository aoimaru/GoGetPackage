[app/sources/392375327.Dockerfile]
digraph {
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" [label="docker-image://docker.io/library/fedora:latest" shape="ellipse"];
  "sha256:60a2df09744e25366e968178769983cfd02fc541b9288335fab9da6e8962cbf9" [label="local://context" shape="ellipse"];
  "sha256:d46d71ec904b3a641fe439fc57f6a10d0ced36da88ead535309046ff09a53bb9" [label="copy{src=/kube-aggregator, dest=/}" shape="note"];
  "sha256:5ea69c3e3df6d25a4a9473359b97f456b79adda5abf48d72bc2565ec888cd6fd" [label="sha256:5ea69c3e3df6d25a4a9473359b97f456b79adda5abf48d72bc2565ec888cd6fd" shape="plaintext"];
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" -> "sha256:d46d71ec904b3a641fe439fc57f6a10d0ced36da88ead535309046ff09a53bb9" [label=""];
  "sha256:60a2df09744e25366e968178769983cfd02fc541b9288335fab9da6e8962cbf9" -> "sha256:d46d71ec904b3a641fe439fc57f6a10d0ced36da88ead535309046ff09a53bb9" [label=""];
  "sha256:d46d71ec904b3a641fe439fc57f6a10d0ced36da88ead535309046ff09a53bb9" -> "sha256:5ea69c3e3df6d25a4a9473359b97f456b79adda5abf48d72bc2565ec888cd6fd" [label=""];
}

