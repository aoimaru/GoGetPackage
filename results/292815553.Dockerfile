[app/sources/292815553.Dockerfile]
digraph {
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" [label="docker-image://docker.io/library/node:latest" shape="ellipse"];
  "sha256:8e10c7bb3810fac89d4b6845ba30fb55b0b7b5da2240f3e2b8095cdfb2b0fc7d" [label="local://context" shape="ellipse"];
  "sha256:025c28ff6c02a9ea53911c57b1e790c86fa52247a8891170cc9de39db607244a" [label="copy{src=/, dest=/root/app}" shape="note"];
  "sha256:7fb306826d923e5e57c391b50f3c5ce24a9d739c91331c3fa27d05fe1d4d9491" [label="mkdir{path=/root/app}" shape="note"];
  "sha256:9fd3f3dbe15d7a82484dd7c449bbea99e88dac28f1a671156cb5cd26b2fd0272" [label="/bin/sh -c npm install serve -g" shape="box"];
  "sha256:316d17176cd753403efa948ceb65e106c1afb28e4780993b21807f8993e496b6" [label="sha256:316d17176cd753403efa948ceb65e106c1afb28e4780993b21807f8993e496b6" shape="plaintext"];
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" -> "sha256:025c28ff6c02a9ea53911c57b1e790c86fa52247a8891170cc9de39db607244a" [label=""];
  "sha256:8e10c7bb3810fac89d4b6845ba30fb55b0b7b5da2240f3e2b8095cdfb2b0fc7d" -> "sha256:025c28ff6c02a9ea53911c57b1e790c86fa52247a8891170cc9de39db607244a" [label=""];
  "sha256:025c28ff6c02a9ea53911c57b1e790c86fa52247a8891170cc9de39db607244a" -> "sha256:7fb306826d923e5e57c391b50f3c5ce24a9d739c91331c3fa27d05fe1d4d9491" [label=""];
  "sha256:7fb306826d923e5e57c391b50f3c5ce24a9d739c91331c3fa27d05fe1d4d9491" -> "sha256:9fd3f3dbe15d7a82484dd7c449bbea99e88dac28f1a671156cb5cd26b2fd0272" [label=""];
  "sha256:9fd3f3dbe15d7a82484dd7c449bbea99e88dac28f1a671156cb5cd26b2fd0272" -> "sha256:316d17176cd753403efa948ceb65e106c1afb28e4780993b21807f8993e496b6" [label=""];
}

