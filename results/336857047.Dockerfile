[app/sources/336857047.Dockerfile]
digraph {
  "sha256:e12f6d05c350ed96a32acc76f2d88299a96bdde67562a223ab10e59ffe4a82ba" [label="docker-image://docker.io/smebberson/alpine-nginx-nodejs:latest" shape="ellipse"];
  "sha256:6d1ed216f94f57e488590016442d8dc67c8cb5f16ed24bdb94146296756b8374" [label="/bin/sh -c apk update && apk add wget" shape="box"];
  "sha256:0d108fbad44001c8b89ddde7ce0c2d3e4a7932b90055fda9165eeb5fb16053db" [label="/bin/sh -c mkdir /frontend && mkdir /frontend/src && mkdir /frontend/dist" shape="box"];
  "sha256:be005ed3c79efb2b0d07fdd1607fcd34a6cbc5d5b4fc2583263be2cb7fcc1876" [label="local://context" shape="ellipse"];
  "sha256:1054bc8833f51938321ec472f8e5f23f0fe608512949ba54267edba7a18a41ea" [label="copy{src=/src, dest=/frontend/src/}" shape="note"];
  "sha256:6ec1db0a1914658cfc393c5e7798c6c0706f3d550a22651cf76724e2c857382c" [label="copy{src=/package.json, dest=/frontend}" shape="note"];
  "sha256:0d036d0bd5834124d30e9ce757e5188ea413c1db04c61bbf78daac95e199406d" [label="copy{src=/webpack.config.js, dest=/frontend}" shape="note"];
  "sha256:65e303d19e304e1c87b5d5c4877c12fd39b0ed9999b05e9cd82e7d5aa7c59f49" [label="/bin/sh -c cd /frontend && npm install && npm run build" shape="box"];
  "sha256:0e98048e1749291b436c1e0e4b053683c8766edbb16b2bcaabd5dd9db934a030" [label="/bin/sh -c cp -r /frontend/dist/* /usr/html/" shape="box"];
  "sha256:68adcc4c8bc409a2ea143a69ff1351f9ea0607f26a1013c04dc9cb1802ea5ddd" [label="sha256:68adcc4c8bc409a2ea143a69ff1351f9ea0607f26a1013c04dc9cb1802ea5ddd" shape="plaintext"];
  "sha256:e12f6d05c350ed96a32acc76f2d88299a96bdde67562a223ab10e59ffe4a82ba" -> "sha256:6d1ed216f94f57e488590016442d8dc67c8cb5f16ed24bdb94146296756b8374" [label=""];
  "sha256:6d1ed216f94f57e488590016442d8dc67c8cb5f16ed24bdb94146296756b8374" -> "sha256:0d108fbad44001c8b89ddde7ce0c2d3e4a7932b90055fda9165eeb5fb16053db" [label=""];
  "sha256:0d108fbad44001c8b89ddde7ce0c2d3e4a7932b90055fda9165eeb5fb16053db" -> "sha256:1054bc8833f51938321ec472f8e5f23f0fe608512949ba54267edba7a18a41ea" [label=""];
  "sha256:be005ed3c79efb2b0d07fdd1607fcd34a6cbc5d5b4fc2583263be2cb7fcc1876" -> "sha256:1054bc8833f51938321ec472f8e5f23f0fe608512949ba54267edba7a18a41ea" [label=""];
  "sha256:1054bc8833f51938321ec472f8e5f23f0fe608512949ba54267edba7a18a41ea" -> "sha256:6ec1db0a1914658cfc393c5e7798c6c0706f3d550a22651cf76724e2c857382c" [label=""];
  "sha256:be005ed3c79efb2b0d07fdd1607fcd34a6cbc5d5b4fc2583263be2cb7fcc1876" -> "sha256:6ec1db0a1914658cfc393c5e7798c6c0706f3d550a22651cf76724e2c857382c" [label=""];
  "sha256:6ec1db0a1914658cfc393c5e7798c6c0706f3d550a22651cf76724e2c857382c" -> "sha256:0d036d0bd5834124d30e9ce757e5188ea413c1db04c61bbf78daac95e199406d" [label=""];
  "sha256:be005ed3c79efb2b0d07fdd1607fcd34a6cbc5d5b4fc2583263be2cb7fcc1876" -> "sha256:0d036d0bd5834124d30e9ce757e5188ea413c1db04c61bbf78daac95e199406d" [label=""];
  "sha256:0d036d0bd5834124d30e9ce757e5188ea413c1db04c61bbf78daac95e199406d" -> "sha256:65e303d19e304e1c87b5d5c4877c12fd39b0ed9999b05e9cd82e7d5aa7c59f49" [label=""];
  "sha256:65e303d19e304e1c87b5d5c4877c12fd39b0ed9999b05e9cd82e7d5aa7c59f49" -> "sha256:0e98048e1749291b436c1e0e4b053683c8766edbb16b2bcaabd5dd9db934a030" [label=""];
  "sha256:0e98048e1749291b436c1e0e4b053683c8766edbb16b2bcaabd5dd9db934a030" -> "sha256:68adcc4c8bc409a2ea143a69ff1351f9ea0607f26a1013c04dc9cb1802ea5ddd" [label=""];
}

