[app/sources/438260127.Dockerfile]
digraph {
  "sha256:87a2b0f9980b01d3526f5af14ffd7ca1938f3a340ed810a054e014a026dc1f78" [label="local://context" shape="ellipse"];
  "sha256:082aaa850a55bda5bf9d7ecdbf6bd4591ed314bc76e426fa0e605d2c321141b4" [label="docker-image://docker.io/dockerfile/nodejs:latest" shape="ellipse"];
  "sha256:a4897947d3e6816363dca7243018fb05116369b0563b9256d5bb4b79d1fcdd6a" [label="copy{src=/src/api/package.json, dest=/app/src/api/package.json}" shape="note"];
  "sha256:29a08d3a24c218334485b7d25c3b83da2ccd0f9abb24de118a309ceef4646cf6" [label="/bin/sh -c cd /app/src/api && npm install --no-bin-link --production" shape="box"];
  "sha256:31b62bb9803fb8f1d8bd391cf9b2078ee1b937e3b2906086a31dec860f010f67" [label="copy{src=/src/api/index.js, dest=/app/src/api/index.js}" shape="note"];
  "sha256:23d508bd6eb37d076641aad53ff82a281fa2a52731d0294c932092a847fc7a36" [label="/bin/sh -c mkdir -p /api_exported && date > /api_exported/created_at.txt" shape="box"];
  "sha256:16eb003ff39bb1b4260642c6aca106d4e1141b91d1bad4e8e5ccdd9652f99321" [label="sha256:16eb003ff39bb1b4260642c6aca106d4e1141b91d1bad4e8e5ccdd9652f99321" shape="plaintext"];
  "sha256:082aaa850a55bda5bf9d7ecdbf6bd4591ed314bc76e426fa0e605d2c321141b4" -> "sha256:a4897947d3e6816363dca7243018fb05116369b0563b9256d5bb4b79d1fcdd6a" [label=""];
  "sha256:87a2b0f9980b01d3526f5af14ffd7ca1938f3a340ed810a054e014a026dc1f78" -> "sha256:a4897947d3e6816363dca7243018fb05116369b0563b9256d5bb4b79d1fcdd6a" [label=""];
  "sha256:a4897947d3e6816363dca7243018fb05116369b0563b9256d5bb4b79d1fcdd6a" -> "sha256:29a08d3a24c218334485b7d25c3b83da2ccd0f9abb24de118a309ceef4646cf6" [label=""];
  "sha256:29a08d3a24c218334485b7d25c3b83da2ccd0f9abb24de118a309ceef4646cf6" -> "sha256:31b62bb9803fb8f1d8bd391cf9b2078ee1b937e3b2906086a31dec860f010f67" [label=""];
  "sha256:87a2b0f9980b01d3526f5af14ffd7ca1938f3a340ed810a054e014a026dc1f78" -> "sha256:31b62bb9803fb8f1d8bd391cf9b2078ee1b937e3b2906086a31dec860f010f67" [label=""];
  "sha256:31b62bb9803fb8f1d8bd391cf9b2078ee1b937e3b2906086a31dec860f010f67" -> "sha256:23d508bd6eb37d076641aad53ff82a281fa2a52731d0294c932092a847fc7a36" [label=""];
  "sha256:23d508bd6eb37d076641aad53ff82a281fa2a52731d0294c932092a847fc7a36" -> "sha256:16eb003ff39bb1b4260642c6aca106d4e1141b91d1bad4e8e5ccdd9652f99321" [label=""];
}

