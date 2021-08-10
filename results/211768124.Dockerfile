[app/sources/211768124.Dockerfile]
digraph {
  "sha256:d712fad79caf60e0db2662a586e23eb3a32de2f5f084b6d663669b20311f3e9d" [label="docker-image://docker.io/anapsix/alpine-java:latest" shape="ellipse"];
  "sha256:31c887f427a5817fa51aec8b69b6750c404a7ad159b048351983ad78198aa5e3" [label="local://context" shape="ellipse"];
  "sha256:3cd24b70a8a871a4881b94a1b8590e19d156b5d3e70de13d397e6eb43e2fbccc" [label="copy{src=/target/raptor-standalone-1.0-exec.jar, dest=/raptor.jar}" shape="note"];
  "sha256:20ceefc84010d42aa64883356b8bec106f102f1def73ec1d459a8b37d23e4216" [label="sha256:20ceefc84010d42aa64883356b8bec106f102f1def73ec1d459a8b37d23e4216" shape="plaintext"];
  "sha256:d712fad79caf60e0db2662a586e23eb3a32de2f5f084b6d663669b20311f3e9d" -> "sha256:3cd24b70a8a871a4881b94a1b8590e19d156b5d3e70de13d397e6eb43e2fbccc" [label=""];
  "sha256:31c887f427a5817fa51aec8b69b6750c404a7ad159b048351983ad78198aa5e3" -> "sha256:3cd24b70a8a871a4881b94a1b8590e19d156b5d3e70de13d397e6eb43e2fbccc" [label=""];
  "sha256:3cd24b70a8a871a4881b94a1b8590e19d156b5d3e70de13d397e6eb43e2fbccc" -> "sha256:20ceefc84010d42aa64883356b8bec106f102f1def73ec1d459a8b37d23e4216" [label=""];
}

