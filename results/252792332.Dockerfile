[app/sources/252792332.Dockerfile]
digraph {
  "sha256:d14e33535890fed74205d01f2531baef1cf95724cf1b188d4a850d0d9b712a24" [label="docker-image://docker.io/dandelion/sample-tomcat:7.0.62-jdk7" shape="ellipse"];
  "sha256:e25423461dba2faf294bcacd3736a8d8188a19a2eac7a16756de64db59a34a95" [label="local://context" shape="ellipse"];
  "sha256:24880ae307a1efc5c860b35d4a3dc3ede5741c6300a622a50e03720344ac0217" [label="copy{src=/, dest=/home/dandelion}" shape="note"];
  "sha256:c48d2862df51dfa367d3bc7e5a382479334107b32738835fdb86d45413c24a02" [label="/bin/sh -c cd /home/dandelion && mvn package && cp -r target/datatables-jsp-plugins /usr/local/tomcat/webapps/ && rm -rf /home/dandelion" shape="box"];
  "sha256:53185963bbc7e23d4476a66995b4c0b0acea590b431516b4982407fddc5546b2" [label="sha256:53185963bbc7e23d4476a66995b4c0b0acea590b431516b4982407fddc5546b2" shape="plaintext"];
  "sha256:d14e33535890fed74205d01f2531baef1cf95724cf1b188d4a850d0d9b712a24" -> "sha256:24880ae307a1efc5c860b35d4a3dc3ede5741c6300a622a50e03720344ac0217" [label=""];
  "sha256:e25423461dba2faf294bcacd3736a8d8188a19a2eac7a16756de64db59a34a95" -> "sha256:24880ae307a1efc5c860b35d4a3dc3ede5741c6300a622a50e03720344ac0217" [label=""];
  "sha256:24880ae307a1efc5c860b35d4a3dc3ede5741c6300a622a50e03720344ac0217" -> "sha256:c48d2862df51dfa367d3bc7e5a382479334107b32738835fdb86d45413c24a02" [label=""];
  "sha256:c48d2862df51dfa367d3bc7e5a382479334107b32738835fdb86d45413c24a02" -> "sha256:53185963bbc7e23d4476a66995b4c0b0acea590b431516b4982407fddc5546b2" [label=""];
}

