[app/sources/339073009.Dockerfile]
digraph {
  "sha256:63edd55d286ea14e633db4e1e8d5b830e721e042511cd50be099e775ca3057c0" [label="docker-image://docker.io/library/nginx:1.14.0" shape="ellipse"];
  "sha256:18b0d8d4a9168127e529a39b774907f1f6a521c43a621fab21f8a150b1877842" [label="local://context" shape="ellipse"];
  "sha256:d4b0e1d200db50cceae10688fa89c66ec38cdddabdc82880948e18b94b0bb028" [label="copy{src=/nginx.conf, dest=/etc/nginx/nginx.conf}" shape="note"];
  "sha256:6d6e6fc2931c68464dc4c556b38c027196f5f8ec343e6c661dad5b35d9024095" [label="sha256:6d6e6fc2931c68464dc4c556b38c027196f5f8ec343e6c661dad5b35d9024095" shape="plaintext"];
  "sha256:63edd55d286ea14e633db4e1e8d5b830e721e042511cd50be099e775ca3057c0" -> "sha256:d4b0e1d200db50cceae10688fa89c66ec38cdddabdc82880948e18b94b0bb028" [label=""];
  "sha256:18b0d8d4a9168127e529a39b774907f1f6a521c43a621fab21f8a150b1877842" -> "sha256:d4b0e1d200db50cceae10688fa89c66ec38cdddabdc82880948e18b94b0bb028" [label=""];
  "sha256:d4b0e1d200db50cceae10688fa89c66ec38cdddabdc82880948e18b94b0bb028" -> "sha256:6d6e6fc2931c68464dc4c556b38c027196f5f8ec343e6c661dad5b35d9024095" [label=""];
}

