[app/sources/471391823.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:ee596e4b9f3626c9a4b08cca66a99ab98ec2443a97221fc665363d963e83fd4b" [label="mkdir{path=/usr/bin}" shape="note"];
  "sha256:96702e8b8d2b2f8a3ab9832131367c34f11c676631cdf7e0d60cf2ae98bbb59a" [label="/bin/sh -c buildDeps='                 bash                 wget         '         set -x         && apk --no-cache add $buildDeps ca-certificates         && wget -O nomad-toast https://github.com/jrasell/nomad-toast/releases/download/${NOMAD_TOAST_VERSION}/nomad-toast_linux_amd64         && chmod +x /usr/bin/nomad-toast         && apk del $buildDeps         && echo \"Build complete.\"" shape="box"];
  "sha256:2566f71ffc81b0510ddb7610a2cd220cb4a93f9c6814c552b628f1b023cc740c" [label="sha256:2566f71ffc81b0510ddb7610a2cd220cb4a93f9c6814c552b628f1b023cc740c" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:ee596e4b9f3626c9a4b08cca66a99ab98ec2443a97221fc665363d963e83fd4b" [label=""];
  "sha256:ee596e4b9f3626c9a4b08cca66a99ab98ec2443a97221fc665363d963e83fd4b" -> "sha256:96702e8b8d2b2f8a3ab9832131367c34f11c676631cdf7e0d60cf2ae98bbb59a" [label=""];
  "sha256:96702e8b8d2b2f8a3ab9832131367c34f11c676631cdf7e0d60cf2ae98bbb59a" -> "sha256:2566f71ffc81b0510ddb7610a2cd220cb4a93f9c6814c552b628f1b023cc740c" [label=""];
}

