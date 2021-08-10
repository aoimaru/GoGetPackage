[app/sources/160762220.Dockerfile]
digraph {
  "sha256:42821cf2789917e1ae7068e8f24983f13e2938ff45a63eca7e6316aaa6db8d65" [label="docker-image://docker.io/library/tomcat:8.5.34-jre8" shape="ellipse"];
  "sha256:8ca23c595540919fec47efb1da2ab83b5ab25b9bc4c3e01ef754ce0a5e84311d" [label="/bin/sh -c apt-get update && apt-get install -y     curl     procps     tar     unzip     wget" shape="box"];
  "sha256:603641c54f20c1f008bcea7432b3dfd9baadab48d795cfaa057f1571ef7bf03d" [label="/bin/sh -c mkdir -p \"$ES_HOME\"" shape="box"];
  "sha256:c71fd072cbae2e50d305d8975c45ebf71e51e6d6fb33b4333dbe4b29217c869b" [label="mkdir{path=/usr/local/share/elasticsearch-6.0.1}" shape="note"];
  "sha256:fa73479acbeaf7ad778e2b4eaba7fbc469830134d4031602c1e5fc20b5aeb71f" [label="/bin/sh -c wget $ES_TGZ_URL" shape="box"];
  "sha256:1d7aa77e891a73a89e9ebddb243fb4c302d1cda4b0072864f345322d1f2adc61" [label="/bin/sh -c tar -C $ES_HOME -zxvf $ES_FILE.tar.gz &&     rm $ES_FILE.tar.gz* &&     addgroup $ES_NAME && \tuseradd --home-dir $ES_HOME --shell /bin/sh -g $ES_NAME $ES_NAME &&     chown -R $ES_NAME:$ES_NAME $ES_HOME" shape="box"];
  "sha256:1cfe82fcd5383f827bd5e4efad0fcfe145bd4c9550dfe607aee86653c3003850" [label="mkdir{path=/webapps}" shape="note"];
  "sha256:81f66e88ff23729aecf42dc5efd7cd47f6d500d855af037824232bddc3e29c38" [label="/bin/sh -c export STOREFRONT_WAR_URL=$(curl -s https://api.github.com/repos/di2e/openstorefront/releases/latest | grep -oP '\"browser_download_url\": \"\\K(.*)(?=\")') &&     curl -fSL $STOREFRONT_WAR_URL -O" shape="box"];
  "sha256:d14ecdf6092a05dd4651d9bc6cdfd819c18bb271f96c94d0becc4c3a810d942c" [label="/bin/sh -c mkdir -p \"$STOREFRONT_HOME\" && \tchmod 755 -R \"$STOREFRONT_HOME\"" shape="box"];
  "sha256:7b8d0671837bfb0e1cd27f8bc3d1c7ee00ae03329c58f33488aa8c7395e23cf2" [label="mkdir{path=/usr/local/share/openstorefront}" shape="note"];
  "sha256:e79d1b4cd85cbf362c5bc116a670a5da60d9012bb5a83f710c7eb1f0c83f3428" [label="/bin/sh -c echo -e '<?xml version=\"1.0\" encoding=\"utf-8\"?>\\n'     \"<tomcat-users>\\n\"     \"  <role rolename=\\\"manager-gui\\\"/>\\n\"     \"  <role rolename=\\\"manager-gui\\\"/>\\n\"     \"  <role rolename=\\\"manager-script\\\"/>\\n\"     \"  <user username=\\\"admin\\\" password=\\\"Secret1@\\\" roles=\\\"manager,manager-gui,manager-script\\\" />\\n\"     \"</tomcat-users>\"     \"\" > $CATALINA_HOME/conf/tomcat-users.xml" shape="box"];
  "sha256:3bd762b22fc0294ca75a2a5829fe4dd77a97a04c749c05e9ef1ce843446e0468" [label="/bin/sh -c echo -e '#!/bin/sh\\n'     \"\\n\"     \"su - $ES_NAME -c \\\"ES_JAVA_OPTS=\\\\\\\"-Xms512m -Xmx512m\\\\\\\" $ES_HOME/$ES_FILE/bin/$ES_NAME -d\\\" \\n\"    \"$CATALINA_HOME/bin/catalina.sh start \\n\"     \"tail -f $CATALINA_HOME/logs/catalina.out \\n\"     \"\" > startup.sh" shape="box"];
  "sha256:3e099c551c4bf82d5fa87d2d2f09bfdf01925072abf8a77283c0a690a712399d" [label="/bin/sh -c chmod +x startup.sh" shape="box"];
  "sha256:f0bc13456accdd7509c1df4208711d774a1c2de94566a8603fd26b810fcecb13" [label="sha256:f0bc13456accdd7509c1df4208711d774a1c2de94566a8603fd26b810fcecb13" shape="plaintext"];
  "sha256:42821cf2789917e1ae7068e8f24983f13e2938ff45a63eca7e6316aaa6db8d65" -> "sha256:8ca23c595540919fec47efb1da2ab83b5ab25b9bc4c3e01ef754ce0a5e84311d" [label=""];
  "sha256:8ca23c595540919fec47efb1da2ab83b5ab25b9bc4c3e01ef754ce0a5e84311d" -> "sha256:603641c54f20c1f008bcea7432b3dfd9baadab48d795cfaa057f1571ef7bf03d" [label=""];
  "sha256:603641c54f20c1f008bcea7432b3dfd9baadab48d795cfaa057f1571ef7bf03d" -> "sha256:c71fd072cbae2e50d305d8975c45ebf71e51e6d6fb33b4333dbe4b29217c869b" [label=""];
  "sha256:c71fd072cbae2e50d305d8975c45ebf71e51e6d6fb33b4333dbe4b29217c869b" -> "sha256:fa73479acbeaf7ad778e2b4eaba7fbc469830134d4031602c1e5fc20b5aeb71f" [label=""];
  "sha256:fa73479acbeaf7ad778e2b4eaba7fbc469830134d4031602c1e5fc20b5aeb71f" -> "sha256:1d7aa77e891a73a89e9ebddb243fb4c302d1cda4b0072864f345322d1f2adc61" [label=""];
  "sha256:1d7aa77e891a73a89e9ebddb243fb4c302d1cda4b0072864f345322d1f2adc61" -> "sha256:1cfe82fcd5383f827bd5e4efad0fcfe145bd4c9550dfe607aee86653c3003850" [label=""];
  "sha256:1cfe82fcd5383f827bd5e4efad0fcfe145bd4c9550dfe607aee86653c3003850" -> "sha256:81f66e88ff23729aecf42dc5efd7cd47f6d500d855af037824232bddc3e29c38" [label=""];
  "sha256:81f66e88ff23729aecf42dc5efd7cd47f6d500d855af037824232bddc3e29c38" -> "sha256:d14ecdf6092a05dd4651d9bc6cdfd819c18bb271f96c94d0becc4c3a810d942c" [label=""];
  "sha256:d14ecdf6092a05dd4651d9bc6cdfd819c18bb271f96c94d0becc4c3a810d942c" -> "sha256:7b8d0671837bfb0e1cd27f8bc3d1c7ee00ae03329c58f33488aa8c7395e23cf2" [label=""];
  "sha256:7b8d0671837bfb0e1cd27f8bc3d1c7ee00ae03329c58f33488aa8c7395e23cf2" -> "sha256:e79d1b4cd85cbf362c5bc116a670a5da60d9012bb5a83f710c7eb1f0c83f3428" [label=""];
  "sha256:e79d1b4cd85cbf362c5bc116a670a5da60d9012bb5a83f710c7eb1f0c83f3428" -> "sha256:3bd762b22fc0294ca75a2a5829fe4dd77a97a04c749c05e9ef1ce843446e0468" [label=""];
  "sha256:3bd762b22fc0294ca75a2a5829fe4dd77a97a04c749c05e9ef1ce843446e0468" -> "sha256:3e099c551c4bf82d5fa87d2d2f09bfdf01925072abf8a77283c0a690a712399d" [label=""];
  "sha256:3e099c551c4bf82d5fa87d2d2f09bfdf01925072abf8a77283c0a690a712399d" -> "sha256:f0bc13456accdd7509c1df4208711d774a1c2de94566a8603fd26b810fcecb13" [label=""];
}

