[app/sources/235654360.Dockerfile]
digraph {
  "sha256:a564228bafc540e7b923a5231d07a46aaa183fb80d0341e559ff2e46d2639b57" [label="docker-image://docker.io/vulhub/tomcat:8.5" shape="ellipse"];
  "sha256:fb8bcccabd70af8d6f61a7369101cb942d4add561d9953c319dbe517606ae352" [label="/bin/sh -c set -ex     && rm -rf /usr/local/tomcat/webapps/*     && chmod a+x /usr/local/tomcat/bin/*.sh" shape="box"];
  "sha256:41ea2b1aab43b3f914ab1ae09c5fbd6b49a50010ed48bd672396c85541727bab" [label="https://cdn.vulhub.org/struts2/s2-053/ROOT.war" shape="ellipse"];
  "sha256:b3a3b73b29812c09fc7e0053f68f1618e548b27fb0719c343c81f78f68fc2fdc" [label="copy{src=/ROOT.war, dest=/usr/local/tomcat/webapps/ROOT.war}" shape="note"];
  "sha256:9ef2b63e33f7f8cf51473af70e423485c4c881d564fcefbdf350118f8b50ede2" [label="sha256:9ef2b63e33f7f8cf51473af70e423485c4c881d564fcefbdf350118f8b50ede2" shape="plaintext"];
  "sha256:a564228bafc540e7b923a5231d07a46aaa183fb80d0341e559ff2e46d2639b57" -> "sha256:fb8bcccabd70af8d6f61a7369101cb942d4add561d9953c319dbe517606ae352" [label=""];
  "sha256:fb8bcccabd70af8d6f61a7369101cb942d4add561d9953c319dbe517606ae352" -> "sha256:b3a3b73b29812c09fc7e0053f68f1618e548b27fb0719c343c81f78f68fc2fdc" [label=""];
  "sha256:41ea2b1aab43b3f914ab1ae09c5fbd6b49a50010ed48bd672396c85541727bab" -> "sha256:b3a3b73b29812c09fc7e0053f68f1618e548b27fb0719c343c81f78f68fc2fdc" [label=""];
  "sha256:b3a3b73b29812c09fc7e0053f68f1618e548b27fb0719c343c81f78f68fc2fdc" -> "sha256:9ef2b63e33f7f8cf51473af70e423485c4c881d564fcefbdf350118f8b50ede2" [label=""];
}

