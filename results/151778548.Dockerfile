[app/sources/151778548.Dockerfile]
digraph {
  "sha256:9976df2510c80c3d6ee221f4f5755155f8b2453a3ff70b98b9e0ac79dd21d63a" [label="local://context" shape="ellipse"];
  "sha256:105b5be11db3e59b3e4e8ce37ab81a81e439d1cbc204b3318fdd3865a888272e" [label="docker-image://docker.io/hortonworks/ambari-base:7.2-v7" shape="ellipse"];
  "sha256:0f2e2cc491e6a0b2f704a2439c26a7a305e5aa51292ae089ba1d88db2dd011fb" [label="copy{src=/ambari.repo, dest=/etc/yum.repos.d/}" shape="note"];
  "sha256:97ae6b5076e37100d177a9300095638149bf5cbc7a902f138e2f4e5dffda4c08" [label="/bin/sh -c yum install -y  ambari-agent && yum clean all" shape="box"];
  "sha256:e8924991b4b295f508ab92adff0dbc00b68d9dbba0922c0cd106e679c41c55ab" [label="/bin/sh -c mkdir -p /usr/lib/hadoop/lib" shape="box"];
  "sha256:1bafbfbbb2a4571517a358dd319f0ab6ef2de8912a1d1eab0468e814dad881bd" [label="copy{src=/public-hostname.sh, dest=/etc/ambari-agent/conf/public-hostname.sh}" shape="note"];
  "sha256:1687f393b52b3b04d9ffb91e23f00e54c47542f0bc109d16d3348ba7fb64ef70" [label="copy{src=/internal-hostname.sh, dest=/etc/ambari-agent/conf/internal-hostname.sh}" shape="note"];
  "sha256:bb4aa081ed93376890c3add17b0c61935d8af84422d7de31f85f355ebc7a1151" [label="/bin/sh -c sed -i \"/\\[agent\\]/ a public_hostname_script=\\/etc\\/ambari-agent\\/conf\\/public-hostname.sh\" /etc/ambari-agent/conf/ambari-agent.ini" shape="box"];
  "sha256:ccde7e6a8e541282482afeaf3dd0e60bca8de52230128e05503d88a5b253e5c2" [label="/bin/sh -c sed -i \"/\\[agent\\]/ a hostname_script=\\/etc\\/ambari-agent\\/conf\\/internal-hostname.sh\" /etc/ambari-agent/conf/ambari-agent.ini" shape="box"];
  "sha256:203598cf6e8ebbe29ed6cc4285f8eac220150250043ead5e4807c212679a5cce" [label="/bin/sh -c sed -i \"s/\\\"ifconfig\\\"/\\\"ifconfig eth0\\\"/\" /usr/lib/python2.6/site-packages/ambari_agent/Facter.py" shape="box"];
  "sha256:1a80930b0d7b4824c87b5f979dc1c0de92b296d1aa522aa28fdb9f0896fd09ac" [label="copy{src=/dash-azure-storage-2.2.0.jar, dest=/usr/lib/hadoop/lib/}" shape="note"];
  "sha256:06f5d6d6b0d9441b1f7c31caf0529f5687fe5c89f0772edff418759b325e84f9" [label="copy{src=/gcs-connector-latest-hadoop2.jar, dest=/usr/lib/hadoop/lib/}" shape="note"];
  "sha256:287f8e56390f3b189a1a0c9508e3c30e9924a51d386de92ea8d216fede476889" [label="copy{src=/init/init-agent.sh, dest=/opt/ambari-agent/init-agent.sh}" shape="note"];
  "sha256:200a45641e194a09c3c0c619bc2745b66dacdf0a76c481fa0ea85fef0d94b054" [label="/bin/sh -c chmod u+x /opt/ambari-agent/init-agent.sh" shape="box"];
  "sha256:5dd52e81fab528b94b980b82445e7051c4d95d1945af2dc8fc901c16b014bdc8" [label="copy{src=/init/ambari-agent.service, dest=/etc/systemd/system/ambari-agent.service}" shape="note"];
  "sha256:8114ce1cb5e6ac56116daf0da5dce91e0b0e93aa9454f902848ffc9e7f6adf4a" [label="/bin/sh -c systemctl enable ambari-agent" shape="box"];
  "sha256:e82b1805f8e5ed55cc29f1e5775c76ba0001cf48b949b7d67bca21f50d454353" [label="/bin/sh -c echo DefaultEnvironment=\\\"JAVA_HOME=$JAVA_HOME\\\" \\\"HADOOP_CLASSPATH=$HADOOP_CLASSPATH\\\" >> /etc/systemd/system.conf" shape="box"];
  "sha256:6bb554db4cc1ac222e086f4b49c629867f44eba1e5e4a37edf6084719987de34" [label="sha256:6bb554db4cc1ac222e086f4b49c629867f44eba1e5e4a37edf6084719987de34" shape="plaintext"];
  "sha256:105b5be11db3e59b3e4e8ce37ab81a81e439d1cbc204b3318fdd3865a888272e" -> "sha256:0f2e2cc491e6a0b2f704a2439c26a7a305e5aa51292ae089ba1d88db2dd011fb" [label=""];
  "sha256:9976df2510c80c3d6ee221f4f5755155f8b2453a3ff70b98b9e0ac79dd21d63a" -> "sha256:0f2e2cc491e6a0b2f704a2439c26a7a305e5aa51292ae089ba1d88db2dd011fb" [label=""];
  "sha256:0f2e2cc491e6a0b2f704a2439c26a7a305e5aa51292ae089ba1d88db2dd011fb" -> "sha256:97ae6b5076e37100d177a9300095638149bf5cbc7a902f138e2f4e5dffda4c08" [label=""];
  "sha256:97ae6b5076e37100d177a9300095638149bf5cbc7a902f138e2f4e5dffda4c08" -> "sha256:e8924991b4b295f508ab92adff0dbc00b68d9dbba0922c0cd106e679c41c55ab" [label=""];
  "sha256:e8924991b4b295f508ab92adff0dbc00b68d9dbba0922c0cd106e679c41c55ab" -> "sha256:1bafbfbbb2a4571517a358dd319f0ab6ef2de8912a1d1eab0468e814dad881bd" [label=""];
  "sha256:9976df2510c80c3d6ee221f4f5755155f8b2453a3ff70b98b9e0ac79dd21d63a" -> "sha256:1bafbfbbb2a4571517a358dd319f0ab6ef2de8912a1d1eab0468e814dad881bd" [label=""];
  "sha256:1bafbfbbb2a4571517a358dd319f0ab6ef2de8912a1d1eab0468e814dad881bd" -> "sha256:1687f393b52b3b04d9ffb91e23f00e54c47542f0bc109d16d3348ba7fb64ef70" [label=""];
  "sha256:9976df2510c80c3d6ee221f4f5755155f8b2453a3ff70b98b9e0ac79dd21d63a" -> "sha256:1687f393b52b3b04d9ffb91e23f00e54c47542f0bc109d16d3348ba7fb64ef70" [label=""];
  "sha256:1687f393b52b3b04d9ffb91e23f00e54c47542f0bc109d16d3348ba7fb64ef70" -> "sha256:bb4aa081ed93376890c3add17b0c61935d8af84422d7de31f85f355ebc7a1151" [label=""];
  "sha256:bb4aa081ed93376890c3add17b0c61935d8af84422d7de31f85f355ebc7a1151" -> "sha256:ccde7e6a8e541282482afeaf3dd0e60bca8de52230128e05503d88a5b253e5c2" [label=""];
  "sha256:ccde7e6a8e541282482afeaf3dd0e60bca8de52230128e05503d88a5b253e5c2" -> "sha256:203598cf6e8ebbe29ed6cc4285f8eac220150250043ead5e4807c212679a5cce" [label=""];
  "sha256:203598cf6e8ebbe29ed6cc4285f8eac220150250043ead5e4807c212679a5cce" -> "sha256:1a80930b0d7b4824c87b5f979dc1c0de92b296d1aa522aa28fdb9f0896fd09ac" [label=""];
  "sha256:9976df2510c80c3d6ee221f4f5755155f8b2453a3ff70b98b9e0ac79dd21d63a" -> "sha256:1a80930b0d7b4824c87b5f979dc1c0de92b296d1aa522aa28fdb9f0896fd09ac" [label=""];
  "sha256:1a80930b0d7b4824c87b5f979dc1c0de92b296d1aa522aa28fdb9f0896fd09ac" -> "sha256:06f5d6d6b0d9441b1f7c31caf0529f5687fe5c89f0772edff418759b325e84f9" [label=""];
  "sha256:9976df2510c80c3d6ee221f4f5755155f8b2453a3ff70b98b9e0ac79dd21d63a" -> "sha256:06f5d6d6b0d9441b1f7c31caf0529f5687fe5c89f0772edff418759b325e84f9" [label=""];
  "sha256:06f5d6d6b0d9441b1f7c31caf0529f5687fe5c89f0772edff418759b325e84f9" -> "sha256:287f8e56390f3b189a1a0c9508e3c30e9924a51d386de92ea8d216fede476889" [label=""];
  "sha256:9976df2510c80c3d6ee221f4f5755155f8b2453a3ff70b98b9e0ac79dd21d63a" -> "sha256:287f8e56390f3b189a1a0c9508e3c30e9924a51d386de92ea8d216fede476889" [label=""];
  "sha256:287f8e56390f3b189a1a0c9508e3c30e9924a51d386de92ea8d216fede476889" -> "sha256:200a45641e194a09c3c0c619bc2745b66dacdf0a76c481fa0ea85fef0d94b054" [label=""];
  "sha256:200a45641e194a09c3c0c619bc2745b66dacdf0a76c481fa0ea85fef0d94b054" -> "sha256:5dd52e81fab528b94b980b82445e7051c4d95d1945af2dc8fc901c16b014bdc8" [label=""];
  "sha256:9976df2510c80c3d6ee221f4f5755155f8b2453a3ff70b98b9e0ac79dd21d63a" -> "sha256:5dd52e81fab528b94b980b82445e7051c4d95d1945af2dc8fc901c16b014bdc8" [label=""];
  "sha256:5dd52e81fab528b94b980b82445e7051c4d95d1945af2dc8fc901c16b014bdc8" -> "sha256:8114ce1cb5e6ac56116daf0da5dce91e0b0e93aa9454f902848ffc9e7f6adf4a" [label=""];
  "sha256:8114ce1cb5e6ac56116daf0da5dce91e0b0e93aa9454f902848ffc9e7f6adf4a" -> "sha256:e82b1805f8e5ed55cc29f1e5775c76ba0001cf48b949b7d67bca21f50d454353" [label=""];
  "sha256:e82b1805f8e5ed55cc29f1e5775c76ba0001cf48b949b7d67bca21f50d454353" -> "sha256:6bb554db4cc1ac222e086f4b49c629867f44eba1e5e4a37edf6084719987de34" [label=""];
}

