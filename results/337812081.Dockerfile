[app/sources/337812081.Dockerfile]
digraph {
  "sha256:62793e4cd17e86d16247404ab830ea08396c76218cb665bde4f155630fa2fb67" [label="docker-image://docker.io/jboss/keycloak-adapter-wildfly:latest" shape="ellipse"];
  "sha256:839e532f54050d515ad192afaa2d0cc21096f8441f64feb96ba6f8b6f72b140c" [label="/bin/sh -c yum clean all &&     yum -y update &&     yum install -y wget curl vim less &&     yum clean all" shape="box"];
  "sha256:a9a0d84b780ce77514536be8a3c67e834152969bcb027fee189a36aa925d06de" [label="sha256:a9a0d84b780ce77514536be8a3c67e834152969bcb027fee189a36aa925d06de" shape="plaintext"];
  "sha256:62793e4cd17e86d16247404ab830ea08396c76218cb665bde4f155630fa2fb67" -> "sha256:839e532f54050d515ad192afaa2d0cc21096f8441f64feb96ba6f8b6f72b140c" [label=""];
  "sha256:839e532f54050d515ad192afaa2d0cc21096f8441f64feb96ba6f8b6f72b140c" -> "sha256:a9a0d84b780ce77514536be8a3c67e834152969bcb027fee189a36aa925d06de" [label=""];
}

