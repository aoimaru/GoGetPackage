[app/sources/229974447.Dockerfile]
digraph {
  "sha256:d0706e4341a400d2e8f59e4e79d0401943af9b4204c78916de32acfb3e12e685" [label="docker-image://docker.io/keensoft/alfresco-docker-template:5.0.d" shape="ellipse"];
  "sha256:c32030d36d9f2a52c1d5e2f8d1d4e6bf01ee369fdd667428501305400ea02403" [label="/bin/sh -c set -x \t&& yum update -y \t&& yum clean all" shape="box"];
  "sha256:4383d6bfb54f079635b93e1fef9e064a72c2ed57295b160434e7fddd000fe181" [label="/bin/sh -c set -x \t&& yum install -y sed \t&& yum clean all" shape="box"];
  "sha256:34f199c9a51251890f0df990298992015ac5d545b5281ffe50c52bb2fbfdc4a3" [label="/bin/sh -c set -x \t&& ln -s /usr/local/tomcat /usr/local/alfresco/tomcat \t&& mkdir -p tomcat/conf/Catalina/localhost \t&& mv $DIST/web-server/webapps/solr4.war tomcat/webapps/ \t&& mv $DIST/alf_data . \t&& mv $DIST/solr4/context.xml tomcat/conf/Catalina/localhost/solr4.xml \t&& mv $DIST/solr4 . \t&& mv $DIST/licenses . \t&& mv $DIST/README.txt ." shape="box"];
  "sha256:62cb058142e6bf45e7585960b582e29b4398fbdce9ec7ed7c0eb93d7bbe7d5f9" [label="/bin/sh -c set -x \t&& sed -i 's,@@ALFRESCO_SOLR4_DIR@@,'\"$ALF_HOME\"'/solr4,g' tomcat/conf/Catalina/localhost/solr4.xml \t&& sed -i 's,@@ALFRESCO_SOLR4_MODEL_DIR@@,'\"$ALF_HOME\"'/alf_data/solr4/model,g' tomcat/conf/Catalina/localhost/solr4.xml \t&& sed -i 's,@@ALFRESCO_SOLR4_CONTENT_DIR@@,'\"$ALF_HOME\"'/alf_data/solr4/content,g' tomcat/conf/Catalina/localhost/solr4.xml \t&& sed -i 's,@@ALFRESCO_SOLR4_DATA_DIR@@,'\"$ALF_HOME\"'/alf_data/solr4/index,g' solr4/workspace-SpacesStore/conf/solrcore.properties \t&& sed -i 's,@@ALFRESCO_SOLR4_DATA_DIR@@,'\"$ALF_HOME\"'/alf_data/solr4/index,g' solr4/archive-SpacesStore/conf/solrcore.properties \t&& sed -i 's,alfresco.host=localhost,alfresco.host=alfresco,g' solr4/workspace-SpacesStore/conf/solrcore.properties \t&& sed -i 's,alfresco.host=localhost,alfresco.host=alfresco,g' solr4/archive-SpacesStore/conf/solrcore.properties \t&& sed -i 's,alfresco.secureComms=https,alfresco.secureComms=none,g' solr4/workspace-SpacesStore/conf/solrcore.properties \t&& sed -i 's,alfresco.secureComms=https,alfresco.secureComms=none,g' solr4/archive-SpacesStore/conf/solrcore.properties" shape="box"];
  "sha256:e5bd4ed1ce4839e2d0ec54eeb698d584f56f597daa2ad000600200e5eeb0738c" [label="/bin/sh -c set -x         && mkdir tomcat/webapps/solr4         && unzip tomcat/webapps/solr4.war -d tomcat/webapps/solr4" shape="box"];
  "sha256:2c4b7a5c53a618d3da4a65620636bfdc340c98f4cd2f9ee2a5a3bafef2caea49" [label="local://context" shape="ellipse"];
  "sha256:726d74c6b65b6a5b368abff24e41ea81965aa54ad70a20797c5b21adb0b5bdcc" [label="copy{src=/assets/solr4/web.xml, dest=/tomcat/webapps/solr4/WEB-INF/web.xml}" shape="note"];
  "sha256:57dcef8849a592da9d9e43fdf54417e86ca8d1b76b3b8b4283d28bbe984c4d13" [label="mkdir{path=/usr/local/alfresco/solr4}" shape="note"];
  "sha256:02d4b60010dcb4836d9b56b5777ec646d5fa0d0e102f4ff31bea88b5169e3b20" [label="/bin/sh -c useradd -ms /bin/bash solr" shape="box"];
  "sha256:55124525f3b1597f24085687eaece19bac5e3548e4a4290adb0471ea29bcf516" [label="/bin/sh -c set -x && chown -RL solr:solr $ALF_HOME" shape="box"];
  "sha256:3ca4a6c8070e1eb1305db59b1f7f77286b9684f0c53997819da2223f24421e7e" [label="sha256:3ca4a6c8070e1eb1305db59b1f7f77286b9684f0c53997819da2223f24421e7e" shape="plaintext"];
  "sha256:d0706e4341a400d2e8f59e4e79d0401943af9b4204c78916de32acfb3e12e685" -> "sha256:c32030d36d9f2a52c1d5e2f8d1d4e6bf01ee369fdd667428501305400ea02403" [label=""];
  "sha256:c32030d36d9f2a52c1d5e2f8d1d4e6bf01ee369fdd667428501305400ea02403" -> "sha256:4383d6bfb54f079635b93e1fef9e064a72c2ed57295b160434e7fddd000fe181" [label=""];
  "sha256:4383d6bfb54f079635b93e1fef9e064a72c2ed57295b160434e7fddd000fe181" -> "sha256:34f199c9a51251890f0df990298992015ac5d545b5281ffe50c52bb2fbfdc4a3" [label=""];
  "sha256:34f199c9a51251890f0df990298992015ac5d545b5281ffe50c52bb2fbfdc4a3" -> "sha256:62cb058142e6bf45e7585960b582e29b4398fbdce9ec7ed7c0eb93d7bbe7d5f9" [label=""];
  "sha256:62cb058142e6bf45e7585960b582e29b4398fbdce9ec7ed7c0eb93d7bbe7d5f9" -> "sha256:e5bd4ed1ce4839e2d0ec54eeb698d584f56f597daa2ad000600200e5eeb0738c" [label=""];
  "sha256:e5bd4ed1ce4839e2d0ec54eeb698d584f56f597daa2ad000600200e5eeb0738c" -> "sha256:726d74c6b65b6a5b368abff24e41ea81965aa54ad70a20797c5b21adb0b5bdcc" [label=""];
  "sha256:2c4b7a5c53a618d3da4a65620636bfdc340c98f4cd2f9ee2a5a3bafef2caea49" -> "sha256:726d74c6b65b6a5b368abff24e41ea81965aa54ad70a20797c5b21adb0b5bdcc" [label=""];
  "sha256:726d74c6b65b6a5b368abff24e41ea81965aa54ad70a20797c5b21adb0b5bdcc" -> "sha256:57dcef8849a592da9d9e43fdf54417e86ca8d1b76b3b8b4283d28bbe984c4d13" [label=""];
  "sha256:57dcef8849a592da9d9e43fdf54417e86ca8d1b76b3b8b4283d28bbe984c4d13" -> "sha256:02d4b60010dcb4836d9b56b5777ec646d5fa0d0e102f4ff31bea88b5169e3b20" [label=""];
  "sha256:02d4b60010dcb4836d9b56b5777ec646d5fa0d0e102f4ff31bea88b5169e3b20" -> "sha256:55124525f3b1597f24085687eaece19bac5e3548e4a4290adb0471ea29bcf516" [label=""];
  "sha256:55124525f3b1597f24085687eaece19bac5e3548e4a4290adb0471ea29bcf516" -> "sha256:3ca4a6c8070e1eb1305db59b1f7f77286b9684f0c53997819da2223f24421e7e" [label=""];
}

