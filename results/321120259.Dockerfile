[app/sources/321120259.Dockerfile]
digraph {
  "sha256:7356f5097c1d4ed009ac7d49b555efeda6d9b92fe0b522d1f52936403b74afaa" [label="docker-image://docker.io/sdaschner/open-liberty:javaee8-tracing-jdk8-b3@sha256:2f43d140c1d51c704793e4de3e96f94e2dc502b132b5fd22ab9ca4c13a6b9cf9" shape="ellipse"];
  "sha256:e44232308db745224aad5931da9676a64f9e08a1dc634cb98ef2aa29fa4fccf6" [label="local://context" shape="ellipse"];
  "sha256:9718051e2bd2c20bd913579346aae75f850378d6b1b23f1f4ba0e7a21f997b40" [label="copy{src=/openliberty/server.xml, dest=/opt/wlp/usr/servers/defaultServer/}" shape="note"];
  "sha256:24f9e4360ec28f8fd9fa3a1c6541b038d405e47b15fdbf29006622d312106987" [label="copy{src=/target/coffee-shop.war, dest=/opt/wlp/usr/servers/defaultServer/dropins/}" shape="note"];
  "sha256:e2dea905f938f2ff8974c19c88733ffbcb4e84e9a041b9f281d52cd755e54927" [label="sha256:e2dea905f938f2ff8974c19c88733ffbcb4e84e9a041b9f281d52cd755e54927" shape="plaintext"];
  "sha256:7356f5097c1d4ed009ac7d49b555efeda6d9b92fe0b522d1f52936403b74afaa" -> "sha256:9718051e2bd2c20bd913579346aae75f850378d6b1b23f1f4ba0e7a21f997b40" [label=""];
  "sha256:e44232308db745224aad5931da9676a64f9e08a1dc634cb98ef2aa29fa4fccf6" -> "sha256:9718051e2bd2c20bd913579346aae75f850378d6b1b23f1f4ba0e7a21f997b40" [label=""];
  "sha256:9718051e2bd2c20bd913579346aae75f850378d6b1b23f1f4ba0e7a21f997b40" -> "sha256:24f9e4360ec28f8fd9fa3a1c6541b038d405e47b15fdbf29006622d312106987" [label=""];
  "sha256:e44232308db745224aad5931da9676a64f9e08a1dc634cb98ef2aa29fa4fccf6" -> "sha256:24f9e4360ec28f8fd9fa3a1c6541b038d405e47b15fdbf29006622d312106987" [label=""];
  "sha256:24f9e4360ec28f8fd9fa3a1c6541b038d405e47b15fdbf29006622d312106987" -> "sha256:e2dea905f938f2ff8974c19c88733ffbcb4e84e9a041b9f281d52cd755e54927" [label=""];
}

