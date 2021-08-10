[app/sources/282250548.Dockerfile]
digraph {
  "sha256:0d5a34a3f35c4e42e0cc7a6ef8c02d04599ab1442f1bd808b2b8ab176d41328a" [label="docker-image://docker.io/webdevops/php:ubuntu-18.04@sha256:db2d90943812a13f85d55af499930be01b114af28d1956d1fd6d84770b1d04e3" shape="ellipse"];
  "sha256:40e8ae78fabf91162cb52cd7a8e3aea99657c4c8171a3957631e9e2a2f095e9e" [label="local://context" shape="ellipse"];
  "sha256:5c8462f93d7f1f81de622d234c91ddb443a6e70ab2cea95f15f6c65c642ea70c" [label="copy{src=/conf, dest=/opt/docker/}" shape="note"];
  "sha256:26c2061facf807aedb3ad60df37f0870065b956645999fe12e176c4663f70bad" [label="/bin/sh -c set -x     && apt-install         apache2     && sed -ri '         s!^(\\s*CustomLog)\\s+\\S+!\\1 /proc/self/fd/1!g;         s!^(\\s*ErrorLog)\\s+\\S+!\\1 /proc/self/fd/2!g;         ' /etc/apache2/apache2.conf     && rm -f /etc/apache2/sites-enabled/*     && ln -sf /opt/docker/etc/httpd/main.conf /etc/apache2/sites-enabled/10-docker.conf     && a2enmod actions proxy proxy_fcgi ssl rewrite headers expires     && docker-run-bootstrap     && docker-image-cleanup" shape="box"];
  "sha256:dc78b190514874ee4fff9779eb02b0919f231a474652c385e89505fb67a6e7a9" [label="sha256:dc78b190514874ee4fff9779eb02b0919f231a474652c385e89505fb67a6e7a9" shape="plaintext"];
  "sha256:0d5a34a3f35c4e42e0cc7a6ef8c02d04599ab1442f1bd808b2b8ab176d41328a" -> "sha256:5c8462f93d7f1f81de622d234c91ddb443a6e70ab2cea95f15f6c65c642ea70c" [label=""];
  "sha256:40e8ae78fabf91162cb52cd7a8e3aea99657c4c8171a3957631e9e2a2f095e9e" -> "sha256:5c8462f93d7f1f81de622d234c91ddb443a6e70ab2cea95f15f6c65c642ea70c" [label=""];
  "sha256:5c8462f93d7f1f81de622d234c91ddb443a6e70ab2cea95f15f6c65c642ea70c" -> "sha256:26c2061facf807aedb3ad60df37f0870065b956645999fe12e176c4663f70bad" [label=""];
  "sha256:26c2061facf807aedb3ad60df37f0870065b956645999fe12e176c4663f70bad" -> "sha256:dc78b190514874ee4fff9779eb02b0919f231a474652c385e89505fb67a6e7a9" [label=""];
}

