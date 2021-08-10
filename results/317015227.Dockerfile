[app/sources/317015227.Dockerfile]
digraph {
  "sha256:4522d755b8d979e09210a6e2f56be01a6f0296affef196caa688b661caa9f153" [label="docker-image://docker.io/jkremser/mini-jre:8.1" shape="ellipse"];
  "sha256:7d72003ab873ec9616dc7a2ff5ca3a8cc1f1d8f7a0278f1603a36eb83b95799f" [label="local://context" shape="ellipse"];
  "sha256:9ea360dab6bea5a127b038d4479c9838fc33345ddfb4576fd312f14cbcae6ddf" [label="copy{src=/target/spark-operator-*.jar, dest=/spark-operator.jar}" shape="note"];
  "sha256:f8b06ee0ce0953e4835c53c3efec909be2ebf305f753e0a6510f1f21f5f9925c" [label="sha256:f8b06ee0ce0953e4835c53c3efec909be2ebf305f753e0a6510f1f21f5f9925c" shape="plaintext"];
  "sha256:4522d755b8d979e09210a6e2f56be01a6f0296affef196caa688b661caa9f153" -> "sha256:9ea360dab6bea5a127b038d4479c9838fc33345ddfb4576fd312f14cbcae6ddf" [label=""];
  "sha256:7d72003ab873ec9616dc7a2ff5ca3a8cc1f1d8f7a0278f1603a36eb83b95799f" -> "sha256:9ea360dab6bea5a127b038d4479c9838fc33345ddfb4576fd312f14cbcae6ddf" [label=""];
  "sha256:9ea360dab6bea5a127b038d4479c9838fc33345ddfb4576fd312f14cbcae6ddf" -> "sha256:f8b06ee0ce0953e4835c53c3efec909be2ebf305f753e0a6510f1f21f5f9925c" [label=""];
}

