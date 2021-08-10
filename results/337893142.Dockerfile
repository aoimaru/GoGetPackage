[app/sources/337893142.Dockerfile]
digraph {
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" [label="docker-image://docker.io/library/debian:stretch" shape="ellipse"];
  "sha256:2413d9c7a1cdf59e67b3b811d5bb5df92d237f6f24d3a02909fc81f3ef9453f7" [label="local://context" shape="ellipse"];
  "sha256:e9c360300913701686b86b8b8c2f129464472ad022c07f0652788ef441f3952f" [label="copy{src=/docker-entrypoint.sh, dest=/usr/local/bin/docker-entrypoint.sh}" shape="note"];
  "sha256:d75774f6be5b1f1d11a332a8e57f2647b086cd1893df9e790249b2eb122c8f1a" [label="/bin/sh -c chmod +x /usr/local/bin/docker-entrypoint.sh" shape="box"];
  "sha256:a39605e8f630df666793fb7f6e57bf585d058c50a1cfbeb8e13c44bd6d5992df" [label="mkdir{path=/data}" shape="note"];
  "sha256:fcbbaba5e6f08ee5940ec05d7f4a74670559cbc7b4ae15b71456050dfd013771" [label="sha256:fcbbaba5e6f08ee5940ec05d7f4a74670559cbc7b4ae15b71456050dfd013771" shape="plaintext"];
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" -> "sha256:e9c360300913701686b86b8b8c2f129464472ad022c07f0652788ef441f3952f" [label=""];
  "sha256:2413d9c7a1cdf59e67b3b811d5bb5df92d237f6f24d3a02909fc81f3ef9453f7" -> "sha256:e9c360300913701686b86b8b8c2f129464472ad022c07f0652788ef441f3952f" [label=""];
  "sha256:e9c360300913701686b86b8b8c2f129464472ad022c07f0652788ef441f3952f" -> "sha256:d75774f6be5b1f1d11a332a8e57f2647b086cd1893df9e790249b2eb122c8f1a" [label=""];
  "sha256:d75774f6be5b1f1d11a332a8e57f2647b086cd1893df9e790249b2eb122c8f1a" -> "sha256:a39605e8f630df666793fb7f6e57bf585d058c50a1cfbeb8e13c44bd6d5992df" [label=""];
  "sha256:a39605e8f630df666793fb7f6e57bf585d058c50a1cfbeb8e13c44bd6d5992df" -> "sha256:fcbbaba5e6f08ee5940ec05d7f4a74670559cbc7b4ae15b71456050dfd013771" [label=""];
}

