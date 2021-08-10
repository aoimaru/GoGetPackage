[app/sources/252797809.Dockerfile]
digraph {
  "sha256:10647df804f877c6dbdd1bc812461dc8499685a64c2403bf9511544cf3983933" [label="docker-image://docker.io/cocoon/droydrunner:latest" shape="ellipse"];
  "sha256:2cdaca8fe7e8788fc29edfb1fc184cace2d1f89726843a916f5a0e261d08c993" [label="/bin/sh -c mkdir /opt/iva" shape="box"];
  "sha256:fec33ebbe6374632bc68c35ae2c5bde8c00b7021a33334b20c914d76d7d43f9f" [label="mkdir{path=/opt/iva}" shape="note"];
  "sha256:db77e16930bf10a69d38b689bae221fb174c8dd008532c5a745706338fb16f6c" [label="local://context" shape="ellipse"];
  "sha256:65a09b941aab666daaae3d1d2c0ba7cf069f4478fc4d521abb119ac8c0520435" [label="copy{src=/requirements.txt, dest=/opt/iva/}" shape="note"];
  "sha256:0deb2ea3e9b8c34072c5b28d76538f5b8d6c477e7ebe1b0ca6c79d0be65a5486" [label="/bin/sh -c pip install -r /opt/iva/requirements.txt" shape="box"];
  "sha256:7a64abebe2a9a31153f02d5fc8d0c7a914603452745a699ea7f5afde37e56b13" [label="/bin/sh -c pip install PyYAML" shape="box"];
  "sha256:c72943f0256878cb878388487ab106a7c6b4b64f506141e3998b93f3c0e45b86" [label="/bin/sh -c pip install git+https://bitbucket.org/cocoon_bitbucket/pyjenkins.git" shape="box"];
  "sha256:0c609d90d7104c62a2dd2e7c5b6a36b289b10de34fcdeec4b1b84e7154b0ad87" [label="copy{src=/demo, dest=/tests/}" shape="note"];
  "sha256:e0a9ca8f6966dec4eb4985901627172e0a3649462aac26d75e7a374d05b5646e" [label="mkdir{path=/tests}" shape="note"];
  "sha256:3829c87c676f3b7ccfe003039f82897c6f59f3a614856814c40b5eff4eb1a01b" [label="sha256:3829c87c676f3b7ccfe003039f82897c6f59f3a614856814c40b5eff4eb1a01b" shape="plaintext"];
  "sha256:10647df804f877c6dbdd1bc812461dc8499685a64c2403bf9511544cf3983933" -> "sha256:2cdaca8fe7e8788fc29edfb1fc184cace2d1f89726843a916f5a0e261d08c993" [label=""];
  "sha256:2cdaca8fe7e8788fc29edfb1fc184cace2d1f89726843a916f5a0e261d08c993" -> "sha256:fec33ebbe6374632bc68c35ae2c5bde8c00b7021a33334b20c914d76d7d43f9f" [label=""];
  "sha256:fec33ebbe6374632bc68c35ae2c5bde8c00b7021a33334b20c914d76d7d43f9f" -> "sha256:65a09b941aab666daaae3d1d2c0ba7cf069f4478fc4d521abb119ac8c0520435" [label=""];
  "sha256:db77e16930bf10a69d38b689bae221fb174c8dd008532c5a745706338fb16f6c" -> "sha256:65a09b941aab666daaae3d1d2c0ba7cf069f4478fc4d521abb119ac8c0520435" [label=""];
  "sha256:65a09b941aab666daaae3d1d2c0ba7cf069f4478fc4d521abb119ac8c0520435" -> "sha256:0deb2ea3e9b8c34072c5b28d76538f5b8d6c477e7ebe1b0ca6c79d0be65a5486" [label=""];
  "sha256:0deb2ea3e9b8c34072c5b28d76538f5b8d6c477e7ebe1b0ca6c79d0be65a5486" -> "sha256:7a64abebe2a9a31153f02d5fc8d0c7a914603452745a699ea7f5afde37e56b13" [label=""];
  "sha256:7a64abebe2a9a31153f02d5fc8d0c7a914603452745a699ea7f5afde37e56b13" -> "sha256:c72943f0256878cb878388487ab106a7c6b4b64f506141e3998b93f3c0e45b86" [label=""];
  "sha256:c72943f0256878cb878388487ab106a7c6b4b64f506141e3998b93f3c0e45b86" -> "sha256:0c609d90d7104c62a2dd2e7c5b6a36b289b10de34fcdeec4b1b84e7154b0ad87" [label=""];
  "sha256:db77e16930bf10a69d38b689bae221fb174c8dd008532c5a745706338fb16f6c" -> "sha256:0c609d90d7104c62a2dd2e7c5b6a36b289b10de34fcdeec4b1b84e7154b0ad87" [label=""];
  "sha256:0c609d90d7104c62a2dd2e7c5b6a36b289b10de34fcdeec4b1b84e7154b0ad87" -> "sha256:e0a9ca8f6966dec4eb4985901627172e0a3649462aac26d75e7a374d05b5646e" [label=""];
  "sha256:e0a9ca8f6966dec4eb4985901627172e0a3649462aac26d75e7a374d05b5646e" -> "sha256:3829c87c676f3b7ccfe003039f82897c6f59f3a614856814c40b5eff4eb1a01b" [label=""];
}

