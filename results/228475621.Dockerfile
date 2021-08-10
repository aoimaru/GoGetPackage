[app/sources/228475621.Dockerfile]
digraph {
  "sha256:e780fbd43148d5340d02e3cba6393b3011e6e8ee3b1ce4e13cfe2ace26e0c61c" [label="docker-image://docker.io/asqatasun/contrast-finder:pre-requisites_Ubuntu-18.04_tomcat-8.5" shape="ellipse"];
  "sha256:e8dd2672d52edde61b442753866201b7002d6857c73b7feeba2e2b3d44765692" [label="local://context" shape="ellipse"];
  "sha256:3824da589f33fdc009cbe9ec734051934b0b130eeff16be6f7aa7304b59386a2" [label="copy{src=/contrast-finder-webapp_0.9.6-SNAPSHOT.tar.gz, dest=/root}" shape="note"];
  "sha256:19953cd5298d4e5cbb756ecbe8e9889c4869c7d77ca8cbae571b47af923c3c56" [label="/bin/sh -c cd      /root/contrast-*/install/                              &&      mv -v   contrast-*.war contrast-finder.war                     &&      mv -v   contrast-*.war /var/lib/tomcat8/webapps                &&      rm -rf  /root/contrast-*                                       && echo \"env=${CONF_ENV}\"  >> ${CONF_FILE}                             &&      echo ${CONTRAST_FINDER_RELEASE}               >> ${INFO_FILE}  &&      echo \"\\n--- ${CONF_FILE} ---\"                 >> ${INFO_FILE}  &&      cat  ${CONF_FILE}                             >> ${INFO_FILE}  &&      echo \"\\n--- Logs -----------\"                 >> ${INFO_FILE}  &&      echo \"${TOMCAT_LOG}\"                          >> ${INFO_FILE}  &&      echo \"${LOG_FILE}\"                            >> ${INFO_FILE}  &&      echo \"--------------------\"                   >> ${INFO_FILE}  &&      cat  ${INFO_FILE} > ${LOG_FILE} && echo \"-- Install: Ok\"" shape="box"];
  "sha256:2d77686fa258be1d8263b533ed61b43bec6e4a2ee3c3e1f77fbf9c3ec8c528e5" [label="sha256:2d77686fa258be1d8263b533ed61b43bec6e4a2ee3c3e1f77fbf9c3ec8c528e5" shape="plaintext"];
  "sha256:e780fbd43148d5340d02e3cba6393b3011e6e8ee3b1ce4e13cfe2ace26e0c61c" -> "sha256:3824da589f33fdc009cbe9ec734051934b0b130eeff16be6f7aa7304b59386a2" [label=""];
  "sha256:e8dd2672d52edde61b442753866201b7002d6857c73b7feeba2e2b3d44765692" -> "sha256:3824da589f33fdc009cbe9ec734051934b0b130eeff16be6f7aa7304b59386a2" [label=""];
  "sha256:3824da589f33fdc009cbe9ec734051934b0b130eeff16be6f7aa7304b59386a2" -> "sha256:19953cd5298d4e5cbb756ecbe8e9889c4869c7d77ca8cbae571b47af923c3c56" [label=""];
  "sha256:19953cd5298d4e5cbb756ecbe8e9889c4869c7d77ca8cbae571b47af923c3c56" -> "sha256:2d77686fa258be1d8263b533ed61b43bec6e4a2ee3c3e1f77fbf9c3ec8c528e5" [label=""];
}

