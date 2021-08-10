[app/sources/156713198.Dockerfile]
digraph {
  "sha256:bdb8537082b5e63e423256f88a296816205f7a7b4770996e60328889d2485adc" [label="local://context" shape="ellipse"];
  "sha256:1ee63fa9b992dcd9841a4edd6f0d2eca3eb7d87e23e77524374417ca167fa24a" [label="docker-image://docker.io/jbarratt/redis-dockerfile:latest" shape="ellipse"];
  "sha256:6467479980e3901ca1cdd2cd92dbb48e40d143eebb022866575919d83096dcda" [label="copy{src=/fixtures.sh, dest=/tmp/fixtures.sh}" shape="note"];
  "sha256:ff24293f1de1807bad980f871eea511042057238c9ce9ffcbc7462cf17385e18" [label="/bin/sh -c /tmp/fixtures.sh" shape="box"];
  "sha256:96a07a3c088b026b2bfc24198c82311f7085d3952a02ea6002cc83c546be11a7" [label="sha256:96a07a3c088b026b2bfc24198c82311f7085d3952a02ea6002cc83c546be11a7" shape="plaintext"];
  "sha256:1ee63fa9b992dcd9841a4edd6f0d2eca3eb7d87e23e77524374417ca167fa24a" -> "sha256:6467479980e3901ca1cdd2cd92dbb48e40d143eebb022866575919d83096dcda" [label=""];
  "sha256:bdb8537082b5e63e423256f88a296816205f7a7b4770996e60328889d2485adc" -> "sha256:6467479980e3901ca1cdd2cd92dbb48e40d143eebb022866575919d83096dcda" [label=""];
  "sha256:6467479980e3901ca1cdd2cd92dbb48e40d143eebb022866575919d83096dcda" -> "sha256:ff24293f1de1807bad980f871eea511042057238c9ce9ffcbc7462cf17385e18" [label=""];
  "sha256:ff24293f1de1807bad980f871eea511042057238c9ce9ffcbc7462cf17385e18" -> "sha256:96a07a3c088b026b2bfc24198c82311f7085d3952a02ea6002cc83c546be11a7" [label=""];
}

