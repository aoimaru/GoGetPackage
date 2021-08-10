[app/sources/266789420.Dockerfile]
digraph {
  "sha256:9676a9e6bf7bbca585339284e2e04affc1220f80f10af509dc8b7c6072ada8bc" [label="docker-image://registry.access.redhat.com/rhel7:7.4-129" shape="ellipse"];
  "sha256:d18634832428d92dcc38c10a41b74f74015dd6329e7dfbec092c25ed64e43fbd" [label="/bin/sh -c yum -y install --disablerepo \"*\" --enablerepo rhel-7-server-rpms       mariadb-server openssl psmisc net-tools hostname &&     yum clean all" shape="box"];
  "sha256:749543dac664ac1d0acd95ff4d561f4c10c42754bfcc86646fe9572bb443af3a" [label="local://context" shape="ellipse"];
  "sha256:907b95298e5ed2e40cda48585b2c255522720bed835ddfefb0dac58005e73197" [label="copy{src=/scripts, dest=/scripts}" shape="note"];
  "sha256:16762c963b65231625b857eca2151f17b83db504562b36bedd52b1473ce67e88" [label="/bin/sh -c chmod 755 /scripts/* &&     MARIADB_DIRS=\"/var/lib/mysql /var/log/mariadb /run/mariadb\" &&     chown -R mysql:0 ${MARIADB_DIRS} &&     chmod -R g=u ${MARIADB_DIRS}" shape="box"];
  "sha256:4d0a355bb74933ace363b4d83b2ed92b4c64f8428a351019534ae9715a404f23" [label="sha256:4d0a355bb74933ace363b4d83b2ed92b4c64f8428a351019534ae9715a404f23" shape="plaintext"];
  "sha256:9676a9e6bf7bbca585339284e2e04affc1220f80f10af509dc8b7c6072ada8bc" -> "sha256:d18634832428d92dcc38c10a41b74f74015dd6329e7dfbec092c25ed64e43fbd" [label=""];
  "sha256:d18634832428d92dcc38c10a41b74f74015dd6329e7dfbec092c25ed64e43fbd" -> "sha256:907b95298e5ed2e40cda48585b2c255522720bed835ddfefb0dac58005e73197" [label=""];
  "sha256:749543dac664ac1d0acd95ff4d561f4c10c42754bfcc86646fe9572bb443af3a" -> "sha256:907b95298e5ed2e40cda48585b2c255522720bed835ddfefb0dac58005e73197" [label=""];
  "sha256:907b95298e5ed2e40cda48585b2c255522720bed835ddfefb0dac58005e73197" -> "sha256:16762c963b65231625b857eca2151f17b83db504562b36bedd52b1473ce67e88" [label=""];
  "sha256:16762c963b65231625b857eca2151f17b83db504562b36bedd52b1473ce67e88" -> "sha256:4d0a355bb74933ace363b4d83b2ed92b4c64f8428a351019534ae9715a404f23" [label=""];
}

