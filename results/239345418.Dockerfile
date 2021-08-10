[app/sources/239345418.Dockerfile]
digraph {
  "sha256:b5cbf969b5e0a093811fd7f08740e8842400f25c4c5a625cd9e6a8e0fbde2203" [label="docker-image://docker.io/library/node:8.9" shape="ellipse"];
  "sha256:4a53b6d79d682cc550d43f9b7314ce1ea2fc33dc2aee594a9c1fc289f66d4400" [label="local://context" shape="ellipse"];
  "sha256:130e4813ec6564e766e556a4270eca2c3bfb5ca1f4168ba1eb6ed222d97be390" [label="copy{src=/src/package.json, dest=/}" shape="note"];
  "sha256:86312203c185edcc10bc265ed7ab1c8f07960d3299462d1ed9f2c63f26b0b6e4" [label="/bin/sh -c cd / && yarn install -g" shape="box"];
  "sha256:972537d92672a7cf12e0b102c30d23c6cba79edbc3f3f8fe23857f4a62c8ac4e" [label="copy{src=/src, dest=/var/www}" shape="note"];
  "sha256:9111024ded59938b8b727d70abe39156ba8476114f5c1fae55c34a77ceef0521" [label="mkdir{path=/var/www}" shape="note"];
  "sha256:180d061b505261bc195026de77c9175ece6cb684b58d3d703c8ba0b0c918b6e7" [label="/bin/sh -c cd /tmp && ARCH=$(echo \"$(uname -s|tr '[:upper:]' '[:lower:]'|sed 's/mingw64_nt.*/windows/')-$(uname -m | sed 's/x86_64/amd64/g')\" | awk '{print tolower($0)}') && echo $ARCH &&wget -c https://nexus.hyperledger.org/content/repositories/releases/org/hyperledger/fabric/hyperledger-fabric/${ARCH}-${FABRIC_VERSION}/hyperledger-fabric-${ARCH}-${FABRIC_VERSION}.tar.gz && tar -zxvf hyperledger-fabric-${ARCH}-${FABRIC_VERSION}.tar.gz && mv bin/configtxgen /usr/local/bin/configtxgen" shape="box"];
  "sha256:b7670888966bb3cdd4f77d0f2f8cf23410cd567d1ab7d98b460e9f354408ae69" [label="copy{src=/fabric/fabric, dest=/etc/hyperledger/fabric}" shape="note"];
  "sha256:adf6aaf41464ab929eb0281c6e51dc310d9af8c4341447b8fc1714f015c083c1" [label="sha256:adf6aaf41464ab929eb0281c6e51dc310d9af8c4341447b8fc1714f015c083c1" shape="plaintext"];
  "sha256:b5cbf969b5e0a093811fd7f08740e8842400f25c4c5a625cd9e6a8e0fbde2203" -> "sha256:130e4813ec6564e766e556a4270eca2c3bfb5ca1f4168ba1eb6ed222d97be390" [label=""];
  "sha256:4a53b6d79d682cc550d43f9b7314ce1ea2fc33dc2aee594a9c1fc289f66d4400" -> "sha256:130e4813ec6564e766e556a4270eca2c3bfb5ca1f4168ba1eb6ed222d97be390" [label=""];
  "sha256:130e4813ec6564e766e556a4270eca2c3bfb5ca1f4168ba1eb6ed222d97be390" -> "sha256:86312203c185edcc10bc265ed7ab1c8f07960d3299462d1ed9f2c63f26b0b6e4" [label=""];
  "sha256:86312203c185edcc10bc265ed7ab1c8f07960d3299462d1ed9f2c63f26b0b6e4" -> "sha256:972537d92672a7cf12e0b102c30d23c6cba79edbc3f3f8fe23857f4a62c8ac4e" [label=""];
  "sha256:4a53b6d79d682cc550d43f9b7314ce1ea2fc33dc2aee594a9c1fc289f66d4400" -> "sha256:972537d92672a7cf12e0b102c30d23c6cba79edbc3f3f8fe23857f4a62c8ac4e" [label=""];
  "sha256:972537d92672a7cf12e0b102c30d23c6cba79edbc3f3f8fe23857f4a62c8ac4e" -> "sha256:9111024ded59938b8b727d70abe39156ba8476114f5c1fae55c34a77ceef0521" [label=""];
  "sha256:9111024ded59938b8b727d70abe39156ba8476114f5c1fae55c34a77ceef0521" -> "sha256:180d061b505261bc195026de77c9175ece6cb684b58d3d703c8ba0b0c918b6e7" [label=""];
  "sha256:180d061b505261bc195026de77c9175ece6cb684b58d3d703c8ba0b0c918b6e7" -> "sha256:b7670888966bb3cdd4f77d0f2f8cf23410cd567d1ab7d98b460e9f354408ae69" [label=""];
  "sha256:4a53b6d79d682cc550d43f9b7314ce1ea2fc33dc2aee594a9c1fc289f66d4400" -> "sha256:b7670888966bb3cdd4f77d0f2f8cf23410cd567d1ab7d98b460e9f354408ae69" [label=""];
  "sha256:b7670888966bb3cdd4f77d0f2f8cf23410cd567d1ab7d98b460e9f354408ae69" -> "sha256:adf6aaf41464ab929eb0281c6e51dc310d9af8c4341447b8fc1714f015c083c1" [label=""];
}

