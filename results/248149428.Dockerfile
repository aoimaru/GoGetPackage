[app/sources/248149428.Dockerfile]
digraph {
  "sha256:61d69c526405e812f2b670443599a3700c1ef5bee82a01ff03a65453463fbb68" [label="local://context" shape="ellipse"];
  "sha256:82f50028f168313cdc54c5f7bda6a092187f30e9f4cb5cdef51a2bab31433e21" [label="docker-image://docker.io/library/node:7-slim" shape="ellipse"];
  "sha256:85481f1767fa8c95156705be3ab3aedc3ed6309e38aaf5e8c40a6f18715fede7" [label="/bin/sh -c mkdir /app" shape="box"];
  "sha256:1e0edb537f9025f862b6b9de503e59ac64ae63239ab9b662ab7019b7add8e9f6" [label="/bin/sh -c mkdir /app/build" shape="box"];
  "sha256:c189d4492ccf5ad6a4686d1c6ff5f97b7a18eed769c326a55388bfdba6bd2a36" [label="copy{src=/build, dest=/app/build}" shape="note"];
  "sha256:783bc75c0269cd9501490028472dd58b68026c396b2074bb4d3a792bd0da11e1" [label="copy{src=/package.json, dest=/app}" shape="note"];
  "sha256:a8afe7b0a6f53fcd4f2e3fced8d5c652e15921b660b0efd71c327f7ebce35d9c" [label="mkdir{path=/app}" shape="note"];
  "sha256:548f684166188a8fca369a01edfd4b594666ccdfeb75103f12a2e3d4be44c308" [label="/bin/sh -c npm install --production" shape="box"];
  "sha256:517ad2b628c283996dcb6a015e16862c0a364efe05a93a2ef4fa9f7df1134f05" [label="sha256:517ad2b628c283996dcb6a015e16862c0a364efe05a93a2ef4fa9f7df1134f05" shape="plaintext"];
  "sha256:82f50028f168313cdc54c5f7bda6a092187f30e9f4cb5cdef51a2bab31433e21" -> "sha256:85481f1767fa8c95156705be3ab3aedc3ed6309e38aaf5e8c40a6f18715fede7" [label=""];
  "sha256:85481f1767fa8c95156705be3ab3aedc3ed6309e38aaf5e8c40a6f18715fede7" -> "sha256:1e0edb537f9025f862b6b9de503e59ac64ae63239ab9b662ab7019b7add8e9f6" [label=""];
  "sha256:1e0edb537f9025f862b6b9de503e59ac64ae63239ab9b662ab7019b7add8e9f6" -> "sha256:c189d4492ccf5ad6a4686d1c6ff5f97b7a18eed769c326a55388bfdba6bd2a36" [label=""];
  "sha256:61d69c526405e812f2b670443599a3700c1ef5bee82a01ff03a65453463fbb68" -> "sha256:c189d4492ccf5ad6a4686d1c6ff5f97b7a18eed769c326a55388bfdba6bd2a36" [label=""];
  "sha256:c189d4492ccf5ad6a4686d1c6ff5f97b7a18eed769c326a55388bfdba6bd2a36" -> "sha256:783bc75c0269cd9501490028472dd58b68026c396b2074bb4d3a792bd0da11e1" [label=""];
  "sha256:61d69c526405e812f2b670443599a3700c1ef5bee82a01ff03a65453463fbb68" -> "sha256:783bc75c0269cd9501490028472dd58b68026c396b2074bb4d3a792bd0da11e1" [label=""];
  "sha256:783bc75c0269cd9501490028472dd58b68026c396b2074bb4d3a792bd0da11e1" -> "sha256:a8afe7b0a6f53fcd4f2e3fced8d5c652e15921b660b0efd71c327f7ebce35d9c" [label=""];
  "sha256:a8afe7b0a6f53fcd4f2e3fced8d5c652e15921b660b0efd71c327f7ebce35d9c" -> "sha256:548f684166188a8fca369a01edfd4b594666ccdfeb75103f12a2e3d4be44c308" [label=""];
  "sha256:548f684166188a8fca369a01edfd4b594666ccdfeb75103f12a2e3d4be44c308" -> "sha256:517ad2b628c283996dcb6a015e16862c0a364efe05a93a2ef4fa9f7df1134f05" [label=""];
}

