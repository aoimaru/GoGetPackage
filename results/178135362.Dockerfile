[app/sources/178135362.Dockerfile]
digraph {
  "sha256:8fc0d8c12e4036d74046412888b4d006ec2e207839dd9f6ae45441fbda47a0cf" [label="docker-image://docker.io/jboss/wildfly:10.1.0.Final" shape="ellipse"];
  "sha256:61be415bb4de28f22654fccfa5f117772d14ed0cd6fae25d844c9bc1479cf29e" [label="/bin/sh -c yum -y update && yum clean all" shape="box"];
  "sha256:01c14b5c1228c7aa20b64a01609f9b22b35f1c106f9c0e414f1f6330c9c996a3" [label="/bin/sh -c yum install -y wget" shape="box"];
  "sha256:0f322fa55eb18a811594f426a1ab272d5aa307eabe66f0c7e10f12211e216d5b" [label="/bin/sh -c echo $JBOSS_HOME" shape="box"];
  "sha256:df9056c235df5cd24447f48a007ac0673d2397ca2871f1df5c8076a9f8cf9671" [label="/bin/sh -c rm -rf $JBOSS_HOME/standalone/deployments/ROOT.war" shape="box"];
  "sha256:27427eed05db5076afb97bffd5c62ae99f55f9a536ae07dc6300f1cf46eea121" [label="local://context" shape="ellipse"];
  "sha256:2b79c455fb0b321e1c48f6f367f9a5f78fef0bbe5ced9ced60a938a5a7a67a8f" [label="copy{src=/docker/bootstrap.sh, dest=/bootstrap.sh}" shape="note"];
  "sha256:16b1d4b3af88953f6406e1726e63b5e2be3a1790cc8570bea7f5c38795bbc6c5" [label="copy{src=/docker/config-wildfly.py, dest=/config-wildfly.py}" shape="note"];
  "sha256:b05892caddc5fa48fdedd5d2fdb97c2435ce5952578405bc5db0bde51a9e8959" [label="copy{src=/docker/process-config.py, dest=/process-config.py}" shape="note"];
  "sha256:f82a4aa4f979e0d6006b5cdac5e0e382989446514160855a5e2ef23d651df3e8" [label="copy{src=/target/olympus.war, dest=/olympus.war}" shape="note"];
  "sha256:9bbb066b1ace19d79574e1f4ec95547977f292ed29865787fbaea415346a8fb3" [label="/bin/sh -c unzip -q ./olympus.war -d $JBOSS_HOME/standalone/deployments/olympus.war" shape="box"];
  "sha256:5a0f9f8ff5e612ff30957b50c9b478f4e2393198c5be830fe01c7d2b708304f8" [label="/bin/sh -c python ./process-config.py" shape="box"];
  "sha256:8f98ec6153ceb206739741678a22b49e6d95a3ea5c193b3d08a02e0e800a62ca" [label="/bin/sh -c touch $JBOSS_HOME/standalone/deployments/olympus.war.dodeploy" shape="box"];
  "sha256:8444e5c7313839fa39f9d28ac911a86a1134f37da8cf2f5bb97b7345cf1f094f" [label="/bin/sh -c echo \"run ./bootstrap.sh\"" shape="box"];
  "sha256:42f381521c3a61b76a4f3a5105dbe01378a8f07eab44e290e1fb074cb5a6d017" [label="sha256:42f381521c3a61b76a4f3a5105dbe01378a8f07eab44e290e1fb074cb5a6d017" shape="plaintext"];
  "sha256:8fc0d8c12e4036d74046412888b4d006ec2e207839dd9f6ae45441fbda47a0cf" -> "sha256:61be415bb4de28f22654fccfa5f117772d14ed0cd6fae25d844c9bc1479cf29e" [label=""];
  "sha256:61be415bb4de28f22654fccfa5f117772d14ed0cd6fae25d844c9bc1479cf29e" -> "sha256:01c14b5c1228c7aa20b64a01609f9b22b35f1c106f9c0e414f1f6330c9c996a3" [label=""];
  "sha256:01c14b5c1228c7aa20b64a01609f9b22b35f1c106f9c0e414f1f6330c9c996a3" -> "sha256:0f322fa55eb18a811594f426a1ab272d5aa307eabe66f0c7e10f12211e216d5b" [label=""];
  "sha256:0f322fa55eb18a811594f426a1ab272d5aa307eabe66f0c7e10f12211e216d5b" -> "sha256:df9056c235df5cd24447f48a007ac0673d2397ca2871f1df5c8076a9f8cf9671" [label=""];
  "sha256:df9056c235df5cd24447f48a007ac0673d2397ca2871f1df5c8076a9f8cf9671" -> "sha256:2b79c455fb0b321e1c48f6f367f9a5f78fef0bbe5ced9ced60a938a5a7a67a8f" [label=""];
  "sha256:27427eed05db5076afb97bffd5c62ae99f55f9a536ae07dc6300f1cf46eea121" -> "sha256:2b79c455fb0b321e1c48f6f367f9a5f78fef0bbe5ced9ced60a938a5a7a67a8f" [label=""];
  "sha256:2b79c455fb0b321e1c48f6f367f9a5f78fef0bbe5ced9ced60a938a5a7a67a8f" -> "sha256:16b1d4b3af88953f6406e1726e63b5e2be3a1790cc8570bea7f5c38795bbc6c5" [label=""];
  "sha256:27427eed05db5076afb97bffd5c62ae99f55f9a536ae07dc6300f1cf46eea121" -> "sha256:16b1d4b3af88953f6406e1726e63b5e2be3a1790cc8570bea7f5c38795bbc6c5" [label=""];
  "sha256:16b1d4b3af88953f6406e1726e63b5e2be3a1790cc8570bea7f5c38795bbc6c5" -> "sha256:b05892caddc5fa48fdedd5d2fdb97c2435ce5952578405bc5db0bde51a9e8959" [label=""];
  "sha256:27427eed05db5076afb97bffd5c62ae99f55f9a536ae07dc6300f1cf46eea121" -> "sha256:b05892caddc5fa48fdedd5d2fdb97c2435ce5952578405bc5db0bde51a9e8959" [label=""];
  "sha256:b05892caddc5fa48fdedd5d2fdb97c2435ce5952578405bc5db0bde51a9e8959" -> "sha256:f82a4aa4f979e0d6006b5cdac5e0e382989446514160855a5e2ef23d651df3e8" [label=""];
  "sha256:27427eed05db5076afb97bffd5c62ae99f55f9a536ae07dc6300f1cf46eea121" -> "sha256:f82a4aa4f979e0d6006b5cdac5e0e382989446514160855a5e2ef23d651df3e8" [label=""];
  "sha256:f82a4aa4f979e0d6006b5cdac5e0e382989446514160855a5e2ef23d651df3e8" -> "sha256:9bbb066b1ace19d79574e1f4ec95547977f292ed29865787fbaea415346a8fb3" [label=""];
  "sha256:9bbb066b1ace19d79574e1f4ec95547977f292ed29865787fbaea415346a8fb3" -> "sha256:5a0f9f8ff5e612ff30957b50c9b478f4e2393198c5be830fe01c7d2b708304f8" [label=""];
  "sha256:5a0f9f8ff5e612ff30957b50c9b478f4e2393198c5be830fe01c7d2b708304f8" -> "sha256:8f98ec6153ceb206739741678a22b49e6d95a3ea5c193b3d08a02e0e800a62ca" [label=""];
  "sha256:8f98ec6153ceb206739741678a22b49e6d95a3ea5c193b3d08a02e0e800a62ca" -> "sha256:8444e5c7313839fa39f9d28ac911a86a1134f37da8cf2f5bb97b7345cf1f094f" [label=""];
  "sha256:8444e5c7313839fa39f9d28ac911a86a1134f37da8cf2f5bb97b7345cf1f094f" -> "sha256:42f381521c3a61b76a4f3a5105dbe01378a8f07eab44e290e1fb074cb5a6d017" [label=""];
}

