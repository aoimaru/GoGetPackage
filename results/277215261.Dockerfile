[app/sources/277215261.Dockerfile]
digraph {
  "sha256:d680c6a82813d080081fbc3c024d21ddfa7ff995981cc7b4bfafe55edf80a319" [label="docker-image://docker.io/library/openjdk:8-jdk-alpine" shape="ellipse"];
  "sha256:7034f372be70491e0e957260eaf509f6bef2adf7342be253106c16163c0a4a5d" [label="local://context" shape="ellipse"];
  "sha256:985ea76fec73f51a53f622ed5eded025c9bf419bc83878b4ba931b70d575b2c7" [label="copy{src=/, dest=/app.jar}" shape="note"];
  "sha256:f1ec26c5011f3cae2e283eae947d4ca1fe7729683d26f0af0d66fd6a09e1e03e" [label="sha256:f1ec26c5011f3cae2e283eae947d4ca1fe7729683d26f0af0d66fd6a09e1e03e" shape="plaintext"];
  "sha256:d680c6a82813d080081fbc3c024d21ddfa7ff995981cc7b4bfafe55edf80a319" -> "sha256:985ea76fec73f51a53f622ed5eded025c9bf419bc83878b4ba931b70d575b2c7" [label=""];
  "sha256:7034f372be70491e0e957260eaf509f6bef2adf7342be253106c16163c0a4a5d" -> "sha256:985ea76fec73f51a53f622ed5eded025c9bf419bc83878b4ba931b70d575b2c7" [label=""];
  "sha256:985ea76fec73f51a53f622ed5eded025c9bf419bc83878b4ba931b70d575b2c7" -> "sha256:f1ec26c5011f3cae2e283eae947d4ca1fe7729683d26f0af0d66fd6a09e1e03e" [label=""];
}

