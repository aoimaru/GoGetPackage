[app/sources/177227701.Dockerfile]
digraph {
  "sha256:d512fbb8ada5adddf38da963160ede4e76aa66a0a5498ca5a01bd345de7a3abf" [label="docker-image://docker.io/library/debian:wheezy" shape="ellipse"];
  "sha256:af9d1f0862e481817962f2218501d638df9652ab559f821fd81c2428a521cf79" [label="local://context" shape="ellipse"];
  "sha256:03c74dde1f23e02289e56afb7111bb3fce1fed79f476a8ece3e4cfff719daf1a" [label="copy{src=/scripts/install-apt-deps.sh, dest=/scripts/}" shape="note"];
  "sha256:913cc239dddcb80c33c3179fcf5cf6a99d05f880e5d56464b774e10fc7bc89d2" [label="/bin/sh -c /scripts/install-apt-deps.sh" shape="box"];
  "sha256:57125b0e3b53adbff37735171b1037ac47a4a04d4391c2c2c528370d86f9d7d5" [label="copy{src=/scripts/build-go-builder.sh, dest=/scripts/}" shape="note"];
  "sha256:e89f3ec98a060ff0c207aa889619265189f47581c00d9ebf7e18c386b49a9601" [label="/bin/sh -c GO_REV=go1.4 BUILDER_REV=6735829f /scripts/build-go-builder.sh && test -f /usr/local/bin/builder" shape="box"];
  "sha256:8cae4bf2b28187a3d7f24b37bae4fd33f1014a42a69aa5b4c2813795b2cfb0a5" [label="sha256:8cae4bf2b28187a3d7f24b37bae4fd33f1014a42a69aa5b4c2813795b2cfb0a5" shape="plaintext"];
  "sha256:d512fbb8ada5adddf38da963160ede4e76aa66a0a5498ca5a01bd345de7a3abf" -> "sha256:03c74dde1f23e02289e56afb7111bb3fce1fed79f476a8ece3e4cfff719daf1a" [label=""];
  "sha256:af9d1f0862e481817962f2218501d638df9652ab559f821fd81c2428a521cf79" -> "sha256:03c74dde1f23e02289e56afb7111bb3fce1fed79f476a8ece3e4cfff719daf1a" [label=""];
  "sha256:03c74dde1f23e02289e56afb7111bb3fce1fed79f476a8ece3e4cfff719daf1a" -> "sha256:913cc239dddcb80c33c3179fcf5cf6a99d05f880e5d56464b774e10fc7bc89d2" [label=""];
  "sha256:913cc239dddcb80c33c3179fcf5cf6a99d05f880e5d56464b774e10fc7bc89d2" -> "sha256:57125b0e3b53adbff37735171b1037ac47a4a04d4391c2c2c528370d86f9d7d5" [label=""];
  "sha256:af9d1f0862e481817962f2218501d638df9652ab559f821fd81c2428a521cf79" -> "sha256:57125b0e3b53adbff37735171b1037ac47a4a04d4391c2c2c528370d86f9d7d5" [label=""];
  "sha256:57125b0e3b53adbff37735171b1037ac47a4a04d4391c2c2c528370d86f9d7d5" -> "sha256:e89f3ec98a060ff0c207aa889619265189f47581c00d9ebf7e18c386b49a9601" [label=""];
  "sha256:e89f3ec98a060ff0c207aa889619265189f47581c00d9ebf7e18c386b49a9601" -> "sha256:8cae4bf2b28187a3d7f24b37bae4fd33f1014a42a69aa5b4c2813795b2cfb0a5" [label=""];
}

