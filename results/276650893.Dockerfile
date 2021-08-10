[app/sources/276650893.Dockerfile]
digraph {
  "sha256:8e1f01a07838569f0cb13d0dc797f247e166143df0f76bfd927bcc089a0f2f7e" [label="local://context" shape="ellipse"];
  "sha256:d2730d9c9ee038e9db5cd4c560edd5301f124bb0d3a38ecd47cf9e9838e17c4e" [label="copy{src=/liveness, dest=/server}" shape="note"];
  "sha256:46ecdcedfa4c7a106df6796f208cea798e50ee5573716381f6078c7540ddc4c1" [label="sha256:46ecdcedfa4c7a106df6796f208cea798e50ee5573716381f6078c7540ddc4c1" shape="plaintext"];
  "sha256:8e1f01a07838569f0cb13d0dc797f247e166143df0f76bfd927bcc089a0f2f7e" -> "sha256:d2730d9c9ee038e9db5cd4c560edd5301f124bb0d3a38ecd47cf9e9838e17c4e" [label=""];
  "sha256:d2730d9c9ee038e9db5cd4c560edd5301f124bb0d3a38ecd47cf9e9838e17c4e" -> "sha256:46ecdcedfa4c7a106df6796f208cea798e50ee5573716381f6078c7540ddc4c1" [label=""];
}

