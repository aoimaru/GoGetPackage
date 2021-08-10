[app/sources/222585987.Dockerfile]
digraph {
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:9c8c23c7801cfc243fea4fd566b64ca720c4e866da893a09d6f34f45151b93f7" [label="/bin/sh -c yum -y install httpd mod_ssl mod_proxy && yum -y clean all" shape="box"];
  "sha256:7623759c6456084f1fc4e62df4f6bf54655b67351ebafee934bac535abd53a7b" [label="local://context" shape="ellipse"];
  "sha256:ff74bde6961afcc41826152f27a0749ee14224c073694ca75cf573138573313f" [label="copy{src=/target/console-httpd--dist.tar.gz, dest=/}" shape="note"];
  "sha256:89a2a1fe5b5314285834ba20f71ffc4847044f3593299855334eb16a6c5ed73a" [label="sha256:89a2a1fe5b5314285834ba20f71ffc4847044f3593299855334eb16a6c5ed73a" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:9c8c23c7801cfc243fea4fd566b64ca720c4e866da893a09d6f34f45151b93f7" [label=""];
  "sha256:9c8c23c7801cfc243fea4fd566b64ca720c4e866da893a09d6f34f45151b93f7" -> "sha256:ff74bde6961afcc41826152f27a0749ee14224c073694ca75cf573138573313f" [label=""];
  "sha256:7623759c6456084f1fc4e62df4f6bf54655b67351ebafee934bac535abd53a7b" -> "sha256:ff74bde6961afcc41826152f27a0749ee14224c073694ca75cf573138573313f" [label=""];
  "sha256:ff74bde6961afcc41826152f27a0749ee14224c073694ca75cf573138573313f" -> "sha256:89a2a1fe5b5314285834ba20f71ffc4847044f3593299855334eb16a6c5ed73a" [label=""];
}

