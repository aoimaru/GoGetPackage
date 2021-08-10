[app/sources/235655016.Dockerfile]
digraph {
  "sha256:a564228bafc540e7b923a5231d07a46aaa183fb80d0341e559ff2e46d2639b57" [label="docker-image://docker.io/vulhub/tomcat:8.5" shape="ellipse"];
  "sha256:fb8bcccabd70af8d6f61a7369101cb942d4add561d9953c319dbe517606ae352" [label="/bin/sh -c set -ex     && rm -rf /usr/local/tomcat/webapps/*     && chmod a+x /usr/local/tomcat/bin/*.sh" shape="box"];
  "sha256:3386e9bfc8165d3a1e3794fe62596b03e5dba7f2fd283232dcae0d8a40f292a1" [label="local://context" shape="ellipse"];
  "sha256:ee90864885397ef023a021ca5d5c4afbd788b6ea365243cc75863924dfe363fd" [label="copy{src=/S2-013.war, dest=/usr/local/tomcat/webapps/ROOT.war}" shape="note"];
  "sha256:e29b82aa47fb61bbcdcde339cb56b80fea69d67fd2b761578cfdd4f9ab2c12f5" [label="sha256:e29b82aa47fb61bbcdcde339cb56b80fea69d67fd2b761578cfdd4f9ab2c12f5" shape="plaintext"];
  "sha256:a564228bafc540e7b923a5231d07a46aaa183fb80d0341e559ff2e46d2639b57" -> "sha256:fb8bcccabd70af8d6f61a7369101cb942d4add561d9953c319dbe517606ae352" [label=""];
  "sha256:fb8bcccabd70af8d6f61a7369101cb942d4add561d9953c319dbe517606ae352" -> "sha256:ee90864885397ef023a021ca5d5c4afbd788b6ea365243cc75863924dfe363fd" [label=""];
  "sha256:3386e9bfc8165d3a1e3794fe62596b03e5dba7f2fd283232dcae0d8a40f292a1" -> "sha256:ee90864885397ef023a021ca5d5c4afbd788b6ea365243cc75863924dfe363fd" [label=""];
  "sha256:ee90864885397ef023a021ca5d5c4afbd788b6ea365243cc75863924dfe363fd" -> "sha256:e29b82aa47fb61bbcdcde339cb56b80fea69d67fd2b761578cfdd4f9ab2c12f5" [label=""];
}

