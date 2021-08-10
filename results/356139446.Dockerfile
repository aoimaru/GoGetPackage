[app/sources/356139446.Dockerfile]
digraph {
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" [label="docker-image://docker.io/library/node:latest" shape="ellipse"];
  "sha256:f931d771524543441ada877a400dd12c9833c394b7bbdb048b73c800ac4d4449" [label="local://context" shape="ellipse"];
  "sha256:e5b500e9b340b8ee6b0d10ffbb407deec56272f9852c0fcfb19d408b4fd43fb6" [label="copy{src=/, dest=/}" shape="note"];
  "sha256:b1e152facccfdd279ebff53351029c357782b687c436491c5482e20c1296b2cf" [label="/bin/sh -c npm install --ignore-scripts" shape="box"];
  "sha256:805dba3cf23d75b6e1b9c8cec9aecf9636761491f6d303e3595eb6f84753ff6f" [label="sha256:805dba3cf23d75b6e1b9c8cec9aecf9636761491f6d303e3595eb6f84753ff6f" shape="plaintext"];
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" -> "sha256:e5b500e9b340b8ee6b0d10ffbb407deec56272f9852c0fcfb19d408b4fd43fb6" [label=""];
  "sha256:f931d771524543441ada877a400dd12c9833c394b7bbdb048b73c800ac4d4449" -> "sha256:e5b500e9b340b8ee6b0d10ffbb407deec56272f9852c0fcfb19d408b4fd43fb6" [label=""];
  "sha256:e5b500e9b340b8ee6b0d10ffbb407deec56272f9852c0fcfb19d408b4fd43fb6" -> "sha256:b1e152facccfdd279ebff53351029c357782b687c436491c5482e20c1296b2cf" [label=""];
  "sha256:b1e152facccfdd279ebff53351029c357782b687c436491c5482e20c1296b2cf" -> "sha256:805dba3cf23d75b6e1b9c8cec9aecf9636761491f6d303e3595eb6f84753ff6f" [label=""];
}

