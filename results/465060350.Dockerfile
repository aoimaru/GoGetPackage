[app/sources/465060350.Dockerfile]
digraph {
  "sha256:7264997f543e1c8c829328981902a48791379826ebe6e199db7533b8ed9fd434" [label="local://context" shape="ellipse"];
  "sha256:9fa17b36d306aa8a576beee379f69e08ed77634933ed6f0060ed1a9903e7ddfb" [label="docker-image://docker.io/library/tomcat:9.0.5-jre8" shape="ellipse"];
  "sha256:db8892f1b59cfa1c7bd429f749fb292f2a2a1c1d28430215ae47c49445525226" [label="copy{src=/jenkins.war, dest=/usr/local/tomcat/webapps/jenkins.war}" shape="note"];
  "sha256:a68de4fa9a5bb55a0a0e25a4dd39a5a734f1013cb10ab1229492cfd4f7a18383" [label="sha256:a68de4fa9a5bb55a0a0e25a4dd39a5a734f1013cb10ab1229492cfd4f7a18383" shape="plaintext"];
  "sha256:9fa17b36d306aa8a576beee379f69e08ed77634933ed6f0060ed1a9903e7ddfb" -> "sha256:db8892f1b59cfa1c7bd429f749fb292f2a2a1c1d28430215ae47c49445525226" [label=""];
  "sha256:7264997f543e1c8c829328981902a48791379826ebe6e199db7533b8ed9fd434" -> "sha256:db8892f1b59cfa1c7bd429f749fb292f2a2a1c1d28430215ae47c49445525226" [label=""];
  "sha256:db8892f1b59cfa1c7bd429f749fb292f2a2a1c1d28430215ae47c49445525226" -> "sha256:a68de4fa9a5bb55a0a0e25a4dd39a5a734f1013cb10ab1229492cfd4f7a18383" [label=""];
}

