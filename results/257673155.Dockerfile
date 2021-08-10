[app/sources/257673155.Dockerfile]
digraph {
  "sha256:357623991e78bf6a9936986345c9be1fc387dea4d4c8ac0bc4804ad08e78af42" [label="docker-image://docker.io/adoptopenjdk/openjdk8:alpine-slim" shape="ellipse"];
  "sha256:97b84d3f4307d7fffdb438640e8755c38c11c0a26d7fff8bec0a83012d771700" [label="local://context" shape="ellipse"];
  "sha256:a04bdd938878785ca18caa8e364992578ef2d27b5715d2eeb023a2deb30100ea" [label="copy{src=/wait-for-something.sh, dest=/}" shape="note"];
  "sha256:61ad9e3cd7428514e9bbb916dbcf00144137241ada7d3b4bd8d11bc5593e04ec" [label="/bin/sh -c addgroup tomcat && adduser -s /bin/false -G tomcat -h /opt/tomcat -D tomcat" shape="box"];
  "sha256:2d66738522a90e12482f8c03b82d40d05403b27bce7179fbb370f529162f7f4d" [label="/bin/sh -c wget http://archive.apache.org/dist/tomcat/tomcat-9/v9.0.14/bin/apache-tomcat-9.0.14.tar.gz -O /tmp/tomcat.tar.gz" shape="box"];
  "sha256:26b0d3e89cf4f2dddc6f3beaaa0434c67653bd8b214393993684221d8ee861cb" [label="/bin/sh -c cd /tmp && tar xvfz tomcat.tar.gz && cp -Rv /tmp/apache-tomcat-9.0.14/* /opt/tomcat/ && rm -Rf /tmp/apache-tomcat-9.0.14" shape="box"];
  "sha256:07fa878cbd43955dae90f846288ae43ac7b5016028f1fe702eea3be0e93821ec" [label="copy{src=/context.xml, dest=/opt/tomcat/conf/context.xml}" shape="note"];
  "sha256:61a2ca09a9e9714de7320f6da2182468c3de8d2593e9fb869a54f37ea6405c8c" [label="copy{src=/assets/flowable-idm.war.original, dest=/opt/tomcat/webapps/flowable-idm.war}" shape="note"];
  "sha256:ace362ed00b0a3b49eaf3d3086cc0d847b159a081832cec2560ae623ddb1d9fe" [label="copy{src=/assets/flowable-modeler.war.original, dest=/opt/tomcat/webapps/flowable-modeler.war}" shape="note"];
  "sha256:5293808d5c33db6bec86933f94e8279b015530c4d8e58fed339eaae3aa47b093" [label="copy{src=/assets/flowable-task.war.original, dest=/opt/tomcat/webapps/flowable-task.war}" shape="note"];
  "sha256:408e3067506483345d9958cc2816b247fd79e90cb67c0acb3c059ea05f448362" [label="copy{src=/assets/flowable-admin.war.original, dest=/opt/tomcat/webapps/flowable-admin.war}" shape="note"];
  "sha256:f28507cfc38bde105ab32d0ae0e7b0d4cde777c205eed5950ccb8d76f06dece4" [label="/bin/sh -c cd /opt/tomcat && chgrp -R tomcat /opt/tomcat && chmod -R g+r conf && chmod g+x conf && chown -R tomcat webapps/ work/ temp/ logs/     && chown tomcat /wait-for-something.sh && chmod +x /wait-for-something.sh" shape="box"];
  "sha256:83387b704daaa14382a65da435ba5bb8d086433434473485454729a0fdc47c5b" [label="mkdir{path=/opt/tomcat}" shape="note"];
  "sha256:01dc6f09c88182e53d5921e2b3772ea62ad5f2f7e458d3b3fe3cb5f70ff21e6e" [label="sha256:01dc6f09c88182e53d5921e2b3772ea62ad5f2f7e458d3b3fe3cb5f70ff21e6e" shape="plaintext"];
  "sha256:357623991e78bf6a9936986345c9be1fc387dea4d4c8ac0bc4804ad08e78af42" -> "sha256:a04bdd938878785ca18caa8e364992578ef2d27b5715d2eeb023a2deb30100ea" [label=""];
  "sha256:97b84d3f4307d7fffdb438640e8755c38c11c0a26d7fff8bec0a83012d771700" -> "sha256:a04bdd938878785ca18caa8e364992578ef2d27b5715d2eeb023a2deb30100ea" [label=""];
  "sha256:a04bdd938878785ca18caa8e364992578ef2d27b5715d2eeb023a2deb30100ea" -> "sha256:61ad9e3cd7428514e9bbb916dbcf00144137241ada7d3b4bd8d11bc5593e04ec" [label=""];
  "sha256:61ad9e3cd7428514e9bbb916dbcf00144137241ada7d3b4bd8d11bc5593e04ec" -> "sha256:2d66738522a90e12482f8c03b82d40d05403b27bce7179fbb370f529162f7f4d" [label=""];
  "sha256:2d66738522a90e12482f8c03b82d40d05403b27bce7179fbb370f529162f7f4d" -> "sha256:26b0d3e89cf4f2dddc6f3beaaa0434c67653bd8b214393993684221d8ee861cb" [label=""];
  "sha256:26b0d3e89cf4f2dddc6f3beaaa0434c67653bd8b214393993684221d8ee861cb" -> "sha256:07fa878cbd43955dae90f846288ae43ac7b5016028f1fe702eea3be0e93821ec" [label=""];
  "sha256:97b84d3f4307d7fffdb438640e8755c38c11c0a26d7fff8bec0a83012d771700" -> "sha256:07fa878cbd43955dae90f846288ae43ac7b5016028f1fe702eea3be0e93821ec" [label=""];
  "sha256:07fa878cbd43955dae90f846288ae43ac7b5016028f1fe702eea3be0e93821ec" -> "sha256:61a2ca09a9e9714de7320f6da2182468c3de8d2593e9fb869a54f37ea6405c8c" [label=""];
  "sha256:97b84d3f4307d7fffdb438640e8755c38c11c0a26d7fff8bec0a83012d771700" -> "sha256:61a2ca09a9e9714de7320f6da2182468c3de8d2593e9fb869a54f37ea6405c8c" [label=""];
  "sha256:61a2ca09a9e9714de7320f6da2182468c3de8d2593e9fb869a54f37ea6405c8c" -> "sha256:ace362ed00b0a3b49eaf3d3086cc0d847b159a081832cec2560ae623ddb1d9fe" [label=""];
  "sha256:97b84d3f4307d7fffdb438640e8755c38c11c0a26d7fff8bec0a83012d771700" -> "sha256:ace362ed00b0a3b49eaf3d3086cc0d847b159a081832cec2560ae623ddb1d9fe" [label=""];
  "sha256:ace362ed00b0a3b49eaf3d3086cc0d847b159a081832cec2560ae623ddb1d9fe" -> "sha256:5293808d5c33db6bec86933f94e8279b015530c4d8e58fed339eaae3aa47b093" [label=""];
  "sha256:97b84d3f4307d7fffdb438640e8755c38c11c0a26d7fff8bec0a83012d771700" -> "sha256:5293808d5c33db6bec86933f94e8279b015530c4d8e58fed339eaae3aa47b093" [label=""];
  "sha256:5293808d5c33db6bec86933f94e8279b015530c4d8e58fed339eaae3aa47b093" -> "sha256:408e3067506483345d9958cc2816b247fd79e90cb67c0acb3c059ea05f448362" [label=""];
  "sha256:97b84d3f4307d7fffdb438640e8755c38c11c0a26d7fff8bec0a83012d771700" -> "sha256:408e3067506483345d9958cc2816b247fd79e90cb67c0acb3c059ea05f448362" [label=""];
  "sha256:408e3067506483345d9958cc2816b247fd79e90cb67c0acb3c059ea05f448362" -> "sha256:f28507cfc38bde105ab32d0ae0e7b0d4cde777c205eed5950ccb8d76f06dece4" [label=""];
  "sha256:f28507cfc38bde105ab32d0ae0e7b0d4cde777c205eed5950ccb8d76f06dece4" -> "sha256:83387b704daaa14382a65da435ba5bb8d086433434473485454729a0fdc47c5b" [label=""];
  "sha256:83387b704daaa14382a65da435ba5bb8d086433434473485454729a0fdc47c5b" -> "sha256:01dc6f09c88182e53d5921e2b3772ea62ad5f2f7e458d3b3fe3cb5f70ff21e6e" [label=""];
}

