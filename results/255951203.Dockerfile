[app/sources/255951203.Dockerfile]
digraph {
  "sha256:379d890a9bb279864a255783e655dd71612acd7fa57f90558b156cc4ad30bf96" [label="docker-image://docker.io/jboss/wildfly:14.1.0.Final" shape="ellipse"];
  "sha256:4809bf0cc5b7366f089e3470c868ab624ae5884627794ffe0f003756085d1384" [label="/bin/sh -c /opt/jboss/wildfly/bin/add-user.sh admin admin --silent" shape="box"];
  "sha256:ff01b621ed61d76991a561fe3112d265174c6b6967dde0098c24277767f01895" [label="sha256:ff01b621ed61d76991a561fe3112d265174c6b6967dde0098c24277767f01895" shape="plaintext"];
  "sha256:379d890a9bb279864a255783e655dd71612acd7fa57f90558b156cc4ad30bf96" -> "sha256:4809bf0cc5b7366f089e3470c868ab624ae5884627794ffe0f003756085d1384" [label=""];
  "sha256:4809bf0cc5b7366f089e3470c868ab624ae5884627794ffe0f003756085d1384" -> "sha256:ff01b621ed61d76991a561fe3112d265174c6b6967dde0098c24277767f01895" [label=""];
}
