[app/sources/216008844.Dockerfile]
digraph {
  "sha256:2a761aa889199c5dda51f08ca7d22331e1aec2bd65270cac91e39c01d2d98a2f" [label="local://context" shape="ellipse"];
  "sha256:f6b3222c6092a9e9791a834cacf1e7fba1de6483c8bee590b6c32929db42c37d" [label="docker-image://docker.io/library/openjdk:8-jdk" shape="ellipse"];
  "sha256:08cd210ea00b8b395fd878d9697a284757c07de4866f556cb374deb1762317a1" [label="docker-image://docker.io/apachepulsar/pulsar-all:latest" shape="ellipse"];
  "sha256:eb61fb45a221d3434a2b5965c38a35c9dbb162005f452b481741b23e97da23f4" [label="copy{src=/pulsar, dest=/pulsar}" shape="note"];
  "sha256:967594b9d120e25053903f0268946bf0fcbd73a7e2192bc79c4d2e0f36a9a0f6" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:52749645291b04cd9b39f8e3600fe6e06aa0ae727287441901ac792df9af43a4" [label="/bin/sh -c apt-get -y install python2.7 python-pip postgresql-9.6 sudo nginx supervisor" shape="box"];
  "sha256:f57b9d51810c1f82aab6c7bba8a95f418f093f33f4bcb26c2e29a57d42d09e50" [label="/bin/sh -c pip2 -qq install uwsgi 'Django<2.0' 'psycopg2==2.7.7' pytz requests" shape="box"];
  "sha256:8ce3573ef6dcacaf85a3183ad8e14f597e08488063877602e490f4f00983ca03" [label="copy{src=/conf/postgresql.conf, dest=/etc/postgresql/9.6/main/}" shape="note"];
  "sha256:a12513d17778c812ef83523175ee1442d0fef874c34d96152bb9ec099909ced0" [label="/bin/sh -c echo \"daemon off;\" >> /etc/nginx/nginx.conf" shape="box"];
  "sha256:d7d91dba36865fb5fd57f7cba90ecb027b078becb8a025cbf71fab829fdc48fc" [label="copy{src=/conf/nginx-app.conf, dest=/etc/nginx/sites-available/default}" shape="note"];
  "sha256:3ab56b45432ede4ed8f26058da67201e7c4f1df40c6df76e0eee1d89c3787251" [label="copy{src=/conf/supervisor-app.conf, dest=/etc/supervisor/conf.d/}" shape="note"];
  "sha256:231845d9781a34ef7def7feb97abf64c9b41e11fda77665aefdef2a69ca1bb3b" [label="copy{src=/, dest=/pulsar/}" shape="note"];
  "sha256:1bab3a6600c42443b502dc31e06cf36dc067691ca2ae5dc9464a6224252e31fc" [label="/bin/sh -c sudo -u postgres /etc/init.d/postgresql start &&     sudo -u postgres psql --command \"CREATE USER docker WITH PASSWORD 'docker';\" &&     sudo -u postgres createdb -O docker pulsar_dashboard &&     cd /pulsar/django &&     ./manage.py migrate &&     sudo -u postgres /etc/init.d/postgresql stop" shape="box"];
  "sha256:568705e9ca44115a0b51dee8acc48afd3e35124f56e71c1c036deb6ee2d92e56" [label="/bin/sh -c cd /pulsar/django && ./manage.py collectstatic --no-input" shape="box"];
  "sha256:8a0d3bc78ad375db3ffda0f27b5696ad1158e945b82eb56884eb3ff19a8c8984" [label="sha256:8a0d3bc78ad375db3ffda0f27b5696ad1158e945b82eb56884eb3ff19a8c8984" shape="plaintext"];
  "sha256:f6b3222c6092a9e9791a834cacf1e7fba1de6483c8bee590b6c32929db42c37d" -> "sha256:eb61fb45a221d3434a2b5965c38a35c9dbb162005f452b481741b23e97da23f4" [label=""];
  "sha256:08cd210ea00b8b395fd878d9697a284757c07de4866f556cb374deb1762317a1" -> "sha256:eb61fb45a221d3434a2b5965c38a35c9dbb162005f452b481741b23e97da23f4" [label=""];
  "sha256:eb61fb45a221d3434a2b5965c38a35c9dbb162005f452b481741b23e97da23f4" -> "sha256:967594b9d120e25053903f0268946bf0fcbd73a7e2192bc79c4d2e0f36a9a0f6" [label=""];
  "sha256:967594b9d120e25053903f0268946bf0fcbd73a7e2192bc79c4d2e0f36a9a0f6" -> "sha256:52749645291b04cd9b39f8e3600fe6e06aa0ae727287441901ac792df9af43a4" [label=""];
  "sha256:52749645291b04cd9b39f8e3600fe6e06aa0ae727287441901ac792df9af43a4" -> "sha256:f57b9d51810c1f82aab6c7bba8a95f418f093f33f4bcb26c2e29a57d42d09e50" [label=""];
  "sha256:f57b9d51810c1f82aab6c7bba8a95f418f093f33f4bcb26c2e29a57d42d09e50" -> "sha256:8ce3573ef6dcacaf85a3183ad8e14f597e08488063877602e490f4f00983ca03" [label=""];
  "sha256:2a761aa889199c5dda51f08ca7d22331e1aec2bd65270cac91e39c01d2d98a2f" -> "sha256:8ce3573ef6dcacaf85a3183ad8e14f597e08488063877602e490f4f00983ca03" [label=""];
  "sha256:8ce3573ef6dcacaf85a3183ad8e14f597e08488063877602e490f4f00983ca03" -> "sha256:a12513d17778c812ef83523175ee1442d0fef874c34d96152bb9ec099909ced0" [label=""];
  "sha256:a12513d17778c812ef83523175ee1442d0fef874c34d96152bb9ec099909ced0" -> "sha256:d7d91dba36865fb5fd57f7cba90ecb027b078becb8a025cbf71fab829fdc48fc" [label=""];
  "sha256:2a761aa889199c5dda51f08ca7d22331e1aec2bd65270cac91e39c01d2d98a2f" -> "sha256:d7d91dba36865fb5fd57f7cba90ecb027b078becb8a025cbf71fab829fdc48fc" [label=""];
  "sha256:d7d91dba36865fb5fd57f7cba90ecb027b078becb8a025cbf71fab829fdc48fc" -> "sha256:3ab56b45432ede4ed8f26058da67201e7c4f1df40c6df76e0eee1d89c3787251" [label=""];
  "sha256:2a761aa889199c5dda51f08ca7d22331e1aec2bd65270cac91e39c01d2d98a2f" -> "sha256:3ab56b45432ede4ed8f26058da67201e7c4f1df40c6df76e0eee1d89c3787251" [label=""];
  "sha256:3ab56b45432ede4ed8f26058da67201e7c4f1df40c6df76e0eee1d89c3787251" -> "sha256:231845d9781a34ef7def7feb97abf64c9b41e11fda77665aefdef2a69ca1bb3b" [label=""];
  "sha256:2a761aa889199c5dda51f08ca7d22331e1aec2bd65270cac91e39c01d2d98a2f" -> "sha256:231845d9781a34ef7def7feb97abf64c9b41e11fda77665aefdef2a69ca1bb3b" [label=""];
  "sha256:231845d9781a34ef7def7feb97abf64c9b41e11fda77665aefdef2a69ca1bb3b" -> "sha256:1bab3a6600c42443b502dc31e06cf36dc067691ca2ae5dc9464a6224252e31fc" [label=""];
  "sha256:1bab3a6600c42443b502dc31e06cf36dc067691ca2ae5dc9464a6224252e31fc" -> "sha256:568705e9ca44115a0b51dee8acc48afd3e35124f56e71c1c036deb6ee2d92e56" [label=""];
  "sha256:568705e9ca44115a0b51dee8acc48afd3e35124f56e71c1c036deb6ee2d92e56" -> "sha256:8a0d3bc78ad375db3ffda0f27b5696ad1158e945b82eb56884eb3ff19a8c8984" [label=""];
}

