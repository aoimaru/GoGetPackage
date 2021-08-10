[app/sources/219954827.Dockerfile]
digraph {
  "sha256:e231423e04f1becf0d9b5f160a852a2b2596ed150e82b9d747d698a9782e3888" [label="docker-image://docker.io/frolvlad/alpine-oraclejdk8:slim" shape="ellipse"];
  "sha256:11ca4ff41714a0b82c94a87ee01f7f1500b1320837ef1c38455c487ca25f60bb" [label="local://context" shape="ellipse"];
  "sha256:aff5276076e3b4cf2bfce3902621107bee19db6d773c079cf65cd6c9263982be" [label="copy{src=/students-0.0.1.jar, dest=/app.jar}" shape="note"];
  "sha256:2cbe56ad8c4814fee6035391f554719c6e980dafe60c871abe93fa564c672678" [label="/bin/sh -c sh -c 'touch /app.jar'" shape="box"];
  "sha256:ee584ee56124fea3293ab916bf5e2a9a93341d31337cc061f47f9815770c1671" [label="sha256:ee584ee56124fea3293ab916bf5e2a9a93341d31337cc061f47f9815770c1671" shape="plaintext"];
  "sha256:e231423e04f1becf0d9b5f160a852a2b2596ed150e82b9d747d698a9782e3888" -> "sha256:aff5276076e3b4cf2bfce3902621107bee19db6d773c079cf65cd6c9263982be" [label=""];
  "sha256:11ca4ff41714a0b82c94a87ee01f7f1500b1320837ef1c38455c487ca25f60bb" -> "sha256:aff5276076e3b4cf2bfce3902621107bee19db6d773c079cf65cd6c9263982be" [label=""];
  "sha256:aff5276076e3b4cf2bfce3902621107bee19db6d773c079cf65cd6c9263982be" -> "sha256:2cbe56ad8c4814fee6035391f554719c6e980dafe60c871abe93fa564c672678" [label=""];
  "sha256:2cbe56ad8c4814fee6035391f554719c6e980dafe60c871abe93fa564c672678" -> "sha256:ee584ee56124fea3293ab916bf5e2a9a93341d31337cc061f47f9815770c1671" [label=""];
}

