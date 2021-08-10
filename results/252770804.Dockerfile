[app/sources/252770804.Dockerfile]
digraph {
  "sha256:d1a6123fcd53665b5d5907d457138d252b04072dce5ddb398ce053b34a7cc614" [label="docker-image://docker.io/library/centos:centos6" shape="ellipse"];
  "sha256:125f9ed679c034f099a624e9385f415161aaee94aa00b71d007bf2c119e948c6" [label="/bin/sh -c yum -y install httpd mod_ssl openssl" shape="box"];
  "sha256:aaa1bc749d2c21deb7f257db98c7ef7386b5aace7e2a7675cda114ead9637b2f" [label="local://context" shape="ellipse"];
  "sha256:72a07f8f290ad79c53889c78829dd5b8081bbc1e7e025f54bd423e1aa0af2fd1" [label="copy{src=/apache/httpd.conf, dest=/etc/httpd/conf/agavevhost.conf}" shape="note"];
  "sha256:696591e51194f20eb268343eaec124ef662decadbb45354d8b3b5d81a09495e4" [label="copy{src=/apache/ssl.conf, dest=/etc/httpd/conf.d/ssl.conf}" shape="note"];
  "sha256:01209eff8c3fc70730a2878954483a2ae5410036afd966aeba296ff70593afd0" [label="copy{src=/docker_entrypoint.sh, dest=/docker_entrypoint.sh}" shape="note"];
  "sha256:5b418ebd7e954aea4e85b99ddff8fe3151f8c6b31dbfafe7e2b498b7f32ec744" [label="/bin/sh -c cat /etc/httpd/conf/agavevhost.conf >> /etc/httpd/conf/httpd.conf && chmod +x /docker_entrypoint.sh" shape="box"];
  "sha256:58024c4a31045d2f6feedcfc43edbee4f3cab3dc87965890ca71e1ac2fe17845" [label="sha256:58024c4a31045d2f6feedcfc43edbee4f3cab3dc87965890ca71e1ac2fe17845" shape="plaintext"];
  "sha256:d1a6123fcd53665b5d5907d457138d252b04072dce5ddb398ce053b34a7cc614" -> "sha256:125f9ed679c034f099a624e9385f415161aaee94aa00b71d007bf2c119e948c6" [label=""];
  "sha256:125f9ed679c034f099a624e9385f415161aaee94aa00b71d007bf2c119e948c6" -> "sha256:72a07f8f290ad79c53889c78829dd5b8081bbc1e7e025f54bd423e1aa0af2fd1" [label=""];
  "sha256:aaa1bc749d2c21deb7f257db98c7ef7386b5aace7e2a7675cda114ead9637b2f" -> "sha256:72a07f8f290ad79c53889c78829dd5b8081bbc1e7e025f54bd423e1aa0af2fd1" [label=""];
  "sha256:72a07f8f290ad79c53889c78829dd5b8081bbc1e7e025f54bd423e1aa0af2fd1" -> "sha256:696591e51194f20eb268343eaec124ef662decadbb45354d8b3b5d81a09495e4" [label=""];
  "sha256:aaa1bc749d2c21deb7f257db98c7ef7386b5aace7e2a7675cda114ead9637b2f" -> "sha256:696591e51194f20eb268343eaec124ef662decadbb45354d8b3b5d81a09495e4" [label=""];
  "sha256:696591e51194f20eb268343eaec124ef662decadbb45354d8b3b5d81a09495e4" -> "sha256:01209eff8c3fc70730a2878954483a2ae5410036afd966aeba296ff70593afd0" [label=""];
  "sha256:aaa1bc749d2c21deb7f257db98c7ef7386b5aace7e2a7675cda114ead9637b2f" -> "sha256:01209eff8c3fc70730a2878954483a2ae5410036afd966aeba296ff70593afd0" [label=""];
  "sha256:01209eff8c3fc70730a2878954483a2ae5410036afd966aeba296ff70593afd0" -> "sha256:5b418ebd7e954aea4e85b99ddff8fe3151f8c6b31dbfafe7e2b498b7f32ec744" [label=""];
  "sha256:5b418ebd7e954aea4e85b99ddff8fe3151f8c6b31dbfafe7e2b498b7f32ec744" -> "sha256:58024c4a31045d2f6feedcfc43edbee4f3cab3dc87965890ca71e1ac2fe17845" [label=""];
}

