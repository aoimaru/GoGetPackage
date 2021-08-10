[app/sources/345357012.Dockerfile]
digraph {
  "sha256:ecee31418b3fef8a7339a937b3b3446c70824036604ca0c91b7de0fc87c568d1" [label="docker-image://docker.io/balenalib/amd64-fedora:30-run" shape="ellipse"];
  "sha256:27901e928133e2f077b786acef5ca996165269d85643f3c6aea466e77cce6335" [label="/bin/sh -c dnf install -y \t\tless \t\tnano \t\tnet-tools \t\tusbutils \t\tgnupg \t\ti2c-tools \t&& dnf clean all" shape="box"];
  "sha256:e3380195557eec2ac390b1e4ff759f6a5a54b0d2c5311bf07377a38ceb87bcf4" [label="sha256:e3380195557eec2ac390b1e4ff759f6a5a54b0d2c5311bf07377a38ceb87bcf4" shape="plaintext"];
  "sha256:ecee31418b3fef8a7339a937b3b3446c70824036604ca0c91b7de0fc87c568d1" -> "sha256:27901e928133e2f077b786acef5ca996165269d85643f3c6aea466e77cce6335" [label=""];
  "sha256:27901e928133e2f077b786acef5ca996165269d85643f3c6aea466e77cce6335" -> "sha256:e3380195557eec2ac390b1e4ff759f6a5a54b0d2c5311bf07377a38ceb87bcf4" [label=""];
}

