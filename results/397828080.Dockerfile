[app/sources/397828080.Dockerfile]
digraph {
  "sha256:0e3b807a359f79a6e5798d64647933a8bd105551e29a15ee49f8f6d0c836da93" [label="docker-image://docker.io/stefanscherer/webserver-windows:latest" shape="ellipse"];
  "sha256:bc2d51ec8479d15d4ff02880378b7981fa731ed142e21d923f345dc9ff05add1" [label="local://context" shape="ellipse"];
  "sha256:2428b27efa7ea9441af3f7bdc49bcf018bfb63a412b995ccb5df131cbffbec2f" [label="copy{src=/, dest=/C:site}" shape="note"];
  "sha256:4ecf93cf24a97329c8980b0ebf65dd2fd63c37544fe371407f7e137f78ef9f1b" [label="mkdir{path=/C:\\site}" shape="note"];
  "sha256:e6f52151eea721feb983f38a076b1610133df90d1067fb3a1e681d7a209996ac" [label="sha256:e6f52151eea721feb983f38a076b1610133df90d1067fb3a1e681d7a209996ac" shape="plaintext"];
  "sha256:0e3b807a359f79a6e5798d64647933a8bd105551e29a15ee49f8f6d0c836da93" -> "sha256:2428b27efa7ea9441af3f7bdc49bcf018bfb63a412b995ccb5df131cbffbec2f" [label=""];
  "sha256:bc2d51ec8479d15d4ff02880378b7981fa731ed142e21d923f345dc9ff05add1" -> "sha256:2428b27efa7ea9441af3f7bdc49bcf018bfb63a412b995ccb5df131cbffbec2f" [label=""];
  "sha256:2428b27efa7ea9441af3f7bdc49bcf018bfb63a412b995ccb5df131cbffbec2f" -> "sha256:4ecf93cf24a97329c8980b0ebf65dd2fd63c37544fe371407f7e137f78ef9f1b" [label=""];
  "sha256:4ecf93cf24a97329c8980b0ebf65dd2fd63c37544fe371407f7e137f78ef9f1b" -> "sha256:e6f52151eea721feb983f38a076b1610133df90d1067fb3a1e681d7a209996ac" [label=""];
}

