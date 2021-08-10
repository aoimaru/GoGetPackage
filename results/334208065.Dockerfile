[app/sources/334208065.Dockerfile]
digraph {
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:5ae407bd4a412619bb8ca3cc24ecade635251950209db063fe76231beb2717cd" [label="local://context" shape="ellipse"];
  "sha256:fdbc9284e7c4cbe1a6641870f0f526d5d0806772fe3eb13feaab2345984ff9fe" [label="copy{src=/ci-operator-checkconfig, dest=/usr/bin/ci-operator-checkconfig}" shape="note"];
  "sha256:7b059fd581df5ad08fc8d9f10d7a3152281420b2a86dbd060e0ac91aa901e4a1" [label="sha256:7b059fd581df5ad08fc8d9f10d7a3152281420b2a86dbd060e0ac91aa901e4a1" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:fdbc9284e7c4cbe1a6641870f0f526d5d0806772fe3eb13feaab2345984ff9fe" [label=""];
  "sha256:5ae407bd4a412619bb8ca3cc24ecade635251950209db063fe76231beb2717cd" -> "sha256:fdbc9284e7c4cbe1a6641870f0f526d5d0806772fe3eb13feaab2345984ff9fe" [label=""];
  "sha256:fdbc9284e7c4cbe1a6641870f0f526d5d0806772fe3eb13feaab2345984ff9fe" -> "sha256:7b059fd581df5ad08fc8d9f10d7a3152281420b2a86dbd060e0ac91aa901e4a1" [label=""];
}

