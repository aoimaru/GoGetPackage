[app/sources/350097896.Dockerfile]
digraph {
  "sha256:6b5c578bf0cfeac6e937c0442af8508036d85663e2707a67adbccb8dbbe9cb9b" [label="local://context" shape="ellipse"];
  "sha256:c6f7a78daf0101230403922c9e681e065787947641e5b7ef56336567b13b570c" [label="copy{src=/goproxy, dest=/goproxy}" shape="note"];
  "sha256:be51749b4d130f3a014f3c01089782ee226ff3ec2a1f2c9f1f70ccb8463ffa99" [label="sha256:be51749b4d130f3a014f3c01089782ee226ff3ec2a1f2c9f1f70ccb8463ffa99" shape="plaintext"];
  "sha256:6b5c578bf0cfeac6e937c0442af8508036d85663e2707a67adbccb8dbbe9cb9b" -> "sha256:c6f7a78daf0101230403922c9e681e065787947641e5b7ef56336567b13b570c" [label=""];
  "sha256:c6f7a78daf0101230403922c9e681e065787947641e5b7ef56336567b13b570c" -> "sha256:be51749b4d130f3a014f3c01089782ee226ff3ec2a1f2c9f1f70ccb8463ffa99" [label=""];
}

