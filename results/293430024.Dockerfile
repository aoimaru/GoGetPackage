[app/sources/293430024.Dockerfile]
digraph {
  "sha256:0811239a3f541cc1e1cf531cf13498e02dfaeb90a616056c61712491b8f18981" [label="docker-image://hub.c.163.com/jameszhou/base-tomcat-maven:latest@sha256:80af9b4bc2d67c6104a657ad2f96dd1110094997cb21243b61ec8bde034c550e" shape="ellipse"];
  "sha256:81ee070a49a8f504f80580d20a2feb6f1155a65cd99feb3292825179b2bd224d" [label="local://context" shape="ellipse"];
  "sha256:0d240c1adc07918e31de58b950d82f8be947d4d8e5b75e4c06c4ad6385871fbc" [label="copy{src=/pom.xml, dest=/tmp/build/}" shape="note"];
  "sha256:7c347c0be618e0cdcbac45d25f6ba60c0512d85600fd94052ac93d0f74c9c738" [label="/bin/sh -c cd /tmp/build && mvn -q dependency:resolve" shape="box"];
  "sha256:5f4edd748f2f87641232c524cdc8b5e60a19947bc08f1905240ac745a208aeaa" [label="copy{src=/src, dest=/tmp/build/src}" shape="note"];
  "sha256:4c59cc265adb0219942234d34dd5875a6e1dbae261ed6496b3c271c7a8461df4" [label="/bin/sh -c cd /tmp/build && mvn -q -DskipTests=true package \t&& rm -rf $CATALINA_HOME/webapps/*         && mv target/*.war $CATALINA_HOME/webapps/ROOT.war         && cd / && rm -rf /tmp/build" shape="box"];
  "sha256:a7f96a58369f6c85499ff2b23f3fbe44ae9420bafc86a6cba3c3a87c6937b359" [label="sha256:a7f96a58369f6c85499ff2b23f3fbe44ae9420bafc86a6cba3c3a87c6937b359" shape="plaintext"];
  "sha256:0811239a3f541cc1e1cf531cf13498e02dfaeb90a616056c61712491b8f18981" -> "sha256:0d240c1adc07918e31de58b950d82f8be947d4d8e5b75e4c06c4ad6385871fbc" [label=""];
  "sha256:81ee070a49a8f504f80580d20a2feb6f1155a65cd99feb3292825179b2bd224d" -> "sha256:0d240c1adc07918e31de58b950d82f8be947d4d8e5b75e4c06c4ad6385871fbc" [label=""];
  "sha256:0d240c1adc07918e31de58b950d82f8be947d4d8e5b75e4c06c4ad6385871fbc" -> "sha256:7c347c0be618e0cdcbac45d25f6ba60c0512d85600fd94052ac93d0f74c9c738" [label=""];
  "sha256:7c347c0be618e0cdcbac45d25f6ba60c0512d85600fd94052ac93d0f74c9c738" -> "sha256:5f4edd748f2f87641232c524cdc8b5e60a19947bc08f1905240ac745a208aeaa" [label=""];
  "sha256:81ee070a49a8f504f80580d20a2feb6f1155a65cd99feb3292825179b2bd224d" -> "sha256:5f4edd748f2f87641232c524cdc8b5e60a19947bc08f1905240ac745a208aeaa" [label=""];
  "sha256:5f4edd748f2f87641232c524cdc8b5e60a19947bc08f1905240ac745a208aeaa" -> "sha256:4c59cc265adb0219942234d34dd5875a6e1dbae261ed6496b3c271c7a8461df4" [label=""];
  "sha256:4c59cc265adb0219942234d34dd5875a6e1dbae261ed6496b3c271c7a8461df4" -> "sha256:a7f96a58369f6c85499ff2b23f3fbe44ae9420bafc86a6cba3c3a87c6937b359" [label=""];
}

