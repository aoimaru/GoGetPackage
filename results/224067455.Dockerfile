[app/sources/224067455.Dockerfile]
digraph {
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" [label="docker-image://docker.io/library/node:latest" shape="ellipse"];
  "sha256:3e80b03c7c3df6b775dbd28187a522f28b27318e6fbad6fa108546c7901985ad" [label="/bin/sh -c npm install -g phantomjs" shape="box"];
  "sha256:e3af03fda7acfed7d52ee26c63ff1ad24e96f4bf75b3c9ffaab90519412ad3ed" [label="local://context" shape="ellipse"];
  "sha256:922d512ccdd1a013caf13058460b6e917b5e10819428488fcefaa0a9b5b07b12" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:7e0bed63dc08402cff0930ca6cac475165dee2a9e58ecb03ad95850f6f433965" [label="mkdir{path=/app}" shape="note"];
  "sha256:71d0f0ed18acaa99c4e568bf1520b87d3bd9a32415895fb45c06461490c23166" [label="sha256:71d0f0ed18acaa99c4e568bf1520b87d3bd9a32415895fb45c06461490c23166" shape="plaintext"];
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" -> "sha256:3e80b03c7c3df6b775dbd28187a522f28b27318e6fbad6fa108546c7901985ad" [label=""];
  "sha256:3e80b03c7c3df6b775dbd28187a522f28b27318e6fbad6fa108546c7901985ad" -> "sha256:922d512ccdd1a013caf13058460b6e917b5e10819428488fcefaa0a9b5b07b12" [label=""];
  "sha256:e3af03fda7acfed7d52ee26c63ff1ad24e96f4bf75b3c9ffaab90519412ad3ed" -> "sha256:922d512ccdd1a013caf13058460b6e917b5e10819428488fcefaa0a9b5b07b12" [label=""];
  "sha256:922d512ccdd1a013caf13058460b6e917b5e10819428488fcefaa0a9b5b07b12" -> "sha256:7e0bed63dc08402cff0930ca6cac475165dee2a9e58ecb03ad95850f6f433965" [label=""];
  "sha256:7e0bed63dc08402cff0930ca6cac475165dee2a9e58ecb03ad95850f6f433965" -> "sha256:71d0f0ed18acaa99c4e568bf1520b87d3bd9a32415895fb45c06461490c23166" [label=""];
}

