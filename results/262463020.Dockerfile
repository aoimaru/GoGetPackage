[app/sources/262463020.Dockerfile]
digraph {
  "sha256:4a99c59693254cfed194fcd1d7d02b94a47df71f9708d0ade78e3ab24e6d35df" [label="docker-image://docker.io/library/oraclelinux:latest" shape="ellipse"];
  "sha256:830e9388fbccfe3901d918a9268e8724f73c696ef7017bf369f80e58878d80b6" [label="/bin/sh -c groupadd dba && useradd -m -G dba oracle && mkdir /u01 && chown oracle:dba /u01" shape="box"];
  "sha256:7c8f8546a1f2c96c38d315f6a338dc2d2663c70d2ff7ae46c113776ce63c0df7" [label="/bin/sh -c yum install -y yum install oracle-rdbms-server-11gR2-preinstall glibc-static wget unzip && yum clean all" shape="box"];
  "sha256:7715e7a343d1d4ecd0af25ee0656f0faa8800bddbe3ecd1073df4d1b3fcc7888" [label="local://context" shape="ellipse"];
  "sha256:dc57412dda40682fe5714a714c559be0c598556505d7e7f4050976185aff313e" [label="copy{src=/install, dest=/install}" shape="note"];
  "sha256:417b4d6a0d12bcc5e17f63d900d1dae6e8e38bf491bc4511085ce8a91bfa37a3" [label="/bin/sh -c /install/oracle_install.sh" shape="box"];
  "sha256:61965f4c8e7f9e656f2dd672f336ff5c9c949c96fdc92e86533c3085fea382df" [label="sha256:61965f4c8e7f9e656f2dd672f336ff5c9c949c96fdc92e86533c3085fea382df" shape="plaintext"];
  "sha256:4a99c59693254cfed194fcd1d7d02b94a47df71f9708d0ade78e3ab24e6d35df" -> "sha256:830e9388fbccfe3901d918a9268e8724f73c696ef7017bf369f80e58878d80b6" [label=""];
  "sha256:830e9388fbccfe3901d918a9268e8724f73c696ef7017bf369f80e58878d80b6" -> "sha256:7c8f8546a1f2c96c38d315f6a338dc2d2663c70d2ff7ae46c113776ce63c0df7" [label=""];
  "sha256:7c8f8546a1f2c96c38d315f6a338dc2d2663c70d2ff7ae46c113776ce63c0df7" -> "sha256:dc57412dda40682fe5714a714c559be0c598556505d7e7f4050976185aff313e" [label=""];
  "sha256:7715e7a343d1d4ecd0af25ee0656f0faa8800bddbe3ecd1073df4d1b3fcc7888" -> "sha256:dc57412dda40682fe5714a714c559be0c598556505d7e7f4050976185aff313e" [label=""];
  "sha256:dc57412dda40682fe5714a714c559be0c598556505d7e7f4050976185aff313e" -> "sha256:417b4d6a0d12bcc5e17f63d900d1dae6e8e38bf491bc4511085ce8a91bfa37a3" [label=""];
  "sha256:417b4d6a0d12bcc5e17f63d900d1dae6e8e38bf491bc4511085ce8a91bfa37a3" -> "sha256:61965f4c8e7f9e656f2dd672f336ff5c9c949c96fdc92e86533c3085fea382df" [label=""];
}

