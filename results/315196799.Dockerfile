[app/sources/315196799.Dockerfile]
digraph {
  "sha256:2373ad8d24f0b330ceaae6b44205c4eb9ead90dedd4cf00a6345f2421baf9cc1" [label="docker-image://docker.io/library/tomcat:8-jre8" shape="ellipse"];
  "sha256:243ed66cf5839c4d4c396d82a760f1e8be4efdbbe40745026fbaa87d92ad4473" [label="local://context" shape="ellipse"];
  "sha256:fce16a10b39117333d5b4c25079569d7135392a4c1f342c9c65d70e46d1b4df1" [label="copy{src=/build/scripts/start-collector.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:b48259b831920609b7be700fd686b7cb1f83e46255f416faebd942628a6045eb" [label="/bin/sh -c chmod a+x /usr/local/bin/start-collector.sh     && curl -SL ${INSTALL_URL} -o pinpoint-collector.war     && rm -rf /usr/local/tomcat/webapps     && mkdir -p /usr/local/tomcat/webapps     && unzip pinpoint-collector.war -d /usr/local/tomcat/webapps/ROOT     && rm -rf pinpoint-collector.war     && sed -i \"s/8005/9005/g\" /usr/local/tomcat/conf/server.xml     && sed -i \"s/8080/9080/g\" /usr/local/tomcat/conf/server.xml     && sed -i \"s/8009/9009/g\" /usr/local/tomcat/conf/server.xml     && sed -i \"s/8443/9443/g\" /usr/local/tomcat/conf/server.xml" shape="box"];
  "sha256:7aafffebb4d1abe7912594268a1574a1b0f59e722485019a3ffdcff778560f50" [label="sha256:7aafffebb4d1abe7912594268a1574a1b0f59e722485019a3ffdcff778560f50" shape="plaintext"];
  "sha256:2373ad8d24f0b330ceaae6b44205c4eb9ead90dedd4cf00a6345f2421baf9cc1" -> "sha256:fce16a10b39117333d5b4c25079569d7135392a4c1f342c9c65d70e46d1b4df1" [label=""];
  "sha256:243ed66cf5839c4d4c396d82a760f1e8be4efdbbe40745026fbaa87d92ad4473" -> "sha256:fce16a10b39117333d5b4c25079569d7135392a4c1f342c9c65d70e46d1b4df1" [label=""];
  "sha256:fce16a10b39117333d5b4c25079569d7135392a4c1f342c9c65d70e46d1b4df1" -> "sha256:b48259b831920609b7be700fd686b7cb1f83e46255f416faebd942628a6045eb" [label=""];
  "sha256:b48259b831920609b7be700fd686b7cb1f83e46255f416faebd942628a6045eb" -> "sha256:7aafffebb4d1abe7912594268a1574a1b0f59e722485019a3ffdcff778560f50" [label=""];
}

