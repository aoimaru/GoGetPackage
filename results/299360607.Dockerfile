[app/sources/299360607.Dockerfile]
digraph {
  "sha256:54834f4b4aca9387145a8d501fb37ab08a7bfa670f896ff4c3fbcd34a126969a" [label="local://context" shape="ellipse"];
  "sha256:aa7620bd24f6cf428a9defc8554de81163bbd80cd90de3563e22fda68a30a943" [label="copy{src=/bin/linux/reboot-agent, dest=/reboot-agent}" shape="note"];
  "sha256:b331f35d2207e8a16bc11d8783c83dc95a33749cb675a513afd9b00c17183000" [label="sha256:b331f35d2207e8a16bc11d8783c83dc95a33749cb675a513afd9b00c17183000" shape="plaintext"];
  "sha256:54834f4b4aca9387145a8d501fb37ab08a7bfa670f896ff4c3fbcd34a126969a" -> "sha256:aa7620bd24f6cf428a9defc8554de81163bbd80cd90de3563e22fda68a30a943" [label=""];
  "sha256:aa7620bd24f6cf428a9defc8554de81163bbd80cd90de3563e22fda68a30a943" -> "sha256:b331f35d2207e8a16bc11d8783c83dc95a33749cb675a513afd9b00c17183000" [label=""];
}

