[app/sources/199460351.Dockerfile]
digraph {
  "sha256:a6e599f7ff249667003523783f1c96cc7be7735699806462f5da1fe897012158" [label="docker-image://docker.io/library/java:8-jre" shape="ellipse"];
  "sha256:2c3698e8776be3488f9fe4fed0ca7098d565b822ab104ef30f4e4da269002e0f" [label="/bin/sh -c mkdir -p \"$CATALINA_HOME\"" shape="box"];
  "sha256:cea35f62cbe66cbdcd46ccbebee87398ab636f74456753767472ab765a36ace8" [label="mkdir{path=/usr/local/tomcat}" shape="note"];
  "sha256:521fa42153d4bc43afa64d099a7aed37d7c75d2a2fdbc145800848b611b7ca43" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:5bf81aef40c839d4421261eec40c8b97d84aa121548b4637226f3a7d617c35c7" [label="/bin/sh -c gpg --keyserver pool.sks-keyservers.net --recv-keys \t05AB33110949707C93A279E3D3EFE6B686867BA6 \t07E48665A34DCAFAE522E5E6266191C37C037D42 \t47309207D818FFD8DCD3F83F1931D684307A10A5 \t541FBE7D8F78B25E055DDEE13C370389288584E7 \t61B832AC2F1C5A90F0F9B00A1C506407564C17A3 \t713DA88BE50911535FE716F5208B0AB1D63011C7 \t79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED \t9BA44C2621385CB966EBA586F72C284D731FABEE \tA27677289986DB50844682F8ACB77FC2E86E29AC \tA9C5DF4D22E99998D9875A5110C01C5A2F6059E7 \tB3F49CD3B9BD2996DA90F817ED3873F5D3262722 \tDCFD35E0BF8CA7344752DE8B6FB21E8933C60243 \tF3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE \tF7DA48BB64BCB84ECBA7EE6935CD23C10D498E23" shape="box"];
  "sha256:be8e88c4a8e15930a8af501ea4f03929a4ee45a4faada4899abdd32ff23e3760" [label="/bin/sh -c set -x \t&& curl -fSL \"$TOMCAT_TGZ_URL\" -o tomcat.tar.gz \t&& curl -fSL \"$TOMCAT_TGZ_URL.asc\" -o tomcat.tar.gz.asc \t&& gpg --verify tomcat.tar.gz.asc \t&& tar -xvf tomcat.tar.gz --strip-components=1 \t&& rm bin/*.bat \t&& rm tomcat.tar.gz* \t&& cd /opt \t&& wget \"$CMDBUILD_URL\" \t&& mv cmdbuild* cmdbuild.zip \t&& unzip cmdbuild.zip \t&& rm -rf cmdbuild.zip \t&& mv cmdbuild* cmdbuild \t&& cd /usr/local/tomcat/webapps/ROOT \t&& rm -rf * \t&& cd /opt/cmdbuild/ \t&& mkdir temp \t&& mv *.war temp/ \t&& cd temp \t&& mv cmdbuild*.war cmdbuild.war \t&& unzip cmdbuild.war \t&& mv cmdbuild.war /usr/local/tomcat/webapps/ROOT.war \t&& mv * /usr/local//tomcat/webapps/ROOT/ \t&& cd /opt/cmdbuild/extras/tomcat-libs/6.0 \t&& wget \"$LIB\" \t&& mv *.jar /usr/local/tomcat/lib \t&& cd /opt \t&& rm -rf *" shape="box"];
  "sha256:4eeac9a925b63e72b26e680accc03a43dd65c06bc297b1c9aad6bda3719e3d99" [label="sha256:4eeac9a925b63e72b26e680accc03a43dd65c06bc297b1c9aad6bda3719e3d99" shape="plaintext"];
  "sha256:a6e599f7ff249667003523783f1c96cc7be7735699806462f5da1fe897012158" -> "sha256:2c3698e8776be3488f9fe4fed0ca7098d565b822ab104ef30f4e4da269002e0f" [label=""];
  "sha256:2c3698e8776be3488f9fe4fed0ca7098d565b822ab104ef30f4e4da269002e0f" -> "sha256:cea35f62cbe66cbdcd46ccbebee87398ab636f74456753767472ab765a36ace8" [label=""];
  "sha256:cea35f62cbe66cbdcd46ccbebee87398ab636f74456753767472ab765a36ace8" -> "sha256:521fa42153d4bc43afa64d099a7aed37d7c75d2a2fdbc145800848b611b7ca43" [label=""];
  "sha256:521fa42153d4bc43afa64d099a7aed37d7c75d2a2fdbc145800848b611b7ca43" -> "sha256:5bf81aef40c839d4421261eec40c8b97d84aa121548b4637226f3a7d617c35c7" [label=""];
  "sha256:5bf81aef40c839d4421261eec40c8b97d84aa121548b4637226f3a7d617c35c7" -> "sha256:be8e88c4a8e15930a8af501ea4f03929a4ee45a4faada4899abdd32ff23e3760" [label=""];
  "sha256:be8e88c4a8e15930a8af501ea4f03929a4ee45a4faada4899abdd32ff23e3760" -> "sha256:4eeac9a925b63e72b26e680accc03a43dd65c06bc297b1c9aad6bda3719e3d99" [label=""];
}

