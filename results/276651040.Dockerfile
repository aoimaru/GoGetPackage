[app/sources/276651040.Dockerfile]
digraph {
  "sha256:1426accc5d251054f7aee65b28c717ac8e21456d541173e998aaf3b2803cc816" [label="local://context" shape="ellipse"];
  "sha256:56ea3582cd045e302fa92391b7abac91b78d2a3001b66d2d08b11dd12543d548" [label="copy{src=/test-webserver, dest=/}" shape="note"];
  "sha256:41a4105748ff1e769cde4aa9578f21720fafe30533678e2ffce65abe3559892a" [label="sha256:41a4105748ff1e769cde4aa9578f21720fafe30533678e2ffce65abe3559892a" shape="plaintext"];
  "sha256:1426accc5d251054f7aee65b28c717ac8e21456d541173e998aaf3b2803cc816" -> "sha256:56ea3582cd045e302fa92391b7abac91b78d2a3001b66d2d08b11dd12543d548" [label=""];
  "sha256:56ea3582cd045e302fa92391b7abac91b78d2a3001b66d2d08b11dd12543d548" -> "sha256:41a4105748ff1e769cde4aa9578f21720fafe30533678e2ffce65abe3559892a" [label=""];
}

