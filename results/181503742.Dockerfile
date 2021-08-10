[app/sources/181503742.Dockerfile]
digraph {
  "sha256:e62c2560aca09036c94d705e8035455769140e6f3e88d05d3e9af9cadc1b7614" [label="local://context" shape="ellipse"];
  "sha256:07c7ab6b0feaae8d7b19505eaa124f1cbc7cf52ddb48bfa1bae346d678575594" [label="docker-image://docker.io/library/node:slim" shape="ellipse"];
  "sha256:90df4ea61388e07e29ff930b94376f350300c67edd527ca69f3cd151400a7455" [label="/bin/sh -c mkdir -p /var/app" shape="box"];
  "sha256:100111b4a7552248837854d2d30d46613f322696faaa113dcc4b9cbc9ec346c9" [label="copy{src=/, dest=/var/app}" shape="note"];
  "sha256:456a6b2e97bce4390bcdb3c8fb871453106d4847f2f89801be329e72b103c846" [label="mkdir{path=/var/app}" shape="note"];
  "sha256:fc5d89df3c719234acbc60cdfb6ef14e39561891d5254db820fd4fa002b0fb3e" [label="sha256:fc5d89df3c719234acbc60cdfb6ef14e39561891d5254db820fd4fa002b0fb3e" shape="plaintext"];
  "sha256:07c7ab6b0feaae8d7b19505eaa124f1cbc7cf52ddb48bfa1bae346d678575594" -> "sha256:90df4ea61388e07e29ff930b94376f350300c67edd527ca69f3cd151400a7455" [label=""];
  "sha256:90df4ea61388e07e29ff930b94376f350300c67edd527ca69f3cd151400a7455" -> "sha256:100111b4a7552248837854d2d30d46613f322696faaa113dcc4b9cbc9ec346c9" [label=""];
  "sha256:e62c2560aca09036c94d705e8035455769140e6f3e88d05d3e9af9cadc1b7614" -> "sha256:100111b4a7552248837854d2d30d46613f322696faaa113dcc4b9cbc9ec346c9" [label=""];
  "sha256:100111b4a7552248837854d2d30d46613f322696faaa113dcc4b9cbc9ec346c9" -> "sha256:456a6b2e97bce4390bcdb3c8fb871453106d4847f2f89801be329e72b103c846" [label=""];
  "sha256:456a6b2e97bce4390bcdb3c8fb871453106d4847f2f89801be329e72b103c846" -> "sha256:fc5d89df3c719234acbc60cdfb6ef14e39561891d5254db820fd4fa002b0fb3e" [label=""];
}

