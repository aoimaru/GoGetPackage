[app/sources/154297065.Dockerfile]
digraph {
  "sha256:8beef5c2f8848e0acf17da31523f66b2c418eefc60fda856b52c3ac3580d3d68" [label="docker-image://docker.io/library/ubuntu:latest@sha256:82becede498899ec668628e7cb0ad87b6e1c371cb8a1e597d83a47fac21d6af3" shape="ellipse"];
  "sha256:6f10f820776398614aea81f49893b2cf861790f5e227866357af2d763239290f" [label="/bin/sh -c apt-get update && apt-get -y upgrade" shape="box"];
  "sha256:5a6781e275b80266444f7ed9abf90abc54be388620efbd5b3d94273712b5f4a3" [label="/bin/sh -c apt-get -y install software-properties-common" shape="box"];
  "sha256:828f973c6a37baf0704e0dbb2ea2e29552182f8a3d06a19c090c3ecf2237b8c0" [label="/bin/sh -c add-apt-repository -y ppa:webupd8team/java" shape="box"];
  "sha256:899be2007b4c12d31c50b79668b27ba2ec2a08e06c10524585513c36f7477c3a" [label="/bin/sh -c apt-get -y update" shape="box"];
  "sha256:ccd79996da2d9bea06c6909a4869d966492f8d0d3835972709a3ca9043d60f1d" [label="/bin/sh -c echo \"oracle-java8-installer shared/accepted-oracle-license-v1-1 boolean true\" | debconf-set-selections" shape="box"];
  "sha256:ee008a5f3e260875b7302136e4b453c08b84fa2c8cbca987592dfcf43c00eb6f" [label="/bin/sh -c apt-get -y install oracle-java8-installer" shape="box"];
  "sha256:4f3a87877a2c486bf6cfcc1115bd75d5865e428ba3708598db0966eb2be05ed5" [label="/bin/sh -c apt-get -y install tomcat8" shape="box"];
  "sha256:a6b7c3818336dbbcb7a392fafdabdb3d86a6dd492770c530fcb4b631dfba9366" [label="local://context" shape="ellipse"];
  "sha256:cbe0c941cd4275a2a78c12a85f0378a62cd5371aece0d98b1f875102d937dd73" [label="copy{src=/logging.properties, dest=/etc/tomcat8}" shape="note"];
  "sha256:279140f842fc420fd345798688dff24c4773c0851ea3dca9db37fd3a518baad5" [label="copy{src=/tomcat8.sh, dest=/tomcat8/}" shape="note"];
  "sha256:2b45c7b7b4d86f634e03fd20e8c792c0d279b1839aa44e1e042087d2270d541d" [label="/bin/sh -c chmod +x /tomcat8/tomcat8.sh" shape="box"];
  "sha256:28313111c3ad80bb1e973df3c6eefe70040422c7d4c2fce6ce17eb089fbced76" [label="/bin/sh -c rm -rf /var/lib/tomcat8/webapps/ROOT/*" shape="box"];
  "sha256:1d6ca7f740e9e36c616fe1aa5ee3f306ab7c987ec32603391a0270c25c780e16" [label="copy{src=/geniuswiki.war, dest=/var/lib/tomcat8/webapps/ROOT/}" shape="note"];
  "sha256:b7c34971e583bd408d3e3e738928428883907474139410ddaa3e25c4f0541002" [label="/bin/sh -c cd /var/lib/tomcat8/webapps/ROOT/ && jar xvf geniuswiki.war && rm geniuswiki.war" shape="box"];
  "sha256:bb6e028b9cc47ee75ef8e45268efa8feccc134061eccc228d54921c0833c3f53" [label="mkdir{path=/tomcat8}" shape="note"];
  "sha256:a09a3f58ec658ad839a0902bc0be63d8475ba82f318a5edb9006f27a3e94a76b" [label="sha256:a09a3f58ec658ad839a0902bc0be63d8475ba82f318a5edb9006f27a3e94a76b" shape="plaintext"];
  "sha256:8beef5c2f8848e0acf17da31523f66b2c418eefc60fda856b52c3ac3580d3d68" -> "sha256:6f10f820776398614aea81f49893b2cf861790f5e227866357af2d763239290f" [label=""];
  "sha256:6f10f820776398614aea81f49893b2cf861790f5e227866357af2d763239290f" -> "sha256:5a6781e275b80266444f7ed9abf90abc54be388620efbd5b3d94273712b5f4a3" [label=""];
  "sha256:5a6781e275b80266444f7ed9abf90abc54be388620efbd5b3d94273712b5f4a3" -> "sha256:828f973c6a37baf0704e0dbb2ea2e29552182f8a3d06a19c090c3ecf2237b8c0" [label=""];
  "sha256:828f973c6a37baf0704e0dbb2ea2e29552182f8a3d06a19c090c3ecf2237b8c0" -> "sha256:899be2007b4c12d31c50b79668b27ba2ec2a08e06c10524585513c36f7477c3a" [label=""];
  "sha256:899be2007b4c12d31c50b79668b27ba2ec2a08e06c10524585513c36f7477c3a" -> "sha256:ccd79996da2d9bea06c6909a4869d966492f8d0d3835972709a3ca9043d60f1d" [label=""];
  "sha256:ccd79996da2d9bea06c6909a4869d966492f8d0d3835972709a3ca9043d60f1d" -> "sha256:ee008a5f3e260875b7302136e4b453c08b84fa2c8cbca987592dfcf43c00eb6f" [label=""];
  "sha256:ee008a5f3e260875b7302136e4b453c08b84fa2c8cbca987592dfcf43c00eb6f" -> "sha256:4f3a87877a2c486bf6cfcc1115bd75d5865e428ba3708598db0966eb2be05ed5" [label=""];
  "sha256:4f3a87877a2c486bf6cfcc1115bd75d5865e428ba3708598db0966eb2be05ed5" -> "sha256:cbe0c941cd4275a2a78c12a85f0378a62cd5371aece0d98b1f875102d937dd73" [label=""];
  "sha256:a6b7c3818336dbbcb7a392fafdabdb3d86a6dd492770c530fcb4b631dfba9366" -> "sha256:cbe0c941cd4275a2a78c12a85f0378a62cd5371aece0d98b1f875102d937dd73" [label=""];
  "sha256:cbe0c941cd4275a2a78c12a85f0378a62cd5371aece0d98b1f875102d937dd73" -> "sha256:279140f842fc420fd345798688dff24c4773c0851ea3dca9db37fd3a518baad5" [label=""];
  "sha256:a6b7c3818336dbbcb7a392fafdabdb3d86a6dd492770c530fcb4b631dfba9366" -> "sha256:279140f842fc420fd345798688dff24c4773c0851ea3dca9db37fd3a518baad5" [label=""];
  "sha256:279140f842fc420fd345798688dff24c4773c0851ea3dca9db37fd3a518baad5" -> "sha256:2b45c7b7b4d86f634e03fd20e8c792c0d279b1839aa44e1e042087d2270d541d" [label=""];
  "sha256:2b45c7b7b4d86f634e03fd20e8c792c0d279b1839aa44e1e042087d2270d541d" -> "sha256:28313111c3ad80bb1e973df3c6eefe70040422c7d4c2fce6ce17eb089fbced76" [label=""];
  "sha256:28313111c3ad80bb1e973df3c6eefe70040422c7d4c2fce6ce17eb089fbced76" -> "sha256:1d6ca7f740e9e36c616fe1aa5ee3f306ab7c987ec32603391a0270c25c780e16" [label=""];
  "sha256:a6b7c3818336dbbcb7a392fafdabdb3d86a6dd492770c530fcb4b631dfba9366" -> "sha256:1d6ca7f740e9e36c616fe1aa5ee3f306ab7c987ec32603391a0270c25c780e16" [label=""];
  "sha256:1d6ca7f740e9e36c616fe1aa5ee3f306ab7c987ec32603391a0270c25c780e16" -> "sha256:b7c34971e583bd408d3e3e738928428883907474139410ddaa3e25c4f0541002" [label=""];
  "sha256:b7c34971e583bd408d3e3e738928428883907474139410ddaa3e25c4f0541002" -> "sha256:bb6e028b9cc47ee75ef8e45268efa8feccc134061eccc228d54921c0833c3f53" [label=""];
  "sha256:bb6e028b9cc47ee75ef8e45268efa8feccc134061eccc228d54921c0833c3f53" -> "sha256:a09a3f58ec658ad839a0902bc0be63d8475ba82f318a5edb9006f27a3e94a76b" [label=""];
}

