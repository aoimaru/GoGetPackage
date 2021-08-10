[app/sources/318661253.Dockerfile]
digraph {
  "sha256:0f85c81d05d14a95cdc43adb8744bfe3f9a65f11568b091593bee2f1ef5beb9d" [label="docker-image://docker.io/library/openjdk:8-alpine" shape="ellipse"];
  "sha256:684b891228beb43e9ef834915ae8402acdba9487eaefd31ecfb11053b81cdf58" [label="/bin/sh -c set -x     && apk --no-cache add curl xmlstarlet bash ttf-dejavu libc6-compat     && mkdir -p                \"${CONF_HOME}\"     && chmod -R 700            \"${CONF_HOME}\"     && chown daemon:daemon     \"${CONF_HOME}\"     && mkdir -p                \"${CONF_INSTALL}/conf\"     && curl -Ls                \"https://www.atlassian.com/software/confluence/downloads/binary/atlassian-confluence-${CONF_VERSION}.tar.gz\" | tar -xz --directory \"${CONF_INSTALL}\" --strip-components=1 --no-same-owner     && curl -Ls                \"https://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-java-${MYSQL_connector}.tar.gz\" | tar -xz --directory \"${CONF_INSTALL}/confluence/WEB-INF/lib\" --strip-components=1 --no-same-owner \"mysql-connector-java-${MYSQL_connector}/mysql-connector-java-${MYSQL_connector}-bin.jar\"     && chmod -R 700            \"${CONF_INSTALL}/conf\" \"${CONF_INSTALL}/temp\" \"${CONF_INSTALL}/logs\" \"${CONF_INSTALL}/work\"    && chown -R daemon:daemon  \"${CONF_INSTALL}/conf\" \"${CONF_INSTALL}/work\" \"${CONF_INSTALL}/temp\" \"${CONF_INSTALL}/logs\"     && echo -e                 \"\\nconfluence.home=$CONF_HOME\" >> \"${CONF_INSTALL}/confluence/WEB-INF/classes/confluence-init.properties\"     && xmlstarlet              ed --inplace         --delete               \"Server/@debug\"         --delete               \"Server/Service/Connector/@debug\"         --delete               \"Server/Service/Connector/@useURIValidationHack\"         --delete               \"Server/Service/Connector/@minProcessors\"         --delete               \"Server/Service/Connector/@maxProcessors\"         --delete               \"Server/Service/Engine/@debug\"         --delete               \"Server/Service/Engine/Host/@debug\"         --delete               \"Server/Service/Engine/Host/Context/@debug\"                                \"${CONF_INSTALL}/conf/server.xml\"     && touch -d \"@0\"           \"${CONF_INSTALL}/conf/server.xml\"     && chown daemon:daemon     \"${JAVA_CACERTS}\"" shape="box"];
  "sha256:14f21bd7d40dc99491694a3eec28c306527a434a9eac089ed6e1bf3a1b1ac257" [label="mkdir{path=/var/atlassian/confluence}" shape="note"];
  "sha256:9bba3639075e4715afaa501c2077a04e562b9ad2b881a9803f5447b8305beded" [label="local://context" shape="ellipse"];
  "sha256:00ed941d9fa7f30281899e9e4550ba87b28b0859dfaec6016e05adc230cbb40c" [label="copy{src=/docker-entrypoint.sh, dest=/}" shape="note"];
  "sha256:87bd332f345b241bc685b7106b6a6e55606d93d968846e0a6953c1a398e8db36" [label="copy{src=/atlassian-extras-3.4.1.jar, dest=/opt/atlassian/confluence/confluence/WEB-INF/lib/atlassian-extras-decoder-api-3.4.1.jar}" shape="note"];
  "sha256:9500348049328b38987cf5b4345b46fc570804201963db4675dc76da2dadddb0" [label="sha256:9500348049328b38987cf5b4345b46fc570804201963db4675dc76da2dadddb0" shape="plaintext"];
  "sha256:0f85c81d05d14a95cdc43adb8744bfe3f9a65f11568b091593bee2f1ef5beb9d" -> "sha256:684b891228beb43e9ef834915ae8402acdba9487eaefd31ecfb11053b81cdf58" [label=""];
  "sha256:684b891228beb43e9ef834915ae8402acdba9487eaefd31ecfb11053b81cdf58" -> "sha256:14f21bd7d40dc99491694a3eec28c306527a434a9eac089ed6e1bf3a1b1ac257" [label=""];
  "sha256:14f21bd7d40dc99491694a3eec28c306527a434a9eac089ed6e1bf3a1b1ac257" -> "sha256:00ed941d9fa7f30281899e9e4550ba87b28b0859dfaec6016e05adc230cbb40c" [label=""];
  "sha256:9bba3639075e4715afaa501c2077a04e562b9ad2b881a9803f5447b8305beded" -> "sha256:00ed941d9fa7f30281899e9e4550ba87b28b0859dfaec6016e05adc230cbb40c" [label=""];
  "sha256:00ed941d9fa7f30281899e9e4550ba87b28b0859dfaec6016e05adc230cbb40c" -> "sha256:87bd332f345b241bc685b7106b6a6e55606d93d968846e0a6953c1a398e8db36" [label=""];
  "sha256:9bba3639075e4715afaa501c2077a04e562b9ad2b881a9803f5447b8305beded" -> "sha256:87bd332f345b241bc685b7106b6a6e55606d93d968846e0a6953c1a398e8db36" [label=""];
  "sha256:87bd332f345b241bc685b7106b6a6e55606d93d968846e0a6953c1a398e8db36" -> "sha256:9500348049328b38987cf5b4345b46fc570804201963db4675dc76da2dadddb0" [label=""];
}

