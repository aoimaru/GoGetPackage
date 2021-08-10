[app/sources/253454552.Dockerfile]
digraph {
  "sha256:b67b475cb7a7f650f7995658c0212c2a3e995a064f0cbca1ada56d454f1ee2e2" [label="local://context" shape="ellipse"];
  "sha256:ca9efc872cef8e62faedd09b52f4569d40b7cceaadaf800043bbbbddf765a55b" [label="docker-image://docker.io/centurylink/ca-certs:latest" shape="ellipse"];
  "sha256:15bcb541c504fa7ffce67f814247da97eaacfb1b07e61b63a303ff4fa7a5df28" [label="copy{src=/drone-line-webhook, dest=/}" shape="note"];
  "sha256:e65568f514f60724629e6dd4934fbec0e6a0b7ea4f85b6129b4123ea05e15de4" [label="sha256:e65568f514f60724629e6dd4934fbec0e6a0b7ea4f85b6129b4123ea05e15de4" shape="plaintext"];
  "sha256:ca9efc872cef8e62faedd09b52f4569d40b7cceaadaf800043bbbbddf765a55b" -> "sha256:15bcb541c504fa7ffce67f814247da97eaacfb1b07e61b63a303ff4fa7a5df28" [label=""];
  "sha256:b67b475cb7a7f650f7995658c0212c2a3e995a064f0cbca1ada56d454f1ee2e2" -> "sha256:15bcb541c504fa7ffce67f814247da97eaacfb1b07e61b63a303ff4fa7a5df28" [label=""];
  "sha256:15bcb541c504fa7ffce67f814247da97eaacfb1b07e61b63a303ff4fa7a5df28" -> "sha256:e65568f514f60724629e6dd4934fbec0e6a0b7ea4f85b6129b4123ea05e15de4" [label=""];
}

