[app/sources/379385125.Dockerfile]
digraph {
  "sha256:7cfde48072326ff28a2d10c7a92e06cf0dd24fe7aa5a7cdd8cca63837d60d042" [label="docker-image://docker.io/jekyll/jekyll:3.8" shape="ellipse"];
  "sha256:79befda7454456165246bfeee1cbe403b7ac56ff238f282f57ae312f2cf6ea2a" [label="local://context" shape="ellipse"];
  "sha256:8dde3e89adfbc126a945c5c7ca4ad0d4d5e7461bdb550894ffb33720d1afdcb0" [label="copy{src=/blog, dest=/usr/src/app}" shape="note"];
  "sha256:d0caf2a36c0f9aed147ba1c481660d0ebba1716430e10e539d6ebb7d99771d6e" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:a0e3337b535d9ab8a36f560338abdf62850ac74a93451d1c499a443194283fa3" [label="/bin/sh -c jekyll build ." shape="box"];
  "sha256:ba58470a094051afc9a2b740040d167a519e2526a5218999ec799161f4ae5bdf" [label="docker-image://docker.io/library/nginx:1.15.11-alpine" shape="ellipse"];
  "sha256:9ac8f971e9baa0475a9f4dbec9d484fd1c879a2484be5abbe0b2e79c874d5185" [label="copy{src=/usr/src/app/_site, dest=/usr/share/nginx/html/}" shape="note"];
  "sha256:49b589c6c65d3568a150903f61c037482d13b5712c2c1d506a8e534d82beb43b" [label="sha256:49b589c6c65d3568a150903f61c037482d13b5712c2c1d506a8e534d82beb43b" shape="plaintext"];
  "sha256:7cfde48072326ff28a2d10c7a92e06cf0dd24fe7aa5a7cdd8cca63837d60d042" -> "sha256:8dde3e89adfbc126a945c5c7ca4ad0d4d5e7461bdb550894ffb33720d1afdcb0" [label=""];
  "sha256:79befda7454456165246bfeee1cbe403b7ac56ff238f282f57ae312f2cf6ea2a" -> "sha256:8dde3e89adfbc126a945c5c7ca4ad0d4d5e7461bdb550894ffb33720d1afdcb0" [label=""];
  "sha256:8dde3e89adfbc126a945c5c7ca4ad0d4d5e7461bdb550894ffb33720d1afdcb0" -> "sha256:d0caf2a36c0f9aed147ba1c481660d0ebba1716430e10e539d6ebb7d99771d6e" [label=""];
  "sha256:d0caf2a36c0f9aed147ba1c481660d0ebba1716430e10e539d6ebb7d99771d6e" -> "sha256:a0e3337b535d9ab8a36f560338abdf62850ac74a93451d1c499a443194283fa3" [label=""];
  "sha256:ba58470a094051afc9a2b740040d167a519e2526a5218999ec799161f4ae5bdf" -> "sha256:9ac8f971e9baa0475a9f4dbec9d484fd1c879a2484be5abbe0b2e79c874d5185" [label=""];
  "sha256:a0e3337b535d9ab8a36f560338abdf62850ac74a93451d1c499a443194283fa3" -> "sha256:9ac8f971e9baa0475a9f4dbec9d484fd1c879a2484be5abbe0b2e79c874d5185" [label=""];
  "sha256:9ac8f971e9baa0475a9f4dbec9d484fd1c879a2484be5abbe0b2e79c874d5185" -> "sha256:49b589c6c65d3568a150903f61c037482d13b5712c2c1d506a8e534d82beb43b" [label=""];
}

