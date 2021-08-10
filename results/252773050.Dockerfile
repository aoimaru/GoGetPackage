[app/sources/252773050.Dockerfile]
digraph {
  "sha256:5995a39e68e9e61d3ffe79e05fb2178d63b03cf306a8a6d28dcc970298cd13d0" [label="docker-image://docker.io/library/node:6" shape="ellipse"];
  "sha256:1c69af2148fc34202eef8e9c2f9293a205fd91cabb511197bb75f261c43460dd" [label="/bin/sh -c npm install -g nodemon" shape="box"];
  "sha256:a905622c36d644468b24f0137472077004eaa50d6861bc9123083ed068dc9300" [label="/bin/sh -c mkdir -p /usr/local/nodejs" shape="box"];
  "sha256:b86a4dc14ad199f2c7a7ddf01e50c4c51c886bf87cefdfbc59cbae52289b952d" [label="local://context" shape="ellipse"];
  "sha256:2a072dff16c156cbc1c88dccb1a0ded0564d798bf64d44d5c8697d7290ecdf23" [label="copy{src=/nodejs-init.sh, dest=/usr/local/nodejs/nodejs-init.sh}" shape="note"];
  "sha256:9c0f4f265c5a04366df088a2c0e7df687184179d15c8946476d02cb4501e0cfe" [label="/bin/sh -c chmod 755 /usr/local/nodejs/nodejs-init.sh" shape="box"];
  "sha256:a3274e9b8f1423c3cdd57ff33b5bb0817af8d8eed7e6139aec48ea10956eeccd" [label="sha256:a3274e9b8f1423c3cdd57ff33b5bb0817af8d8eed7e6139aec48ea10956eeccd" shape="plaintext"];
  "sha256:5995a39e68e9e61d3ffe79e05fb2178d63b03cf306a8a6d28dcc970298cd13d0" -> "sha256:1c69af2148fc34202eef8e9c2f9293a205fd91cabb511197bb75f261c43460dd" [label=""];
  "sha256:1c69af2148fc34202eef8e9c2f9293a205fd91cabb511197bb75f261c43460dd" -> "sha256:a905622c36d644468b24f0137472077004eaa50d6861bc9123083ed068dc9300" [label=""];
  "sha256:a905622c36d644468b24f0137472077004eaa50d6861bc9123083ed068dc9300" -> "sha256:2a072dff16c156cbc1c88dccb1a0ded0564d798bf64d44d5c8697d7290ecdf23" [label=""];
  "sha256:b86a4dc14ad199f2c7a7ddf01e50c4c51c886bf87cefdfbc59cbae52289b952d" -> "sha256:2a072dff16c156cbc1c88dccb1a0ded0564d798bf64d44d5c8697d7290ecdf23" [label=""];
  "sha256:2a072dff16c156cbc1c88dccb1a0ded0564d798bf64d44d5c8697d7290ecdf23" -> "sha256:9c0f4f265c5a04366df088a2c0e7df687184179d15c8946476d02cb4501e0cfe" [label=""];
  "sha256:9c0f4f265c5a04366df088a2c0e7df687184179d15c8946476d02cb4501e0cfe" -> "sha256:a3274e9b8f1423c3cdd57ff33b5bb0817af8d8eed7e6139aec48ea10956eeccd" [label=""];
}

