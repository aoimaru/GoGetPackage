[app/sources/206854729.Dockerfile]
digraph {
  "sha256:887389f40300d7fb61a73ec09833a20f7ceb3aa172f73a4c586df2ffe7f69c9b" [label="docker-image://gcr.io/k8s-prow/alpine:0.1@sha256:bd327018b3effc802514b63cc90102bfcd92765f4486fc5abc28abf7eb9f1e4d" shape="ellipse"];
  "sha256:53eccfaad213028c5f0d3ac3cd7001a4fd094ff52ac71595e7a7db16403c0a97" [label="local://context" shape="ellipse"];
  "sha256:193d9ddb66d3d7a9e0c94e23dca61bf8b7621ab4f5f7457fee71fe17b31c59da" [label="copy{src=/static, dest=/static}" shape="note"];
  "sha256:56bd092750ad4437d37205cf136848dc6092cf93e67c6099b5b8d4664d979f36" [label="copy{src=/tracer, dest=/tracer}" shape="note"];
  "sha256:cb1f75eaf8f0a21d29dacc15507449123d4395a46f700f9ba40302acf7bda69a" [label="sha256:cb1f75eaf8f0a21d29dacc15507449123d4395a46f700f9ba40302acf7bda69a" shape="plaintext"];
  "sha256:887389f40300d7fb61a73ec09833a20f7ceb3aa172f73a4c586df2ffe7f69c9b" -> "sha256:193d9ddb66d3d7a9e0c94e23dca61bf8b7621ab4f5f7457fee71fe17b31c59da" [label=""];
  "sha256:53eccfaad213028c5f0d3ac3cd7001a4fd094ff52ac71595e7a7db16403c0a97" -> "sha256:193d9ddb66d3d7a9e0c94e23dca61bf8b7621ab4f5f7457fee71fe17b31c59da" [label=""];
  "sha256:193d9ddb66d3d7a9e0c94e23dca61bf8b7621ab4f5f7457fee71fe17b31c59da" -> "sha256:56bd092750ad4437d37205cf136848dc6092cf93e67c6099b5b8d4664d979f36" [label=""];
  "sha256:53eccfaad213028c5f0d3ac3cd7001a4fd094ff52ac71595e7a7db16403c0a97" -> "sha256:56bd092750ad4437d37205cf136848dc6092cf93e67c6099b5b8d4664d979f36" [label=""];
  "sha256:56bd092750ad4437d37205cf136848dc6092cf93e67c6099b5b8d4664d979f36" -> "sha256:cb1f75eaf8f0a21d29dacc15507449123d4395a46f700f9ba40302acf7bda69a" [label=""];
}

