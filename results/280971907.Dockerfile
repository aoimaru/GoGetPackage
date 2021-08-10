[app/sources/280971907.Dockerfile]
digraph {
  "sha256:f0a5a389c350ec0c218feea8ec5e6f3308c25aec39f8e6320104787a6cf9f433" [label="docker-image://docker.io/library/tomcat:8.5-alpine" shape="ellipse"];
  "sha256:8044d79e15109282427f36bf46ee109677c79e1f8c0389915645d4251296b62e" [label="local://context" shape="ellipse"];
  "sha256:5d8cff2e34bede15528a9c9465583f51b0eb7f81996d62405b034cea5baac777" [label="copy{src=/court.war, dest=/usr/local/tomcat/webapps/}" shape="note"];
  "sha256:99f1ecf4b1628b4f64b8001b365c30248ee3127665d0ad313b0b34d476f6eeaf" [label="sha256:99f1ecf4b1628b4f64b8001b365c30248ee3127665d0ad313b0b34d476f6eeaf" shape="plaintext"];
  "sha256:f0a5a389c350ec0c218feea8ec5e6f3308c25aec39f8e6320104787a6cf9f433" -> "sha256:5d8cff2e34bede15528a9c9465583f51b0eb7f81996d62405b034cea5baac777" [label=""];
  "sha256:8044d79e15109282427f36bf46ee109677c79e1f8c0389915645d4251296b62e" -> "sha256:5d8cff2e34bede15528a9c9465583f51b0eb7f81996d62405b034cea5baac777" [label=""];
  "sha256:5d8cff2e34bede15528a9c9465583f51b0eb7f81996d62405b034cea5baac777" -> "sha256:99f1ecf4b1628b4f64b8001b365c30248ee3127665d0ad313b0b34d476f6eeaf" [label=""];
}

