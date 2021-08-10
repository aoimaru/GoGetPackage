[app/sources/475337872.Dockerfile]
digraph {
  "sha256:762f5cf0b29fa74e01b0dcca7a462422c210bc4b7842a5b7232d52f64a14ed90" [label="local://context" shape="ellipse"];
  "sha256:269a51f4f0dea0c9269b8457e3c3915cab235a50d12192b4ec2880139efcdeb3" [label="copy{src=/server, dest=/server}" shape="note"];
  "sha256:1b1947074c4466ef195fcee31fd136c4ec4ed5f9c272a97c3cbb8f1eb457b3ba" [label="sha256:1b1947074c4466ef195fcee31fd136c4ec4ed5f9c272a97c3cbb8f1eb457b3ba" shape="plaintext"];
  "sha256:762f5cf0b29fa74e01b0dcca7a462422c210bc4b7842a5b7232d52f64a14ed90" -> "sha256:269a51f4f0dea0c9269b8457e3c3915cab235a50d12192b4ec2880139efcdeb3" [label=""];
  "sha256:269a51f4f0dea0c9269b8457e3c3915cab235a50d12192b4ec2880139efcdeb3" -> "sha256:1b1947074c4466ef195fcee31fd136c4ec4ed5f9c272a97c3cbb8f1eb457b3ba" [label=""];
}

