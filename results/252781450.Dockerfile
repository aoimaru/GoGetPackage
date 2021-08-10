[app/sources/252781450.Dockerfile]
digraph {
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" [label="docker-image://docker.io/library/nginx:latest" shape="ellipse"];
  "sha256:7223b7f5a492079df19a0181ab20863ca23f6448b3da36453a816f8de3849ff7" [label="local://context" shape="ellipse"];
  "sha256:2ab9968fac15b5a68d815da33e65f4816d5bb9841a34315951eee7809f5a48b4" [label="copy{src=/app/entrypoint, dest=/bin}" shape="note"];
  "sha256:ef9a15e60fee1b7abdbfe67bfb3ce74a233e71efce56eb6cab5b7e4f416edba0" [label="copy{src=/app/nginx.conf, dest=/etc/nginx/nginx.conf}" shape="note"];
  "sha256:8c3eb7e49509134ef2b23e152e60d8deb41c6da9c5ef56c7f0ed4d812c23b8db" [label="copy{src=/app/proxy.conf, dest=/etc/nginx/proxy.conf}" shape="note"];
  "sha256:3c1d1d1f218088da6995223ced8dad7e6008a4ea51ae56a2aad792a50618acad" [label="copy{src=/app/template.conf, dest=/etc/nginx/template.conf}" shape="note"];
  "sha256:176194e04e119c16ee00665296f6ec654d8133d82e1197fd284b1c65a7944a0a" [label="sha256:176194e04e119c16ee00665296f6ec654d8133d82e1197fd284b1c65a7944a0a" shape="plaintext"];
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" -> "sha256:2ab9968fac15b5a68d815da33e65f4816d5bb9841a34315951eee7809f5a48b4" [label=""];
  "sha256:7223b7f5a492079df19a0181ab20863ca23f6448b3da36453a816f8de3849ff7" -> "sha256:2ab9968fac15b5a68d815da33e65f4816d5bb9841a34315951eee7809f5a48b4" [label=""];
  "sha256:2ab9968fac15b5a68d815da33e65f4816d5bb9841a34315951eee7809f5a48b4" -> "sha256:ef9a15e60fee1b7abdbfe67bfb3ce74a233e71efce56eb6cab5b7e4f416edba0" [label=""];
  "sha256:7223b7f5a492079df19a0181ab20863ca23f6448b3da36453a816f8de3849ff7" -> "sha256:ef9a15e60fee1b7abdbfe67bfb3ce74a233e71efce56eb6cab5b7e4f416edba0" [label=""];
  "sha256:ef9a15e60fee1b7abdbfe67bfb3ce74a233e71efce56eb6cab5b7e4f416edba0" -> "sha256:8c3eb7e49509134ef2b23e152e60d8deb41c6da9c5ef56c7f0ed4d812c23b8db" [label=""];
  "sha256:7223b7f5a492079df19a0181ab20863ca23f6448b3da36453a816f8de3849ff7" -> "sha256:8c3eb7e49509134ef2b23e152e60d8deb41c6da9c5ef56c7f0ed4d812c23b8db" [label=""];
  "sha256:8c3eb7e49509134ef2b23e152e60d8deb41c6da9c5ef56c7f0ed4d812c23b8db" -> "sha256:3c1d1d1f218088da6995223ced8dad7e6008a4ea51ae56a2aad792a50618acad" [label=""];
  "sha256:7223b7f5a492079df19a0181ab20863ca23f6448b3da36453a816f8de3849ff7" -> "sha256:3c1d1d1f218088da6995223ced8dad7e6008a4ea51ae56a2aad792a50618acad" [label=""];
  "sha256:3c1d1d1f218088da6995223ced8dad7e6008a4ea51ae56a2aad792a50618acad" -> "sha256:176194e04e119c16ee00665296f6ec654d8133d82e1197fd284b1c65a7944a0a" [label=""];
}

