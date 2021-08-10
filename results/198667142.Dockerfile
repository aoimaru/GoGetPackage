[app/sources/198667142.Dockerfile]
digraph {
  "sha256:235ca25f922969a72316d8bfd2a5a440d1722a9228d2e1900f425ee21cb1ac45" [label="docker-image://docker.io/sequoiatools/gideon:latest" shape="ellipse"];
  "sha256:890388a236369e8e6eb62eea3abfaa7bd0f6f717861595924155e080d61150ce" [label="/bin/sh -c git clone https://github.com/couchbaselabs/jinja.git" shape="box"];
  "sha256:44815e6b037cbcd7180c0eb14d745c6a494368eb7dc43e29f268f3bac48d9346" [label="mkdir{path=/jinja}" shape="note"];
  "sha256:7bc0b9531ca19221b49658b37f45dd9d64de1d8bb744a8c6c153789e37a9c4bc" [label="sha256:7bc0b9531ca19221b49658b37f45dd9d64de1d8bb744a8c6c153789e37a9c4bc" shape="plaintext"];
  "sha256:235ca25f922969a72316d8bfd2a5a440d1722a9228d2e1900f425ee21cb1ac45" -> "sha256:890388a236369e8e6eb62eea3abfaa7bd0f6f717861595924155e080d61150ce" [label=""];
  "sha256:890388a236369e8e6eb62eea3abfaa7bd0f6f717861595924155e080d61150ce" -> "sha256:44815e6b037cbcd7180c0eb14d745c6a494368eb7dc43e29f268f3bac48d9346" [label=""];
  "sha256:44815e6b037cbcd7180c0eb14d745c6a494368eb7dc43e29f268f3bac48d9346" -> "sha256:7bc0b9531ca19221b49658b37f45dd9d64de1d8bb744a8c6c153789e37a9c4bc" [label=""];
}

