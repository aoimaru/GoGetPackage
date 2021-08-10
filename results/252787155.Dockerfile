[app/sources/252787155.Dockerfile]
digraph {
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" [label="docker-image://docker.io/library/node:latest" shape="ellipse"];
  "sha256:e6cb67cd13a84ef58666689f006d9cae6b2998e40003293f87a5cc622be00898" [label="local://context" shape="ellipse"];
  "sha256:77619d055278cf37faedca9d85c7c863ebe5554b4b2b79b66e61bf0d765e07c3" [label="copy{src=/proxy.js, dest=/proxy.js}" shape="note"];
  "sha256:0a8ff95799e823468b6ed3461231decdadf977450f14ee5473ed358e39658f7b" [label="/bin/sh -c npm install redbird" shape="box"];
  "sha256:7e2639dde09273b53b9d05cfd10a03d3e57edbfc0fed77799bc550386a1e2a9b" [label="sha256:7e2639dde09273b53b9d05cfd10a03d3e57edbfc0fed77799bc550386a1e2a9b" shape="plaintext"];
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" -> "sha256:77619d055278cf37faedca9d85c7c863ebe5554b4b2b79b66e61bf0d765e07c3" [label=""];
  "sha256:e6cb67cd13a84ef58666689f006d9cae6b2998e40003293f87a5cc622be00898" -> "sha256:77619d055278cf37faedca9d85c7c863ebe5554b4b2b79b66e61bf0d765e07c3" [label=""];
  "sha256:77619d055278cf37faedca9d85c7c863ebe5554b4b2b79b66e61bf0d765e07c3" -> "sha256:0a8ff95799e823468b6ed3461231decdadf977450f14ee5473ed358e39658f7b" [label=""];
  "sha256:0a8ff95799e823468b6ed3461231decdadf977450f14ee5473ed358e39658f7b" -> "sha256:7e2639dde09273b53b9d05cfd10a03d3e57edbfc0fed77799bc550386a1e2a9b" [label=""];
}

