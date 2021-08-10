[app/sources/348307789.Dockerfile]
digraph {
  "sha256:2373ad8d24f0b330ceaae6b44205c4eb9ead90dedd4cf00a6345f2421baf9cc1" [label="docker-image://docker.io/library/tomcat:8-jre8" shape="ellipse"];
  "sha256:7566296294e74872b7fced0b910005410c10554799bb4d5fec00efd3b43851a1" [label="local://context" shape="ellipse"];
  "sha256:77b030f23a8920b2d7887ceec6585259628386fdef0b784654a58e3c59ea8568" [label="copy{src=/start-web.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:7511627647645fa6f94d6015b0bd2f17eac2f750fa74523e97927d9e4183bd7b" [label="/bin/sh -c chmod a+x /usr/local/bin/start-web.sh     && mkdir -p /assets/     && curl -SL https://raw.githubusercontent.com/naver/pinpoint/$PINPOINT_VERSION/web/src/main/resources/pinpoint-web.properties -o /assets/pinpoint-web.properties     && curl -SL https://raw.githubusercontent.com/naver/pinpoint/$PINPOINT_VERSION/web/src/main/resources/hbase.properties -o /assets/hbase.properties     && curl -SL https://github.com/naver/pinpoint/releases/download/$PINPOINT_VERSION/pinpoint-web-$PINPOINT_VERSION.war -o pinpoint-web.war     && rm -rf /usr/local/tomcat/webapps     && mkdir -p /usr/local/tomcat/webapps     && unzip pinpoint-web.war -d /usr/local/tomcat/webapps/ROOT     && rm -rf pinpoint-web.war" shape="box"];
  "sha256:8f8b2e4ce3e69a5b8d8d3ecc091242d0a3f8d0000e60d5f1eee4595102d02147" [label="sha256:8f8b2e4ce3e69a5b8d8d3ecc091242d0a3f8d0000e60d5f1eee4595102d02147" shape="plaintext"];
  "sha256:2373ad8d24f0b330ceaae6b44205c4eb9ead90dedd4cf00a6345f2421baf9cc1" -> "sha256:77b030f23a8920b2d7887ceec6585259628386fdef0b784654a58e3c59ea8568" [label=""];
  "sha256:7566296294e74872b7fced0b910005410c10554799bb4d5fec00efd3b43851a1" -> "sha256:77b030f23a8920b2d7887ceec6585259628386fdef0b784654a58e3c59ea8568" [label=""];
  "sha256:77b030f23a8920b2d7887ceec6585259628386fdef0b784654a58e3c59ea8568" -> "sha256:7511627647645fa6f94d6015b0bd2f17eac2f750fa74523e97927d9e4183bd7b" [label=""];
  "sha256:7511627647645fa6f94d6015b0bd2f17eac2f750fa74523e97927d9e4183bd7b" -> "sha256:8f8b2e4ce3e69a5b8d8d3ecc091242d0a3f8d0000e60d5f1eee4595102d02147" [label=""];
}

