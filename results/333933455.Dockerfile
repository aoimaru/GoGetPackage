[app/sources/333933455.Dockerfile]
digraph {
  "sha256:5cd998397e23ee4e3d13d420545a59d36d7464d1da5142bc9db85782e54cedf2" [label="local://context" shape="ellipse"];
  "sha256:5b0b3469893556a3b1410458ffc767d0f65edbfe6867083caec1dc26beb0b72c" [label="copy{src=/kubectl, dest=/kubectl}" shape="note"];
  "sha256:02b913e8d3995916b91335b4e6826644735ba1ebc5aa1b79ce726fb522aa3a9f" [label="sha256:02b913e8d3995916b91335b4e6826644735ba1ebc5aa1b79ce726fb522aa3a9f" shape="plaintext"];
  "sha256:5cd998397e23ee4e3d13d420545a59d36d7464d1da5142bc9db85782e54cedf2" -> "sha256:5b0b3469893556a3b1410458ffc767d0f65edbfe6867083caec1dc26beb0b72c" [label=""];
  "sha256:5b0b3469893556a3b1410458ffc767d0f65edbfe6867083caec1dc26beb0b72c" -> "sha256:02b913e8d3995916b91335b4e6826644735ba1ebc5aa1b79ce726fb522aa3a9f" [label=""];
}

