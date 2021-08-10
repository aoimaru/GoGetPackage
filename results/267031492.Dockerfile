[app/sources/267031492.Dockerfile]
digraph {
  "sha256:b8f5f5d730e96a024811f08c239e05cc5e715be0157192b2d67c2da731859507" [label="docker-image://docker.io/caliveapicreator/4.0.00:latest" shape="ellipse"];
  "sha256:eabbad90e328e1491706337643596ac01172bc3da4cf7aa39139541be7f63c80" [label="/bin/sh -c sh -c 'curl -sL https://deb.nodesource.com/setup_8.x | bash -' &&     apt-get install -y nodejs &&     npm install liveapicreator-admin-cli -g" shape="box"];
  "sha256:f79212b7aec2acea072db59f9f509dd630b76cb8edd060c82fd144398e3bbe14" [label="local://context" shape="ellipse"];
  "sha256:30a3741e410e82532c04912d33e4a0302debfd4f042769c844f533d3d3d64d08" [label="copy{src=/etc/tls/node.p12, dest=/conf/server.p12}" shape="note"];
  "sha256:d54c81e4cf75a0e27c95bdaf0cff6ff0cfba2bfc58528b8780cc5181486e20c4" [label="copy{src=/etc/tls/ca.jks, dest=/conf/ca.jks}" shape="note"];
  "sha256:7050b85734dc5a376ea11d7e9d195c7e5b22cabc76392e08de3788b8ff02fe11" [label="copy{src=/etc/tomcat/conf/*, dest=/conf/}" shape="note"];
  "sha256:809ef1cb4358579abb7e570d41e53ed187b068668a7a0d24565e9097e21d883b" [label="sha256:809ef1cb4358579abb7e570d41e53ed187b068668a7a0d24565e9097e21d883b" shape="plaintext"];
  "sha256:b8f5f5d730e96a024811f08c239e05cc5e715be0157192b2d67c2da731859507" -> "sha256:eabbad90e328e1491706337643596ac01172bc3da4cf7aa39139541be7f63c80" [label=""];
  "sha256:eabbad90e328e1491706337643596ac01172bc3da4cf7aa39139541be7f63c80" -> "sha256:30a3741e410e82532c04912d33e4a0302debfd4f042769c844f533d3d3d64d08" [label=""];
  "sha256:f79212b7aec2acea072db59f9f509dd630b76cb8edd060c82fd144398e3bbe14" -> "sha256:30a3741e410e82532c04912d33e4a0302debfd4f042769c844f533d3d3d64d08" [label=""];
  "sha256:30a3741e410e82532c04912d33e4a0302debfd4f042769c844f533d3d3d64d08" -> "sha256:d54c81e4cf75a0e27c95bdaf0cff6ff0cfba2bfc58528b8780cc5181486e20c4" [label=""];
  "sha256:f79212b7aec2acea072db59f9f509dd630b76cb8edd060c82fd144398e3bbe14" -> "sha256:d54c81e4cf75a0e27c95bdaf0cff6ff0cfba2bfc58528b8780cc5181486e20c4" [label=""];
  "sha256:d54c81e4cf75a0e27c95bdaf0cff6ff0cfba2bfc58528b8780cc5181486e20c4" -> "sha256:7050b85734dc5a376ea11d7e9d195c7e5b22cabc76392e08de3788b8ff02fe11" [label=""];
  "sha256:f79212b7aec2acea072db59f9f509dd630b76cb8edd060c82fd144398e3bbe14" -> "sha256:7050b85734dc5a376ea11d7e9d195c7e5b22cabc76392e08de3788b8ff02fe11" [label=""];
  "sha256:7050b85734dc5a376ea11d7e9d195c7e5b22cabc76392e08de3788b8ff02fe11" -> "sha256:809ef1cb4358579abb7e570d41e53ed187b068668a7a0d24565e9097e21d883b" [label=""];
}

