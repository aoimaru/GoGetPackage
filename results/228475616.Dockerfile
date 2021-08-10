[app/sources/228475616.Dockerfile]
digraph {
  "sha256:569bc4bed74f9f9d6cc784178dcdb86cc05adcd4ca3295b010086c5eb6e17ad5" [label="docker-image://docker.io/asqatasun/contrast-finder:pre-requisites_Ubuntu-16.04_tomcat-7" shape="ellipse"];
  "sha256:d7085cf787a5d8926d629e297c29d8073cde706ec9a8bf9227048046d2899abd" [label="local://context" shape="ellipse"];
  "sha256:356082e9bdb4b571d02f87b9b4b1577d358a38c323beca2b0256266813572e36" [label="copy{src=/contrast-finder-webapp_0.9.6-SNAPSHOT.tar.gz, dest=/root}" shape="note"];
  "sha256:afff6fb4162921c11d7a10a3012802f53204b3c3a20161ff04a78fa9616a61b6" [label="/bin/sh -c cd      /root/contrast-*/install/                              &&      mv -v   contrast-*.war contrast-finder.war                     &&      mv -v   contrast-*.war /var/lib/tomcat7/webapps                &&      rm -rf  /root/contrast-*                                       &&      echo ${CONTRAST_FINDER_RELEASE}               >> ${INFO_FILE}  &&      echo \"\\n--- ${CONF_FILE} ---\"                 >> ${INFO_FILE}  &&      cat  ${CONF_FILE}                             >> ${INFO_FILE}  &&      echo \"\\n--- Logs -----------\"                 >> ${INFO_FILE}  &&      echo \"${TOMCAT_LOG}\"                          >> ${INFO_FILE}  &&      echo \"${LOG_FILE}\"                            >> ${INFO_FILE}  &&      echo \"--------------------\"                   >> ${INFO_FILE}  &&      cat  ${INFO_FILE} > ${LOG_FILE} && echo \"-- Install: Ok\"" shape="box"];
  "sha256:3455f2f42658d36830500faae1f4bb3e3f192b6a986c584e2a2419f64f327d78" [label="sha256:3455f2f42658d36830500faae1f4bb3e3f192b6a986c584e2a2419f64f327d78" shape="plaintext"];
  "sha256:569bc4bed74f9f9d6cc784178dcdb86cc05adcd4ca3295b010086c5eb6e17ad5" -> "sha256:356082e9bdb4b571d02f87b9b4b1577d358a38c323beca2b0256266813572e36" [label=""];
  "sha256:d7085cf787a5d8926d629e297c29d8073cde706ec9a8bf9227048046d2899abd" -> "sha256:356082e9bdb4b571d02f87b9b4b1577d358a38c323beca2b0256266813572e36" [label=""];
  "sha256:356082e9bdb4b571d02f87b9b4b1577d358a38c323beca2b0256266813572e36" -> "sha256:afff6fb4162921c11d7a10a3012802f53204b3c3a20161ff04a78fa9616a61b6" [label=""];
  "sha256:afff6fb4162921c11d7a10a3012802f53204b3c3a20161ff04a78fa9616a61b6" -> "sha256:3455f2f42658d36830500faae1f4bb3e3f192b6a986c584e2a2419f64f327d78" [label=""];
}

