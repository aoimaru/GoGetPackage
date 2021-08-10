[app/sources/252774945.Dockerfile]
digraph {
  "sha256:189dfc7e2558e844b8ab0ff6d362bc2c530d37020f6c3e0a37bca32824ecda20" [label="docker-image://docker.io/library/node:0.10-slim" shape="ellipse"];
  "sha256:a4fe736e8e4666847c60df2836b920cdb88cf776b023ae9856f98007aab08832" [label="mkdir{path=/app}" shape="note"];
  "sha256:3d1ef3fb1a70b54802ab089bfabc76acc3ee7e18b1f9e4bc591f4f24aa41354a" [label="local://context" shape="ellipse"];
  "sha256:abb0285af8de811d8b1dc9b78d2eadf9ae1390b11ee0a847f6a3991629401cee" [label="copy{src=/package.json, dest=/app/package.json}" shape="note"];
  "sha256:0cc08247da43cc22f46d4c5753bf4c1f371973a9d291c58ec37f7acbbdad02d3" [label="/bin/sh -c npm install" shape="box"];
  "sha256:43a1f7ac5a1a5b2074a5f24e2a0dac23eb9981c69483f92703d41b498b483225" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:9c0daae4df76a2378199ba30218a15335c95ab8f8f58e731f59cc422bb106db5" [label="sha256:9c0daae4df76a2378199ba30218a15335c95ab8f8f58e731f59cc422bb106db5" shape="plaintext"];
  "sha256:189dfc7e2558e844b8ab0ff6d362bc2c530d37020f6c3e0a37bca32824ecda20" -> "sha256:a4fe736e8e4666847c60df2836b920cdb88cf776b023ae9856f98007aab08832" [label=""];
  "sha256:a4fe736e8e4666847c60df2836b920cdb88cf776b023ae9856f98007aab08832" -> "sha256:abb0285af8de811d8b1dc9b78d2eadf9ae1390b11ee0a847f6a3991629401cee" [label=""];
  "sha256:3d1ef3fb1a70b54802ab089bfabc76acc3ee7e18b1f9e4bc591f4f24aa41354a" -> "sha256:abb0285af8de811d8b1dc9b78d2eadf9ae1390b11ee0a847f6a3991629401cee" [label=""];
  "sha256:abb0285af8de811d8b1dc9b78d2eadf9ae1390b11ee0a847f6a3991629401cee" -> "sha256:0cc08247da43cc22f46d4c5753bf4c1f371973a9d291c58ec37f7acbbdad02d3" [label=""];
  "sha256:0cc08247da43cc22f46d4c5753bf4c1f371973a9d291c58ec37f7acbbdad02d3" -> "sha256:43a1f7ac5a1a5b2074a5f24e2a0dac23eb9981c69483f92703d41b498b483225" [label=""];
  "sha256:3d1ef3fb1a70b54802ab089bfabc76acc3ee7e18b1f9e4bc591f4f24aa41354a" -> "sha256:43a1f7ac5a1a5b2074a5f24e2a0dac23eb9981c69483f92703d41b498b483225" [label=""];
  "sha256:43a1f7ac5a1a5b2074a5f24e2a0dac23eb9981c69483f92703d41b498b483225" -> "sha256:9c0daae4df76a2378199ba30218a15335c95ab8f8f58e731f59cc422bb106db5" [label=""];
}

