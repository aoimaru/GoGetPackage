[app/sources/310196495.Dockerfile]
digraph {
  "sha256:9b465334e93074fc9dd50a1f5292af7610680b60565a93fe9e36d78a656dde7f" [label="local://context" shape="ellipse"];
  "sha256:99738f6b4cfb351d15e02d90e2ea003c8aaae98d80c2561f014d520f6e7ca4bd" [label="copy{src=/kubectl, dest=/kubectl}" shape="note"];
  "sha256:48237e39ad9549e5d4da6b031990a7c29c7e070556e03dd2029f3090e162bc16" [label="sha256:48237e39ad9549e5d4da6b031990a7c29c7e070556e03dd2029f3090e162bc16" shape="plaintext"];
  "sha256:9b465334e93074fc9dd50a1f5292af7610680b60565a93fe9e36d78a656dde7f" -> "sha256:99738f6b4cfb351d15e02d90e2ea003c8aaae98d80c2561f014d520f6e7ca4bd" [label=""];
  "sha256:99738f6b4cfb351d15e02d90e2ea003c8aaae98d80c2561f014d520f6e7ca4bd" -> "sha256:48237e39ad9549e5d4da6b031990a7c29c7e070556e03dd2029f3090e162bc16" [label=""];
}

