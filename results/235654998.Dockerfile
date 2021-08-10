[app/sources/235654998.Dockerfile]
digraph {
  "sha256:a564228bafc540e7b923a5231d07a46aaa183fb80d0341e559ff2e46d2639b57" [label="docker-image://docker.io/vulhub/tomcat:8.5" shape="ellipse"];
  "sha256:fb8bcccabd70af8d6f61a7369101cb942d4add561d9953c319dbe517606ae352" [label="/bin/sh -c set -ex     && rm -rf /usr/local/tomcat/webapps/*     && chmod a+x /usr/local/tomcat/bin/*.sh" shape="box"];
  "sha256:1ae528102ec9a8ab8ac5542505697936fb38f13830c0752a0a37ed9a70136b02" [label="local://context" shape="ellipse"];
  "sha256:3a4eb3a393f6d4f0bca8f90130be75885e490b2098dbd9b7e9944c764687384f" [label="copy{src=/S2-008.war, dest=/usr/local/tomcat/webapps/ROOT.war}" shape="note"];
  "sha256:61c7d431f36f8505b85a6a0bb8e7f19af836875438cfca549f35fc337b9e1d7e" [label="sha256:61c7d431f36f8505b85a6a0bb8e7f19af836875438cfca549f35fc337b9e1d7e" shape="plaintext"];
  "sha256:a564228bafc540e7b923a5231d07a46aaa183fb80d0341e559ff2e46d2639b57" -> "sha256:fb8bcccabd70af8d6f61a7369101cb942d4add561d9953c319dbe517606ae352" [label=""];
  "sha256:fb8bcccabd70af8d6f61a7369101cb942d4add561d9953c319dbe517606ae352" -> "sha256:3a4eb3a393f6d4f0bca8f90130be75885e490b2098dbd9b7e9944c764687384f" [label=""];
  "sha256:1ae528102ec9a8ab8ac5542505697936fb38f13830c0752a0a37ed9a70136b02" -> "sha256:3a4eb3a393f6d4f0bca8f90130be75885e490b2098dbd9b7e9944c764687384f" [label=""];
  "sha256:3a4eb3a393f6d4f0bca8f90130be75885e490b2098dbd9b7e9944c764687384f" -> "sha256:61c7d431f36f8505b85a6a0bb8e7f19af836875438cfca549f35fc337b9e1d7e" [label=""];
}

