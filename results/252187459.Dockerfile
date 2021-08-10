[app/sources/252187459.Dockerfile]
digraph {
  "sha256:c633c686ad0ba0f0ac1c266a1426de430fe0b8313266e44713776273913748e4" [label="local://context" shape="ellipse"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:0934c27f1bcceb76b9ce50203e8984eafd066c80eb13663b9b70e719636b143a" [label="/bin/sh -c curl -sL https://rpm.nodesource.com/setup_6.x | bash -" shape="box"];
  "sha256:9b93b0728495b4e4feccaf78f515ee1d8c92fdbd797823d141dec93f2830994d" [label="copy{src=/traffic_portal/traffic_portal.rpm, dest=/}" shape="note"];
  "sha256:1d1d832d7d6318168d1b870bd891435a8f850ba655875c3564e7b18b7747641e" [label="/bin/sh -c yum install -y     epel-release &&     yum install -y       jq       nodejs       openssl       gettext       bind-utils       net-tools       /$(basename $TRAFFIC_PORTAL_RPM) &&     rm /$(basename $TRAFFIC_PORTAL_RPM) &&     yum clean all ||     echo \"ERROR INSTALLING PACKAGES\"" shape="box"];
  "sha256:56c357c75d19259d83b69f6d57b193b3e4f1b79dfbca77c6fe1b1ff809aa4390" [label="copy{src=/enroller/server_template.json, dest=/},copy{src=/traffic_portal/run.sh, dest=/},copy{src=/traffic_ops/to-access.sh, dest=/}" shape="note"];
  "sha256:4ae356312996f099a969759c83bd13e08b565328622da01e59eb8e3d196783cc" [label="sha256:4ae356312996f099a969759c83bd13e08b565328622da01e59eb8e3d196783cc" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:0934c27f1bcceb76b9ce50203e8984eafd066c80eb13663b9b70e719636b143a" [label=""];
  "sha256:0934c27f1bcceb76b9ce50203e8984eafd066c80eb13663b9b70e719636b143a" -> "sha256:9b93b0728495b4e4feccaf78f515ee1d8c92fdbd797823d141dec93f2830994d" [label=""];
  "sha256:c633c686ad0ba0f0ac1c266a1426de430fe0b8313266e44713776273913748e4" -> "sha256:9b93b0728495b4e4feccaf78f515ee1d8c92fdbd797823d141dec93f2830994d" [label=""];
  "sha256:9b93b0728495b4e4feccaf78f515ee1d8c92fdbd797823d141dec93f2830994d" -> "sha256:1d1d832d7d6318168d1b870bd891435a8f850ba655875c3564e7b18b7747641e" [label=""];
  "sha256:1d1d832d7d6318168d1b870bd891435a8f850ba655875c3564e7b18b7747641e" -> "sha256:56c357c75d19259d83b69f6d57b193b3e4f1b79dfbca77c6fe1b1ff809aa4390" [label=""];
  "sha256:c633c686ad0ba0f0ac1c266a1426de430fe0b8313266e44713776273913748e4" -> "sha256:56c357c75d19259d83b69f6d57b193b3e4f1b79dfbca77c6fe1b1ff809aa4390" [label=""];
  "sha256:56c357c75d19259d83b69f6d57b193b3e4f1b79dfbca77c6fe1b1ff809aa4390" -> "sha256:4ae356312996f099a969759c83bd13e08b565328622da01e59eb8e3d196783cc" [label=""];
}

