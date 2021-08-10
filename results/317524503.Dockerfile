[app/sources/317524503.Dockerfile]
digraph {
  "sha256:d7e6c383a204ad229f1de34acc46b7a4fa96e4e2006370caf5c4ee33014f7572" [label="docker-image://docker.io/library/python:3.7" shape="ellipse"];
  "sha256:b9c5a27b557b68b80716e03921684cd83aa18b0e8a6494d6449a8417e1fe661c" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:e2295876583e8b4f3924d2e89b074a0afbf341b85510f3b7c4e3d64167dee44e" [label="local://context" shape="ellipse"];
  "sha256:a9a035aebbd017bcf123ab00b2a6bea0b0aa5799c1f1c304c4546202914b3fd3" [label="copy{src=/requirements.txt, dest=/usr/src/app/}" shape="note"];
  "sha256:4c58deaa12960d18af350aade814a926a11b8416332a6dfd6fa2c64f8fb8026f" [label="/bin/sh -c pip install --no-cache-dir -r requirements.txt" shape="box"];
  "sha256:3c86f453acb1974844db5ef7cf13c43f7b979dbbc75a51035dd2214e8d40df74" [label="copy{src=/, dest=/usr/src/app/}" shape="note"];
  "sha256:597c8da95e06fa26a9c3e949dc8c7e0b6588b6c3fcb4bda2877d644b7548b083" [label="sha256:597c8da95e06fa26a9c3e949dc8c7e0b6588b6c3fcb4bda2877d644b7548b083" shape="plaintext"];
  "sha256:d7e6c383a204ad229f1de34acc46b7a4fa96e4e2006370caf5c4ee33014f7572" -> "sha256:b9c5a27b557b68b80716e03921684cd83aa18b0e8a6494d6449a8417e1fe661c" [label=""];
  "sha256:b9c5a27b557b68b80716e03921684cd83aa18b0e8a6494d6449a8417e1fe661c" -> "sha256:a9a035aebbd017bcf123ab00b2a6bea0b0aa5799c1f1c304c4546202914b3fd3" [label=""];
  "sha256:e2295876583e8b4f3924d2e89b074a0afbf341b85510f3b7c4e3d64167dee44e" -> "sha256:a9a035aebbd017bcf123ab00b2a6bea0b0aa5799c1f1c304c4546202914b3fd3" [label=""];
  "sha256:a9a035aebbd017bcf123ab00b2a6bea0b0aa5799c1f1c304c4546202914b3fd3" -> "sha256:4c58deaa12960d18af350aade814a926a11b8416332a6dfd6fa2c64f8fb8026f" [label=""];
  "sha256:4c58deaa12960d18af350aade814a926a11b8416332a6dfd6fa2c64f8fb8026f" -> "sha256:3c86f453acb1974844db5ef7cf13c43f7b979dbbc75a51035dd2214e8d40df74" [label=""];
  "sha256:e2295876583e8b4f3924d2e89b074a0afbf341b85510f3b7c4e3d64167dee44e" -> "sha256:3c86f453acb1974844db5ef7cf13c43f7b979dbbc75a51035dd2214e8d40df74" [label=""];
  "sha256:3c86f453acb1974844db5ef7cf13c43f7b979dbbc75a51035dd2214e8d40df74" -> "sha256:597c8da95e06fa26a9c3e949dc8c7e0b6588b6c3fcb4bda2877d644b7548b083" [label=""];
}

