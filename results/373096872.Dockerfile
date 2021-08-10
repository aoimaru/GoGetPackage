[app/sources/373096872.Dockerfile]
digraph {
  "sha256:a71f7f42c7d3cf4f5c7c6e4f2cf0bc791e75a23ecab78a1203585823f4c31c54" [label="docker-image://docker.io/library/glassfish:4.1" shape="ellipse"];
  "sha256:bf3d22b663a13c6ceaea8bdf604fc5f7e9457f7ed4f5a24f08e4d3d50eca2eec" [label="/bin/sh -c curl -L -o /tmp/${CERBERUS_PACKAGE_NAME}.zip https://sourceforge.net/projects/cerberus-source/files/${CERBERUS_PACKAGE_NAME}.zip/download &&     unzip -q -d /tmp /tmp/${CERBERUS_PACKAGE_NAME}.zip" shape="box"];
  "sha256:fabb9cfbe0da459b081b1d0660b4fea5a06c311bbb3cd24d91d8eedba3054f98" [label="/bin/sh -c curl -L -o /tmp/${MYSQL_JAVA_CONNECTOR_NAME}.zip https://downloads.mysql.com/archives/get/file/${MYSQL_JAVA_CONNECTOR_NAME}.zip &&     unzip -q -d /tmp /tmp/${MYSQL_JAVA_CONNECTOR_NAME}.zip" shape="box"];
  "sha256:057ca36ea26d91dbe2a62c8ec6a0a6a209f6eac6de1dbbf01a3dece5003fa79b" [label="/bin/sh -c mkdir ${CERBERUS_PICTURES_PATH} &&     chmod u+wx ${CERBERUS_PICTURES_PATH}" shape="box"];
  "sha256:48fd2c8995ec32f90358ffd2516991370fd6cca14995670b84507d078b8722e1" [label="local://context" shape="ellipse"];
  "sha256:71e10622c92bd04081b16f60ced25f70bf990ec24da5c8a75df480b15496e1a0" [label="copy{src=/glassfish_admin_set_password.txt, dest=/tmp/glassfish_admin_set_password.txt}" shape="note"];
  "sha256:004aadb5106bd035b6570fb247a297a91048cdcacff58ee125d2811a74384ad7" [label="copy{src=/glassfish_admin_password.txt, dest=/tmp/glassfish_admin_password.txt}" shape="note"];
  "sha256:f33f1d6fdd58fdfd078547c5ded1c87d214054664dcac9a7b68c513afa0d1afc" [label="copy{src=/entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:4a7c6ba44c6503cd34ce2d54347c62425f6329b0561a114c0bd1390f0c0355da" [label="/bin/sh -c chmod u+x /entrypoint.sh" shape="box"];
  "sha256:74e54363c3b99efc08831c87176d687e85833c0245b0f6a0e8a20304ecc3ea21" [label="sha256:74e54363c3b99efc08831c87176d687e85833c0245b0f6a0e8a20304ecc3ea21" shape="plaintext"];
  "sha256:a71f7f42c7d3cf4f5c7c6e4f2cf0bc791e75a23ecab78a1203585823f4c31c54" -> "sha256:bf3d22b663a13c6ceaea8bdf604fc5f7e9457f7ed4f5a24f08e4d3d50eca2eec" [label=""];
  "sha256:bf3d22b663a13c6ceaea8bdf604fc5f7e9457f7ed4f5a24f08e4d3d50eca2eec" -> "sha256:fabb9cfbe0da459b081b1d0660b4fea5a06c311bbb3cd24d91d8eedba3054f98" [label=""];
  "sha256:fabb9cfbe0da459b081b1d0660b4fea5a06c311bbb3cd24d91d8eedba3054f98" -> "sha256:057ca36ea26d91dbe2a62c8ec6a0a6a209f6eac6de1dbbf01a3dece5003fa79b" [label=""];
  "sha256:057ca36ea26d91dbe2a62c8ec6a0a6a209f6eac6de1dbbf01a3dece5003fa79b" -> "sha256:71e10622c92bd04081b16f60ced25f70bf990ec24da5c8a75df480b15496e1a0" [label=""];
  "sha256:48fd2c8995ec32f90358ffd2516991370fd6cca14995670b84507d078b8722e1" -> "sha256:71e10622c92bd04081b16f60ced25f70bf990ec24da5c8a75df480b15496e1a0" [label=""];
  "sha256:71e10622c92bd04081b16f60ced25f70bf990ec24da5c8a75df480b15496e1a0" -> "sha256:004aadb5106bd035b6570fb247a297a91048cdcacff58ee125d2811a74384ad7" [label=""];
  "sha256:48fd2c8995ec32f90358ffd2516991370fd6cca14995670b84507d078b8722e1" -> "sha256:004aadb5106bd035b6570fb247a297a91048cdcacff58ee125d2811a74384ad7" [label=""];
  "sha256:004aadb5106bd035b6570fb247a297a91048cdcacff58ee125d2811a74384ad7" -> "sha256:f33f1d6fdd58fdfd078547c5ded1c87d214054664dcac9a7b68c513afa0d1afc" [label=""];
  "sha256:48fd2c8995ec32f90358ffd2516991370fd6cca14995670b84507d078b8722e1" -> "sha256:f33f1d6fdd58fdfd078547c5ded1c87d214054664dcac9a7b68c513afa0d1afc" [label=""];
  "sha256:f33f1d6fdd58fdfd078547c5ded1c87d214054664dcac9a7b68c513afa0d1afc" -> "sha256:4a7c6ba44c6503cd34ce2d54347c62425f6329b0561a114c0bd1390f0c0355da" [label=""];
  "sha256:4a7c6ba44c6503cd34ce2d54347c62425f6329b0561a114c0bd1390f0c0355da" -> "sha256:74e54363c3b99efc08831c87176d687e85833c0245b0f6a0e8a20304ecc3ea21" [label=""];
}

