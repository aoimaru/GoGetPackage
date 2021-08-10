[app/sources/282250340.Dockerfile]
digraph {
  "sha256:d5e2e3325608c47f6e6ff1f53b1fa4f44767fd8b26349d34a7843c6f91d5b6e9" [label="local://context" shape="ellipse"];
  "sha256:9502f62b14c1ba31c5cc67d141c01db16eba220dc423e0d590ac7cb6773fd65b" [label="docker-image://docker.io/webdevops/php:ubuntu-12.04@sha256:816cb80b5a0cf1b18f3279c34297e59d8cb046c516c09dac49455e7318568d04" shape="ellipse"];
  "sha256:2b766adf1235e64ffc6e8b578c8558b10580daf66e944eb02bfccaef720f7f0c" [label="copy{src=/conf, dest=/opt/docker/}" shape="note"];
  "sha256:b276dfe84ce668935b7f586f2b9e7fa1bf3523b3d2a4e7ca548d9f2a240181fd" [label="/bin/sh -c set -x     && apt-install         apache2         apache2-mpm-worker         libapache2-mod-fastcgi     && sed -ri '         s!^(\\s*CustomLog)\\s+\\S+!\\1 /proc/self/fd/1!g;         s!^(\\s*ErrorLog)\\s+\\S+!\\1 /proc/self/fd/2!g;         ' /etc/apache2/apache2.conf     && rm -f /etc/apache2/sites-enabled/*     && a2enmod actions fastcgi ssl rewrite headers version expires     && mkdir -p /var/lock/apache2     && docker-run-bootstrap     && docker-image-cleanup" shape="box"];
  "sha256:7b062ebe6042ba9cffb3d1fc5da580e912743ac834bfb3f0d3b3bb88bae45489" [label="sha256:7b062ebe6042ba9cffb3d1fc5da580e912743ac834bfb3f0d3b3bb88bae45489" shape="plaintext"];
  "sha256:9502f62b14c1ba31c5cc67d141c01db16eba220dc423e0d590ac7cb6773fd65b" -> "sha256:2b766adf1235e64ffc6e8b578c8558b10580daf66e944eb02bfccaef720f7f0c" [label=""];
  "sha256:d5e2e3325608c47f6e6ff1f53b1fa4f44767fd8b26349d34a7843c6f91d5b6e9" -> "sha256:2b766adf1235e64ffc6e8b578c8558b10580daf66e944eb02bfccaef720f7f0c" [label=""];
  "sha256:2b766adf1235e64ffc6e8b578c8558b10580daf66e944eb02bfccaef720f7f0c" -> "sha256:b276dfe84ce668935b7f586f2b9e7fa1bf3523b3d2a4e7ca548d9f2a240181fd" [label=""];
  "sha256:b276dfe84ce668935b7f586f2b9e7fa1bf3523b3d2a4e7ca548d9f2a240181fd" -> "sha256:7b062ebe6042ba9cffb3d1fc5da580e912743ac834bfb3f0d3b3bb88bae45489" [label=""];
}

