[app/sources/252767700.Dockerfile]
digraph {
  "sha256:a5d39839c39cd4bd7fb960856a647e2bb12c7b06ec949f6bf97790e3436e389c" [label="docker-image://docker.io/library/mysql:latest" shape="ellipse"];
  "sha256:1b91e936ceded3156f26009a2e0420cd78c7572fcb6a71c93493dccd18f00e44" [label="local://context" shape="ellipse"];
  "sha256:f50211630e10c37fc1dcf24bb6a1a3170efe7d4841bca6b5a062031790dab7d6" [label="copy{src=/bugzilla.cnf, dest=/etc/mysql/conf.d/}" shape="note"];
  "sha256:9930049632249f689fee9cff8125274b277a63e1fd11e32e1d1b99a27879cb43" [label="sha256:9930049632249f689fee9cff8125274b277a63e1fd11e32e1d1b99a27879cb43" shape="plaintext"];
  "sha256:a5d39839c39cd4bd7fb960856a647e2bb12c7b06ec949f6bf97790e3436e389c" -> "sha256:f50211630e10c37fc1dcf24bb6a1a3170efe7d4841bca6b5a062031790dab7d6" [label=""];
  "sha256:1b91e936ceded3156f26009a2e0420cd78c7572fcb6a71c93493dccd18f00e44" -> "sha256:f50211630e10c37fc1dcf24bb6a1a3170efe7d4841bca6b5a062031790dab7d6" [label=""];
  "sha256:f50211630e10c37fc1dcf24bb6a1a3170efe7d4841bca6b5a062031790dab7d6" -> "sha256:9930049632249f689fee9cff8125274b277a63e1fd11e32e1d1b99a27879cb43" [label=""];
}

