[app/sources/339554287.Dockerfile]
digraph {
  "sha256:99c7116cc92648efcbafe1a8c3177274e4915a4025604ee8d09194bcb29da44b" [label="docker-image://docker.io/hotswapagent/hotswap-vm:latest" shape="ellipse"];
  "sha256:5039a1105ecb88ca3d5296452c0a407b02f5bc54d2ca4dbc4f249a9a94829f97" [label="/bin/sh -c curl -O https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/${LIBERTY_VERSION}/openliberty-runtime-${LIBERTY_VERSION}.zip     && unzip openliberty-runtime-${LIBERTY_VERSION}.zip -d ${INSTALL_DIR}     && rm openliberty-runtime-${LIBERTY_VERSION}.zip" shape="box"];
  "sha256:fc018e92727e50c913552eff622050ecc688a747bdba413cf1e0ee1b62024c26" [label="/bin/sh -c mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config" shape="box"];
  "sha256:4867667bc2615a713bc86f4b7031b51bae0ca1bc5722cb1a390edb39b0f0ceda" [label="/bin/sh -c /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea" shape="box"];
  "sha256:83b416f7781f2f8e8c4443a89eb448e67df4c4543f021d1e067afb1566ad4a48" [label="local://context" shape="ellipse"];
  "sha256:2e91b90347deee540c3d5b9475afb979e3d873b23966c0e408ec966fb4d16a9d" [label="copy{src=/docker-server, dest=/opt/ibm/docker/}" shape="note"];
  "sha256:815cb72e4c0a47825490c371ba1d51c5dd3d58240c70d8e5a63ebdd3e92fc1e2" [label="/bin/sh -c chmod a+x /opt/ibm/docker/docker-server" shape="box"];
  "sha256:50af16ebec7f3f8626fdc7fa53a99350061ef70ff1a26cade76c28fad573fd50" [label="sha256:50af16ebec7f3f8626fdc7fa53a99350061ef70ff1a26cade76c28fad573fd50" shape="plaintext"];
  "sha256:99c7116cc92648efcbafe1a8c3177274e4915a4025604ee8d09194bcb29da44b" -> "sha256:5039a1105ecb88ca3d5296452c0a407b02f5bc54d2ca4dbc4f249a9a94829f97" [label=""];
  "sha256:5039a1105ecb88ca3d5296452c0a407b02f5bc54d2ca4dbc4f249a9a94829f97" -> "sha256:fc018e92727e50c913552eff622050ecc688a747bdba413cf1e0ee1b62024c26" [label=""];
  "sha256:fc018e92727e50c913552eff622050ecc688a747bdba413cf1e0ee1b62024c26" -> "sha256:4867667bc2615a713bc86f4b7031b51bae0ca1bc5722cb1a390edb39b0f0ceda" [label=""];
  "sha256:4867667bc2615a713bc86f4b7031b51bae0ca1bc5722cb1a390edb39b0f0ceda" -> "sha256:2e91b90347deee540c3d5b9475afb979e3d873b23966c0e408ec966fb4d16a9d" [label=""];
  "sha256:83b416f7781f2f8e8c4443a89eb448e67df4c4543f021d1e067afb1566ad4a48" -> "sha256:2e91b90347deee540c3d5b9475afb979e3d873b23966c0e408ec966fb4d16a9d" [label=""];
  "sha256:2e91b90347deee540c3d5b9475afb979e3d873b23966c0e408ec966fb4d16a9d" -> "sha256:815cb72e4c0a47825490c371ba1d51c5dd3d58240c70d8e5a63ebdd3e92fc1e2" [label=""];
  "sha256:815cb72e4c0a47825490c371ba1d51c5dd3d58240c70d8e5a63ebdd3e92fc1e2" -> "sha256:50af16ebec7f3f8626fdc7fa53a99350061ef70ff1a26cade76c28fad573fd50" [label=""];
}

