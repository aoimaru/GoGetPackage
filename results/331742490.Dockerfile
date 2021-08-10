[app/sources/331742490.Dockerfile]
digraph {
  "sha256:3e27f59a6cb040e1c3432176712b2a22e482c8c4a7c6c146872d15e6fb2e0b2b" [label="docker-image://docker.io/microsoft/dotnet:2.1.2-aspnetcore-runtime" shape="ellipse"];
  "sha256:06d9920babab3e7c41165db83bf7f6383ef381bf8ea7e301af67338cd2f1b080" [label="mkdir{path=/app}" shape="note"];
  "sha256:e7386f5870acb10bfeff1809c7e161a0c6a81bea96f4f076dde55f83cfe7b533" [label="local://context" shape="ellipse"];
  "sha256:bd9af764c01537feebe2563d1ef2999b2ac7e4d60c7748e27faba597d77ed66b" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:ac68be00bfcb5859e86b27c1f8f963e247aee8329a3cf06eb9b741f62bebddad" [label="sha256:ac68be00bfcb5859e86b27c1f8f963e247aee8329a3cf06eb9b741f62bebddad" shape="plaintext"];
  "sha256:3e27f59a6cb040e1c3432176712b2a22e482c8c4a7c6c146872d15e6fb2e0b2b" -> "sha256:06d9920babab3e7c41165db83bf7f6383ef381bf8ea7e301af67338cd2f1b080" [label=""];
  "sha256:06d9920babab3e7c41165db83bf7f6383ef381bf8ea7e301af67338cd2f1b080" -> "sha256:bd9af764c01537feebe2563d1ef2999b2ac7e4d60c7748e27faba597d77ed66b" [label=""];
  "sha256:e7386f5870acb10bfeff1809c7e161a0c6a81bea96f4f076dde55f83cfe7b533" -> "sha256:bd9af764c01537feebe2563d1ef2999b2ac7e4d60c7748e27faba597d77ed66b" [label=""];
  "sha256:bd9af764c01537feebe2563d1ef2999b2ac7e4d60c7748e27faba597d77ed66b" -> "sha256:ac68be00bfcb5859e86b27c1f8f963e247aee8329a3cf06eb9b741f62bebddad" [label=""];
}

