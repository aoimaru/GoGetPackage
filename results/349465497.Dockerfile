[app/sources/349465497.Dockerfile]
digraph {
  "sha256:a2f41205db58475455162ae03fd838a7118bcf8ea6a3c15712275e16d70d3b67" [label="local://context" shape="ellipse"];
  "sha256:0b41384f373f390555bc8c647554052e06ffe6a185741503eceb297c952ccca2" [label="docker-image://docker.io/library/openjdk:8u181-jre" shape="ellipse"];
  "sha256:583b92cb6901f4978a8a36ebcbd901136eb62ae36ca9212c5b87e4cb93e4f78a" [label="mkdir{path=/root}" shape="note"];
  "sha256:29263d0e73ea6d0d54768cd6db7c56c242bf7426965b3e623d3403e344523373" [label="copy{src=/destination/james-server-cassandra-ldap-guice.jar, dest=/root/james-server.jar}" shape="note"];
  "sha256:f5bedc52a19b0528ccfaf65cd29933bc061891d2cf8f83eb22a3d1355d31643f" [label="copy{src=/destination/james-server-cassandra-ldap-guice.lib, dest=/root/james-server-cassandra-ldap-guice.lib}" shape="note"];
  "sha256:097b6eef859471a21f1220d0a44e7074d935fd3a333706998c2098c3acbb7ef3" [label="copy{src=/destination/james-server-cli.jar, dest=/root/james-cli.jar}" shape="note"];
  "sha256:7054a9f6123dc78ec7a74ada0e8db3468c5181f559eda5dff6ab2a8048c9e78b" [label="copy{src=/destination/james-server-cli.lib, dest=/root/james-server-cli.lib}" shape="note"];
  "sha256:ebe6dba022bddbcb5f6fb4796f49da09ef280137799854dec76e6aa94c7dd420" [label="copy{src=/destination/conf, dest=/root/conf}" shape="note"];
  "sha256:51760adac17a23425eedc70d089e40b898825034c7b73db3bb6d916ef8ae9dbd" [label="sha256:51760adac17a23425eedc70d089e40b898825034c7b73db3bb6d916ef8ae9dbd" shape="plaintext"];
  "sha256:0b41384f373f390555bc8c647554052e06ffe6a185741503eceb297c952ccca2" -> "sha256:583b92cb6901f4978a8a36ebcbd901136eb62ae36ca9212c5b87e4cb93e4f78a" [label=""];
  "sha256:583b92cb6901f4978a8a36ebcbd901136eb62ae36ca9212c5b87e4cb93e4f78a" -> "sha256:29263d0e73ea6d0d54768cd6db7c56c242bf7426965b3e623d3403e344523373" [label=""];
  "sha256:a2f41205db58475455162ae03fd838a7118bcf8ea6a3c15712275e16d70d3b67" -> "sha256:29263d0e73ea6d0d54768cd6db7c56c242bf7426965b3e623d3403e344523373" [label=""];
  "sha256:29263d0e73ea6d0d54768cd6db7c56c242bf7426965b3e623d3403e344523373" -> "sha256:f5bedc52a19b0528ccfaf65cd29933bc061891d2cf8f83eb22a3d1355d31643f" [label=""];
  "sha256:a2f41205db58475455162ae03fd838a7118bcf8ea6a3c15712275e16d70d3b67" -> "sha256:f5bedc52a19b0528ccfaf65cd29933bc061891d2cf8f83eb22a3d1355d31643f" [label=""];
  "sha256:f5bedc52a19b0528ccfaf65cd29933bc061891d2cf8f83eb22a3d1355d31643f" -> "sha256:097b6eef859471a21f1220d0a44e7074d935fd3a333706998c2098c3acbb7ef3" [label=""];
  "sha256:a2f41205db58475455162ae03fd838a7118bcf8ea6a3c15712275e16d70d3b67" -> "sha256:097b6eef859471a21f1220d0a44e7074d935fd3a333706998c2098c3acbb7ef3" [label=""];
  "sha256:097b6eef859471a21f1220d0a44e7074d935fd3a333706998c2098c3acbb7ef3" -> "sha256:7054a9f6123dc78ec7a74ada0e8db3468c5181f559eda5dff6ab2a8048c9e78b" [label=""];
  "sha256:a2f41205db58475455162ae03fd838a7118bcf8ea6a3c15712275e16d70d3b67" -> "sha256:7054a9f6123dc78ec7a74ada0e8db3468c5181f559eda5dff6ab2a8048c9e78b" [label=""];
  "sha256:7054a9f6123dc78ec7a74ada0e8db3468c5181f559eda5dff6ab2a8048c9e78b" -> "sha256:ebe6dba022bddbcb5f6fb4796f49da09ef280137799854dec76e6aa94c7dd420" [label=""];
  "sha256:a2f41205db58475455162ae03fd838a7118bcf8ea6a3c15712275e16d70d3b67" -> "sha256:ebe6dba022bddbcb5f6fb4796f49da09ef280137799854dec76e6aa94c7dd420" [label=""];
  "sha256:ebe6dba022bddbcb5f6fb4796f49da09ef280137799854dec76e6aa94c7dd420" -> "sha256:51760adac17a23425eedc70d089e40b898825034c7b73db3bb6d916ef8ae9dbd" [label=""];
}

