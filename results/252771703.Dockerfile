[app/sources/252771703.Dockerfile]
digraph {
  "sha256:de133701515bce8d723c98ab51a29db52d66507303a0ddcab36b63cdf16bdfbf" [label="docker-image://docker.io/library/jenkins:alpine" shape="ellipse"];
  "sha256:87592e3c6621d3c7bd9203eef7922a73c7a4ca1a7e952680b4c7da916c71af7f" [label="/bin/sh -c apk add --no-cache su-exec python py-pip && pip install awscli" shape="box"];
  "sha256:30e9dad540bc47ec19079078e42d3dc216e16c8d818677cb597b969164d1c438" [label="local://context" shape="ellipse"];
  "sha256:df335194220bccb65532eefe6e73c8922ecb56e0b317570c142987f19f4730bf" [label="copy{src=/run-root.sh, dest=/usr/local/bin/run-root.sh}" shape="note"];
  "sha256:653d354930c8058a0ab9a642ec2b15afd7f83ef57d566898e6d7850d90373113" [label="copy{src=/run-jenkins.sh, dest=/usr/local/bin/run-jenkins.sh}" shape="note"];
  "sha256:a07556c8d561af0fe139a94872055c22958c97d92bbff89bcf42737bb3fe80fb" [label="sha256:a07556c8d561af0fe139a94872055c22958c97d92bbff89bcf42737bb3fe80fb" shape="plaintext"];
  "sha256:de133701515bce8d723c98ab51a29db52d66507303a0ddcab36b63cdf16bdfbf" -> "sha256:87592e3c6621d3c7bd9203eef7922a73c7a4ca1a7e952680b4c7da916c71af7f" [label=""];
  "sha256:87592e3c6621d3c7bd9203eef7922a73c7a4ca1a7e952680b4c7da916c71af7f" -> "sha256:df335194220bccb65532eefe6e73c8922ecb56e0b317570c142987f19f4730bf" [label=""];
  "sha256:30e9dad540bc47ec19079078e42d3dc216e16c8d818677cb597b969164d1c438" -> "sha256:df335194220bccb65532eefe6e73c8922ecb56e0b317570c142987f19f4730bf" [label=""];
  "sha256:df335194220bccb65532eefe6e73c8922ecb56e0b317570c142987f19f4730bf" -> "sha256:653d354930c8058a0ab9a642ec2b15afd7f83ef57d566898e6d7850d90373113" [label=""];
  "sha256:30e9dad540bc47ec19079078e42d3dc216e16c8d818677cb597b969164d1c438" -> "sha256:653d354930c8058a0ab9a642ec2b15afd7f83ef57d566898e6d7850d90373113" [label=""];
  "sha256:653d354930c8058a0ab9a642ec2b15afd7f83ef57d566898e6d7850d90373113" -> "sha256:a07556c8d561af0fe139a94872055c22958c97d92bbff89bcf42737bb3fe80fb" [label=""];
}

