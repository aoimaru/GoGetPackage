[app/sources/379419803.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:dbf7ec026375aa48eb7777d358ab9817a224ed401ae37d44d2b69323b19ee3d6" [label="/bin/sh -c DEBIAN_FRONTEND=noninteractive apt-get update --fix-missing && apt-get install -y build-essential git python python-dev python-setuptools nginx supervisor bcrypt libssl-dev libffi-dev libpq-dev vim rsyslog wget libjpeg-dev libpng-dev" shape="box"];
  "sha256:dc5791e8e6aa32321be668aaf9b79d00ecb888065e0292dd768c4bfe0854fe91" [label="/bin/sh -c easy_install pip" shape="box"];
  "sha256:690626c4ab95663feed7fb6dfab63c2dfdfa137dc9f7e35c4e1b445027b266cf" [label="/bin/sh -c service supervisor stop" shape="box"];
  "sha256:ce9cf649589f1575df50d454789c85811d1059807491a0e9d39ff075ec38393c" [label="/bin/sh -c mkdir /var/log/gunicorn && mkdir /var/log/deploys" shape="box"];
  "sha256:956d6439eb54c5d6f7495b4158b0d247b9d63f63172caa9734c036748d8f699f" [label="/bin/sh -c echo \"daemon off;\" >> /etc/nginx/nginx.conf" shape="box"];
  "sha256:d555246a7249fb394aaa7f78d69694c9cfe8227d5486d7c6b82c4cef35aac934" [label="/bin/sh -c rm /etc/nginx/sites-enabled/default" shape="box"];
  "sha256:90278744b50e6c8f47cd9b413b475793f6946b224cb3948e04c454fa77fdb780" [label="/bin/sh -c mkdir /opt/code" shape="box"];
  "sha256:825535675164917f2597871001bb581b77c1a9eac929fe2360695aab99c83550" [label="/bin/sh -c wget -O ./remote_syslog.tar.gz https://github.com/papertrail/remote_syslog2/releases/download/v0.17/remote_syslog_linux_amd64.tar.gz && tar xzf ./remote_syslog.tar.gz && cp ./remote_syslog/remote_syslog /usr/bin/remote_syslog && rm ./remote_syslog.tar.gz && rm -rf ./remote_syslog/" shape="box"];
  "sha256:eca22e07b1ae877fafc71068de1c1ae05935b6830ddefae6c06d65a251d150f0" [label="local://context" shape="ellipse"];
  "sha256:01cc82095527066932adf952e81edb73a5090ebf99fa21f6963933ee05c10330" [label="copy{src=/files/requirements.txt, dest=/opt/code/}" shape="note"];
  "sha256:545af3175710e7114d0803de91335eecf314413d9dbc34a2dea16c4dda41bff9" [label="/bin/sh -c pip install -r /opt/code/requirements.txt" shape="box"];
  "sha256:a9896ba223e5ddc62a8111ec89c1ffd7b33ecdf437cefeff4ba0e3e9f9fa9146" [label="mkdir{path=/opt/code}" shape="note"];
  "sha256:58e2927358b8438b6c933f2d545801246ac181fcd3cb15279991c116e450eb9e" [label="sha256:58e2927358b8438b6c933f2d545801246ac181fcd3cb15279991c116e450eb9e" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:dbf7ec026375aa48eb7777d358ab9817a224ed401ae37d44d2b69323b19ee3d6" [label=""];
  "sha256:dbf7ec026375aa48eb7777d358ab9817a224ed401ae37d44d2b69323b19ee3d6" -> "sha256:dc5791e8e6aa32321be668aaf9b79d00ecb888065e0292dd768c4bfe0854fe91" [label=""];
  "sha256:dc5791e8e6aa32321be668aaf9b79d00ecb888065e0292dd768c4bfe0854fe91" -> "sha256:690626c4ab95663feed7fb6dfab63c2dfdfa137dc9f7e35c4e1b445027b266cf" [label=""];
  "sha256:690626c4ab95663feed7fb6dfab63c2dfdfa137dc9f7e35c4e1b445027b266cf" -> "sha256:ce9cf649589f1575df50d454789c85811d1059807491a0e9d39ff075ec38393c" [label=""];
  "sha256:ce9cf649589f1575df50d454789c85811d1059807491a0e9d39ff075ec38393c" -> "sha256:956d6439eb54c5d6f7495b4158b0d247b9d63f63172caa9734c036748d8f699f" [label=""];
  "sha256:956d6439eb54c5d6f7495b4158b0d247b9d63f63172caa9734c036748d8f699f" -> "sha256:d555246a7249fb394aaa7f78d69694c9cfe8227d5486d7c6b82c4cef35aac934" [label=""];
  "sha256:d555246a7249fb394aaa7f78d69694c9cfe8227d5486d7c6b82c4cef35aac934" -> "sha256:90278744b50e6c8f47cd9b413b475793f6946b224cb3948e04c454fa77fdb780" [label=""];
  "sha256:90278744b50e6c8f47cd9b413b475793f6946b224cb3948e04c454fa77fdb780" -> "sha256:825535675164917f2597871001bb581b77c1a9eac929fe2360695aab99c83550" [label=""];
  "sha256:825535675164917f2597871001bb581b77c1a9eac929fe2360695aab99c83550" -> "sha256:01cc82095527066932adf952e81edb73a5090ebf99fa21f6963933ee05c10330" [label=""];
  "sha256:eca22e07b1ae877fafc71068de1c1ae05935b6830ddefae6c06d65a251d150f0" -> "sha256:01cc82095527066932adf952e81edb73a5090ebf99fa21f6963933ee05c10330" [label=""];
  "sha256:01cc82095527066932adf952e81edb73a5090ebf99fa21f6963933ee05c10330" -> "sha256:545af3175710e7114d0803de91335eecf314413d9dbc34a2dea16c4dda41bff9" [label=""];
  "sha256:545af3175710e7114d0803de91335eecf314413d9dbc34a2dea16c4dda41bff9" -> "sha256:a9896ba223e5ddc62a8111ec89c1ffd7b33ecdf437cefeff4ba0e3e9f9fa9146" [label=""];
  "sha256:a9896ba223e5ddc62a8111ec89c1ffd7b33ecdf437cefeff4ba0e3e9f9fa9146" -> "sha256:58e2927358b8438b6c933f2d545801246ac181fcd3cb15279991c116e450eb9e" [label=""];
}

