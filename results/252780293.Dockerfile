[app/sources/252780293.Dockerfile]
digraph {
  "sha256:25e75814cad3ce07f0d8a556b1c366bf88f72fe17e5ee6b547c5286467d678d9" [label="docker-image://docker.io/convox/fakes3:latest" shape="ellipse"];
  "sha256:76fd69ec2d6c5ce8b0f6f6ffbf00d0b2a0d18c0a6ecf266421aa8cbf1cdb46ea" [label="local://context" shape="ellipse"];
  "sha256:2fa2eb75f4d2e4b5d3e296cb65a129bf8f86b732df2dcde8c1a7aa1ecdc50c3e" [label="copy{src=/bin/fakes3-convox, dest=/opt/fakes3/bin/fakes3-convox}" shape="note"];
  "sha256:076d1939d6f95cf2051451ad43ec2c19bdfc3a0cca3c06b45857b4fdafdeaf9b" [label="sha256:076d1939d6f95cf2051451ad43ec2c19bdfc3a0cca3c06b45857b4fdafdeaf9b" shape="plaintext"];
  "sha256:25e75814cad3ce07f0d8a556b1c366bf88f72fe17e5ee6b547c5286467d678d9" -> "sha256:2fa2eb75f4d2e4b5d3e296cb65a129bf8f86b732df2dcde8c1a7aa1ecdc50c3e" [label=""];
  "sha256:76fd69ec2d6c5ce8b0f6f6ffbf00d0b2a0d18c0a6ecf266421aa8cbf1cdb46ea" -> "sha256:2fa2eb75f4d2e4b5d3e296cb65a129bf8f86b732df2dcde8c1a7aa1ecdc50c3e" [label=""];
  "sha256:2fa2eb75f4d2e4b5d3e296cb65a129bf8f86b732df2dcde8c1a7aa1ecdc50c3e" -> "sha256:076d1939d6f95cf2051451ad43ec2c19bdfc3a0cca3c06b45857b4fdafdeaf9b" [label=""];
}

