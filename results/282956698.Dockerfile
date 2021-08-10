[app/sources/282956698.Dockerfile]
digraph {
  "sha256:3c8fc6456357a19cbc0bd44b77e51eb3b2d83d3d5359f24c43749307e78a1554" [label="docker-image://registry.lubanresearch.com:5000/baseservice:0.1" shape="ellipse"];
  "sha256:d8f354dd9136ec67281885737f02d502b6e6b9c710c2bec9d389e90075909020" [label="local://context" shape="ellipse"];
  "sha256:5a5e7163c21e64eadb94c198bf7c781b4011eaeae2a8b96a5beb883dcc72556e" [label="copy{src=/target/searchservice.jar, dest=/app.jar}" shape="note"];
  "sha256:25c5253459c4127e53ea92b1543f15b81cbc4685a80befe1e6b44852234c45db" [label="sha256:25c5253459c4127e53ea92b1543f15b81cbc4685a80befe1e6b44852234c45db" shape="plaintext"];
  "sha256:3c8fc6456357a19cbc0bd44b77e51eb3b2d83d3d5359f24c43749307e78a1554" -> "sha256:5a5e7163c21e64eadb94c198bf7c781b4011eaeae2a8b96a5beb883dcc72556e" [label=""];
  "sha256:d8f354dd9136ec67281885737f02d502b6e6b9c710c2bec9d389e90075909020" -> "sha256:5a5e7163c21e64eadb94c198bf7c781b4011eaeae2a8b96a5beb883dcc72556e" [label=""];
  "sha256:5a5e7163c21e64eadb94c198bf7c781b4011eaeae2a8b96a5beb883dcc72556e" -> "sha256:25c5253459c4127e53ea92b1543f15b81cbc4685a80befe1e6b44852234c45db" [label=""];
}

