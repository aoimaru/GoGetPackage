[app/sources/364194404.Dockerfile]
digraph {
  "sha256:ec700f768de91f3bec82dbf3e9b441876782c6acacd7b52bd5d5ab5249851151" [label="local://context" shape="ellipse"];
  "sha256:9664cc186d32e6523205425ac85e6b30e9fe62d40e2237ac1568d7211df46f57" [label="docker-image://docker.io/webdevops/base:ubuntu-15.04@sha256:7c74473d6e9ca272bd0f36e6a93f508f3af5a51fa3137444a4e292e27a3abede" shape="ellipse"];
  "sha256:6bbdb2826ad0a1116ceb342a8d9c72e3d400811250b05e0ef87564d553d2af3a" [label="copy{src=/conf, dest=/opt/docker/}" shape="note"];
  "sha256:7ca2923e54a570a5123adf5f8d11fbc13e0d85908e43147f5a0a2672c04f95e9" [label="/bin/sh -c set -x     && apt-install         apache2     && sed -ri '         s!^(\\s*CustomLog)\\s+\\S+!\\1 /proc/self/fd/1!g;         s!^(\\s*ErrorLog)\\s+\\S+!\\1 /proc/self/fd/2!g;         ' /etc/apache2/apache2.conf     && rm -f /etc/apache2/sites-enabled/*     && ln -sf /opt/docker/etc/httpd/main.conf /etc/apache2/sites-enabled/10-docker.conf     && a2enmod actions proxy proxy_fcgi ssl rewrite headers expires     && docker-run-bootstrap     && docker-image-cleanup" shape="box"];
  "sha256:ff5ebab733a058819e0207181038535b6964cb69ff9d6b5479549c8d8dcfe5aa" [label="sha256:ff5ebab733a058819e0207181038535b6964cb69ff9d6b5479549c8d8dcfe5aa" shape="plaintext"];
  "sha256:9664cc186d32e6523205425ac85e6b30e9fe62d40e2237ac1568d7211df46f57" -> "sha256:6bbdb2826ad0a1116ceb342a8d9c72e3d400811250b05e0ef87564d553d2af3a" [label=""];
  "sha256:ec700f768de91f3bec82dbf3e9b441876782c6acacd7b52bd5d5ab5249851151" -> "sha256:6bbdb2826ad0a1116ceb342a8d9c72e3d400811250b05e0ef87564d553d2af3a" [label=""];
  "sha256:6bbdb2826ad0a1116ceb342a8d9c72e3d400811250b05e0ef87564d553d2af3a" -> "sha256:7ca2923e54a570a5123adf5f8d11fbc13e0d85908e43147f5a0a2672c04f95e9" [label=""];
  "sha256:7ca2923e54a570a5123adf5f8d11fbc13e0d85908e43147f5a0a2672c04f95e9" -> "sha256:ff5ebab733a058819e0207181038535b6964cb69ff9d6b5479549c8d8dcfe5aa" [label=""];
}

