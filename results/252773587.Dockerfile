[app/sources/252773587.Dockerfile]
digraph {
  "sha256:fcf1c3358cc174ec9cb448a7ea2e569720c31d2e22653ee070604e3e505e4369" [label="local://context" shape="ellipse"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:03279f0f8b9a094ca2b4f1f4aa08a4e556f5f1a45500bff6b92a6e84f0d09a3f" [label="/bin/sh -c apt-get update && apt-get install -y libssl1.0.0 libssl-dev" shape="box"];
  "sha256:5efdbcb43ea9f655954dec0a861a565ca2aba5c5cddfca2a5ec89d2bffa8346e" [label="/bin/sh -c cd /lib/x86_64-linux-gnu && ln -s libssl.so.1.0.0 libssl.so.10 && ln -s libcrypto.so.1.0.0 libcrypto.so.10 && ln -s /lib/x86_64-linux-gnu/libssl.so.1.0.0 /usr/lib/libssl.so.10 && ln -s /lib/x86_64-linux-gnu/libcrypto.so.1.0.0 /usr/lib/libcrypto.so.10" shape="box"];
  "sha256:cabc3f63a1f5b5054857c468b8127e98000b85e04cfe3fa69d8b0d979adbc169" [label="/bin/sh -c echo \"create lab80 user and directories\" && useradd lab80 && mkdir /data && chown -R lab80:lab80 /data" shape="box"];
  "sha256:1cd356a757650b7cdbcfb073d24a97b595c02c8d65b25d9970156e36a4370601" [label="/bin/sh -c echo \"copy files\"" shape="box"];
  "sha256:386750d9c2664ae9654cc5c720d017c3fa3156d3ffcf5ad74571362e63051588" [label="copy{src=/forever.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:27cc5adf3ef2c7194e05ee57b7e9228f564ac7dce8a363727a663fba32496596" [label="copy{src=/db, dest=/data/db}" shape="note"];
  "sha256:c3f4f5194a55f54988c1f22c9adb0369a756247f3d75f96f9cc12e28e6bddee7" [label="copy{src=/configdb, dest=/data/configdb}" shape="note"];
  "sha256:c50c9ba417f382a56608ae357edd79bc64d88e74e8c6dcec79e12b4f8f8a66e5" [label="copy{src=/droneio, dest=/data/droneio}" shape="note"];
  "sha256:e052374e5aec64c3cd4d5da666af4aea2182f967aa2bc83a6614f7ba96f67c4c" [label="copy{src=/jenkins, dest=/data/jenkins}" shape="note"];
  "sha256:a0e5602440468d6d8f6074895f109b7df1515630735add142ce59f59138acca4" [label="sha256:a0e5602440468d6d8f6074895f109b7df1515630735add142ce59f59138acca4" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:03279f0f8b9a094ca2b4f1f4aa08a4e556f5f1a45500bff6b92a6e84f0d09a3f" [label=""];
  "sha256:03279f0f8b9a094ca2b4f1f4aa08a4e556f5f1a45500bff6b92a6e84f0d09a3f" -> "sha256:5efdbcb43ea9f655954dec0a861a565ca2aba5c5cddfca2a5ec89d2bffa8346e" [label=""];
  "sha256:5efdbcb43ea9f655954dec0a861a565ca2aba5c5cddfca2a5ec89d2bffa8346e" -> "sha256:cabc3f63a1f5b5054857c468b8127e98000b85e04cfe3fa69d8b0d979adbc169" [label=""];
  "sha256:cabc3f63a1f5b5054857c468b8127e98000b85e04cfe3fa69d8b0d979adbc169" -> "sha256:1cd356a757650b7cdbcfb073d24a97b595c02c8d65b25d9970156e36a4370601" [label=""];
  "sha256:1cd356a757650b7cdbcfb073d24a97b595c02c8d65b25d9970156e36a4370601" -> "sha256:386750d9c2664ae9654cc5c720d017c3fa3156d3ffcf5ad74571362e63051588" [label=""];
  "sha256:fcf1c3358cc174ec9cb448a7ea2e569720c31d2e22653ee070604e3e505e4369" -> "sha256:386750d9c2664ae9654cc5c720d017c3fa3156d3ffcf5ad74571362e63051588" [label=""];
  "sha256:386750d9c2664ae9654cc5c720d017c3fa3156d3ffcf5ad74571362e63051588" -> "sha256:27cc5adf3ef2c7194e05ee57b7e9228f564ac7dce8a363727a663fba32496596" [label=""];
  "sha256:fcf1c3358cc174ec9cb448a7ea2e569720c31d2e22653ee070604e3e505e4369" -> "sha256:27cc5adf3ef2c7194e05ee57b7e9228f564ac7dce8a363727a663fba32496596" [label=""];
  "sha256:27cc5adf3ef2c7194e05ee57b7e9228f564ac7dce8a363727a663fba32496596" -> "sha256:c3f4f5194a55f54988c1f22c9adb0369a756247f3d75f96f9cc12e28e6bddee7" [label=""];
  "sha256:fcf1c3358cc174ec9cb448a7ea2e569720c31d2e22653ee070604e3e505e4369" -> "sha256:c3f4f5194a55f54988c1f22c9adb0369a756247f3d75f96f9cc12e28e6bddee7" [label=""];
  "sha256:c3f4f5194a55f54988c1f22c9adb0369a756247f3d75f96f9cc12e28e6bddee7" -> "sha256:c50c9ba417f382a56608ae357edd79bc64d88e74e8c6dcec79e12b4f8f8a66e5" [label=""];
  "sha256:fcf1c3358cc174ec9cb448a7ea2e569720c31d2e22653ee070604e3e505e4369" -> "sha256:c50c9ba417f382a56608ae357edd79bc64d88e74e8c6dcec79e12b4f8f8a66e5" [label=""];
  "sha256:c50c9ba417f382a56608ae357edd79bc64d88e74e8c6dcec79e12b4f8f8a66e5" -> "sha256:e052374e5aec64c3cd4d5da666af4aea2182f967aa2bc83a6614f7ba96f67c4c" [label=""];
  "sha256:fcf1c3358cc174ec9cb448a7ea2e569720c31d2e22653ee070604e3e505e4369" -> "sha256:e052374e5aec64c3cd4d5da666af4aea2182f967aa2bc83a6614f7ba96f67c4c" [label=""];
  "sha256:e052374e5aec64c3cd4d5da666af4aea2182f967aa2bc83a6614f7ba96f67c4c" -> "sha256:a0e5602440468d6d8f6074895f109b7df1515630735add142ce59f59138acca4" [label=""];
}

