[app/sources/274184343.Dockerfile]
digraph {
  "sha256:d680c6a82813d080081fbc3c024d21ddfa7ff995981cc7b4bfafe55edf80a319" [label="docker-image://docker.io/library/openjdk:8-jdk-alpine" shape="ellipse"];
  "sha256:65d0ca5a7bda9b05e36cdcde5b783a1ff1c1021af01d498c9da590fe4a2214ce" [label="/bin/sh -c adduser -D demo" shape="box"];
  "sha256:7690e5b9467f5fd226707cabedaed97d8f45f81598642d5dcda08bfb467420cb" [label="local://context" shape="ellipse"];
  "sha256:fb538dfe8b08e18294dbf54aeb2f420ed87a119137bc5425b23ff60f20f21497" [label="copy{src=/target/zuul-proxy-*.jar, dest=/app.jar}" shape="note"];
  "sha256:b57805272ad048f5e544eed9ab5727b674eae528c332e23be423989faaecce0d" [label="sha256:b57805272ad048f5e544eed9ab5727b674eae528c332e23be423989faaecce0d" shape="plaintext"];
  "sha256:d680c6a82813d080081fbc3c024d21ddfa7ff995981cc7b4bfafe55edf80a319" -> "sha256:65d0ca5a7bda9b05e36cdcde5b783a1ff1c1021af01d498c9da590fe4a2214ce" [label=""];
  "sha256:65d0ca5a7bda9b05e36cdcde5b783a1ff1c1021af01d498c9da590fe4a2214ce" -> "sha256:fb538dfe8b08e18294dbf54aeb2f420ed87a119137bc5425b23ff60f20f21497" [label=""];
  "sha256:7690e5b9467f5fd226707cabedaed97d8f45f81598642d5dcda08bfb467420cb" -> "sha256:fb538dfe8b08e18294dbf54aeb2f420ed87a119137bc5425b23ff60f20f21497" [label=""];
  "sha256:fb538dfe8b08e18294dbf54aeb2f420ed87a119137bc5425b23ff60f20f21497" -> "sha256:b57805272ad048f5e544eed9ab5727b674eae528c332e23be423989faaecce0d" [label=""];
}

