[app/sources/274064807.Dockerfile]
digraph {
  "sha256:0b1d419d89a4eab1a65b4f53f6c59e9eec29bdde01e3759f0a6e7e2b444da853" [label="docker-image://docker.io/library/elixir-base:latest" shape="ellipse"];
  "sha256:04badb301d4b6002010480cbee8faffc8be9ebe648fdb5aacdecc14feb0db3e8" [label="local://context" shape="ellipse"];
  "sha256:6f5e24b47e4b6642716156a9d1aeb17094163caf11de3eb0ff59d9da04027217" [label="copy{src=/src, dest=/src/}" shape="note"];
  "sha256:7fbfc6608c1e6e3a2758e16da89d47c915319dcd20c0f86939e61ee110160247" [label="/bin/sh -c cd /src     && mix deps.get     && mix escript.build" shape="box"];
  "sha256:2599fddf59adac92d7fbfb98936daee8067490cc3629bf713b7c4cb9bed5a4fc" [label="copy{src=/app, dest=/app/}" shape="note"];
  "sha256:c77c67a269599dd214f821bbfaf8626701950c85e0744cd1cc241ae5b42d7d99" [label="copy{src=/src/generate_dockerfile, dest=/app/generate_dockerfile}" shape="note"];
  "sha256:807c8939f89cd2ddb9557623c0fd305932559fc39716ddf640db654972da7a47" [label="sha256:807c8939f89cd2ddb9557623c0fd305932559fc39716ddf640db654972da7a47" shape="plaintext"];
  "sha256:0b1d419d89a4eab1a65b4f53f6c59e9eec29bdde01e3759f0a6e7e2b444da853" -> "sha256:6f5e24b47e4b6642716156a9d1aeb17094163caf11de3eb0ff59d9da04027217" [label=""];
  "sha256:04badb301d4b6002010480cbee8faffc8be9ebe648fdb5aacdecc14feb0db3e8" -> "sha256:6f5e24b47e4b6642716156a9d1aeb17094163caf11de3eb0ff59d9da04027217" [label=""];
  "sha256:6f5e24b47e4b6642716156a9d1aeb17094163caf11de3eb0ff59d9da04027217" -> "sha256:7fbfc6608c1e6e3a2758e16da89d47c915319dcd20c0f86939e61ee110160247" [label=""];
  "sha256:0b1d419d89a4eab1a65b4f53f6c59e9eec29bdde01e3759f0a6e7e2b444da853" -> "sha256:2599fddf59adac92d7fbfb98936daee8067490cc3629bf713b7c4cb9bed5a4fc" [label=""];
  "sha256:04badb301d4b6002010480cbee8faffc8be9ebe648fdb5aacdecc14feb0db3e8" -> "sha256:2599fddf59adac92d7fbfb98936daee8067490cc3629bf713b7c4cb9bed5a4fc" [label=""];
  "sha256:2599fddf59adac92d7fbfb98936daee8067490cc3629bf713b7c4cb9bed5a4fc" -> "sha256:c77c67a269599dd214f821bbfaf8626701950c85e0744cd1cc241ae5b42d7d99" [label=""];
  "sha256:7fbfc6608c1e6e3a2758e16da89d47c915319dcd20c0f86939e61ee110160247" -> "sha256:c77c67a269599dd214f821bbfaf8626701950c85e0744cd1cc241ae5b42d7d99" [label=""];
  "sha256:c77c67a269599dd214f821bbfaf8626701950c85e0744cd1cc241ae5b42d7d99" -> "sha256:807c8939f89cd2ddb9557623c0fd305932559fc39716ddf640db654972da7a47" [label=""];
}

