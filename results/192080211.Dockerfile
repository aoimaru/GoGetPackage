[app/sources/192080211.Dockerfile]
digraph {
  "sha256:af73d87cea45a94f15352139e4007fd331fd8254721dc175a1787d8a49ef0d02" [label="docker-image://docker.io/selenium/standalone-chrome:latest" shape="ellipse"];
  "sha256:2077bfe611c2f5f964d01d1dd61d03f3f96d068edf88ae3b1e53dfe89b74e018" [label="local://context" shape="ellipse"];
  "sha256:394369a5437d9b1ed1c426a32df08472c98f093ad544c346671a6ed6b1f89836" [label="copy{src=/tests/behat/files, dest=/app/tests/behat/files}" shape="note"];
  "sha256:e20350f995a246939bdaff2ce4049f1e04ad9cecef27d18e43613a0adddc5625" [label="sha256:e20350f995a246939bdaff2ce4049f1e04ad9cecef27d18e43613a0adddc5625" shape="plaintext"];
  "sha256:af73d87cea45a94f15352139e4007fd331fd8254721dc175a1787d8a49ef0d02" -> "sha256:394369a5437d9b1ed1c426a32df08472c98f093ad544c346671a6ed6b1f89836" [label=""];
  "sha256:2077bfe611c2f5f964d01d1dd61d03f3f96d068edf88ae3b1e53dfe89b74e018" -> "sha256:394369a5437d9b1ed1c426a32df08472c98f093ad544c346671a6ed6b1f89836" [label=""];
  "sha256:394369a5437d9b1ed1c426a32df08472c98f093ad544c346671a6ed6b1f89836" -> "sha256:e20350f995a246939bdaff2ce4049f1e04ad9cecef27d18e43613a0adddc5625" [label=""];
}

