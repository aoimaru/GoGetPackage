[app/sources/373096904.Dockerfile]
digraph {
  "sha256:41fe2179582e8a2ecd8b096ba9304db5b0b6b84977de34aa1f3956c3c708b1c2" [label="local://context" shape="ellipse"];
  "sha256:a71f7f42c7d3cf4f5c7c6e4f2cf0bc791e75a23ecab78a1203585823f4c31c54" [label="docker-image://docker.io/library/glassfish:4.1" shape="ellipse"];
  "sha256:56ddb80b5a80427204017720031cbb9c5a320ab5c237e3392a019cb63a336d61" [label="/bin/sh -c curl -L -o /tmp/${CERBERUS_PACKAGE_NAME}.zip https://sourceforge.net/projects/cerberus-source/files/${CERBERUS_PACKAGE_NAME}.zip/download &&     unzip -q -d /tmp /tmp/${CERBERUS_PACKAGE_NAME}.zip" shape="box"];
  "sha256:10081909876ae695c2fdb16ad460f5c881e74f7267571abc88b0acaa498ee702" [label="/bin/sh -c curl -L -o /tmp/${MYSQL_JAVA_CONNECTOR_NAME}.zip https://downloads.mysql.com/archives/get/file/${MYSQL_JAVA_CONNECTOR_NAME}.zip &&     unzip -q -d /tmp /tmp/${MYSQL_JAVA_CONNECTOR_NAME}.zip" shape="box"];
  "sha256:c86bb4c7017389c5336f9a3760288436e455dfe01e698a228ffc169d4126a8bb" [label="/bin/sh -c mkdir ${CERBERUS_PICTURES_PATH} &&     chmod u+wx ${CERBERUS_PICTURES_PATH}" shape="box"];
  "sha256:89696967fb008954c1d4d318120225867b3b59cbb2a8b47fc6587c62497ca44e" [label="copy{src=/glassfish_admin_set_password.txt, dest=/tmp/glassfish_admin_set_password.txt}" shape="note"];
  "sha256:23b41f46098f0087ec564b094e22cce8074fd076c371766642eb5326fbc5fac7" [label="copy{src=/glassfish_admin_password.txt, dest=/tmp/glassfish_admin_password.txt}" shape="note"];
  "sha256:5c0095ee5fc23d8a79351f7acc45d8223d54c80bb86c442a48fa14c4a97cd366" [label="copy{src=/entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:6b70beb728a0a8db4fd7a55d973a3f31ca225871e44420308a46823bc579eb00" [label="/bin/sh -c chmod u+x /entrypoint.sh" shape="box"];
  "sha256:ab3433369386f3284249b18b7966f65cd96f395f102f0a20a2b84b03e5ee67ad" [label="sha256:ab3433369386f3284249b18b7966f65cd96f395f102f0a20a2b84b03e5ee67ad" shape="plaintext"];
  "sha256:a71f7f42c7d3cf4f5c7c6e4f2cf0bc791e75a23ecab78a1203585823f4c31c54" -> "sha256:56ddb80b5a80427204017720031cbb9c5a320ab5c237e3392a019cb63a336d61" [label=""];
  "sha256:56ddb80b5a80427204017720031cbb9c5a320ab5c237e3392a019cb63a336d61" -> "sha256:10081909876ae695c2fdb16ad460f5c881e74f7267571abc88b0acaa498ee702" [label=""];
  "sha256:10081909876ae695c2fdb16ad460f5c881e74f7267571abc88b0acaa498ee702" -> "sha256:c86bb4c7017389c5336f9a3760288436e455dfe01e698a228ffc169d4126a8bb" [label=""];
  "sha256:c86bb4c7017389c5336f9a3760288436e455dfe01e698a228ffc169d4126a8bb" -> "sha256:89696967fb008954c1d4d318120225867b3b59cbb2a8b47fc6587c62497ca44e" [label=""];
  "sha256:41fe2179582e8a2ecd8b096ba9304db5b0b6b84977de34aa1f3956c3c708b1c2" -> "sha256:89696967fb008954c1d4d318120225867b3b59cbb2a8b47fc6587c62497ca44e" [label=""];
  "sha256:89696967fb008954c1d4d318120225867b3b59cbb2a8b47fc6587c62497ca44e" -> "sha256:23b41f46098f0087ec564b094e22cce8074fd076c371766642eb5326fbc5fac7" [label=""];
  "sha256:41fe2179582e8a2ecd8b096ba9304db5b0b6b84977de34aa1f3956c3c708b1c2" -> "sha256:23b41f46098f0087ec564b094e22cce8074fd076c371766642eb5326fbc5fac7" [label=""];
  "sha256:23b41f46098f0087ec564b094e22cce8074fd076c371766642eb5326fbc5fac7" -> "sha256:5c0095ee5fc23d8a79351f7acc45d8223d54c80bb86c442a48fa14c4a97cd366" [label=""];
  "sha256:41fe2179582e8a2ecd8b096ba9304db5b0b6b84977de34aa1f3956c3c708b1c2" -> "sha256:5c0095ee5fc23d8a79351f7acc45d8223d54c80bb86c442a48fa14c4a97cd366" [label=""];
  "sha256:5c0095ee5fc23d8a79351f7acc45d8223d54c80bb86c442a48fa14c4a97cd366" -> "sha256:6b70beb728a0a8db4fd7a55d973a3f31ca225871e44420308a46823bc579eb00" [label=""];
  "sha256:6b70beb728a0a8db4fd7a55d973a3f31ca225871e44420308a46823bc579eb00" -> "sha256:ab3433369386f3284249b18b7966f65cd96f395f102f0a20a2b84b03e5ee67ad" [label=""];
}

