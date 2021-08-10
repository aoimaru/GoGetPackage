[app/sources/262616712.Dockerfile]
digraph {
  "sha256:5399ab4e9fa11a167ffa4c02a5fa5911474e644ea70c257851224176957bdda4" [label="docker-image://docker.io/thonatos/openjdk-tomcat-maven:jdk8-maven3" shape="ellipse"];
  "sha256:5b9fadd6b0561d91a7d5080ad410a7d8b01e113d355e751563a4e9f42daff792" [label="/bin/sh -c apk add --update openssl" shape="box"];
  "sha256:d90faa0d61d1652ee67a35d7ef7bc46cd68ad19f0c8a1a3d11705aceca36eb04" [label="/bin/sh -c mkdir -p /app     && wget -O /tmp/app.zip \"http://search.maven.org/remotecontent?filepath=io/github/hengyunabc/xdiamond/xdiamond-server/$XDIAMOND_VERSION/xdiamond-server-$XDIAMOND_VERSION.war\"     && unzip /tmp/app.zip -d /app/     && rm -rf /tmp/*     && rm -rf /usr/local/tomcat/webapps/ROOT     && mv /app /usr/local/tomcat/webapps/ROOT" shape="box"];
  "sha256:59fa927b54d519d8646c7c0ebd72b874f3cc571480094fa4f5fbd657ef96164a" [label="sha256:59fa927b54d519d8646c7c0ebd72b874f3cc571480094fa4f5fbd657ef96164a" shape="plaintext"];
  "sha256:5399ab4e9fa11a167ffa4c02a5fa5911474e644ea70c257851224176957bdda4" -> "sha256:5b9fadd6b0561d91a7d5080ad410a7d8b01e113d355e751563a4e9f42daff792" [label=""];
  "sha256:5b9fadd6b0561d91a7d5080ad410a7d8b01e113d355e751563a4e9f42daff792" -> "sha256:d90faa0d61d1652ee67a35d7ef7bc46cd68ad19f0c8a1a3d11705aceca36eb04" [label=""];
  "sha256:d90faa0d61d1652ee67a35d7ef7bc46cd68ad19f0c8a1a3d11705aceca36eb04" -> "sha256:59fa927b54d519d8646c7c0ebd72b874f3cc571480094fa4f5fbd657ef96164a" [label=""];
}

