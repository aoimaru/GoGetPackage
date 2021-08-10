[app/sources/282717731.Dockerfile]
digraph {
  "sha256:1aa1d1d5f1faa63c936cba144597fbf511fa41b32a41dfb21452b2bc27b11e47" [label="docker-image://docker.io/phusion/baseimage:0.9.22" shape="ellipse"];
  "sha256:dcecf3a5f75a5949f837168510ef46f777f84d59f6c0a2f84d4dedafefebe221" [label="/bin/sh -c apt-get update -y && apt-get install -y tmux nginx python3 python3-pip python3-dev postgresql-9.5 postgresql-client-9.5                        postgresql-contrib-9.5 libssl-dev build-essential gfortran libatlas-base-dev liblapacke-dev redis-server" shape="box"];
  "sha256:e3f6ea6cce4a8a82f7cbed1659a767531018c938e3fed1deb6630b2f967dcb39" [label="/bin/sh -c pip3 install flask uwsgi uwsgitop psycopg2 ujson Pyro4 flask_sslify peewee flask_mail applicationinsights                  voluptuous requests tweepy newspaper3k PyJWT Flask-Environ python-jose flask-cors iso8601 tqdm                  flask-socketio gevent gevent-websocket sklearn numpy Cython scipy gensim keras tensorflow" shape="box"];
  "sha256:71282074dfd1b673441d64db9ac43b2ddc46e1e8b2095f42d5c919310ccd15bf" [label="/bin/sh -c pip3 install libact" shape="box"];
  "sha256:153bf497836f3b50dba75b34eb4f498df3cd9c023d7a47c38340ab6f36c48c31" [label="/bin/sh -c pip3 install elasticsearch xmltodict boto3 celery redis" shape="box"];
  "sha256:1c2c96b70771c9c0863fd8a06832f1c7c1301ea52dcdbcbabf8b06084179619f" [label="/bin/sh -c pip3 install h5py" shape="box"];
  "sha256:6c237a1d979edc1dc2c1da4432adc6588686ec241cd81e589c19a34703f3be24" [label="/bin/sh -c ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone" shape="box"];
  "sha256:04db566448a8ef6f71a0f18f3b1b258d5b6eef906dcb70a89aa2de5cef237f79" [label="local://context" shape="ellipse"];
  "sha256:55886355acd41bb9d64e1d11e6104cc1cc1fd7f62480ddb9e61ed6761cb38c5e" [label="copy{src=/, dest=/src}" shape="note"];
  "sha256:c99b1b3d711c65ec261117707231a19d723603772cf77796555080337249d84e" [label="/bin/sh -c mkdir /src/data" shape="box"];
  "sha256:2c387f4a524bf468e2e0d87c50d06df9ce1b3dc9210188b077e901aadbb7940d" [label="/bin/sh -c mkdir /etc/service/uwsgi" shape="box"];
  "sha256:0dcd9c3c1c5076d73fee795ff698b048bfc94f47e229fb2e3e1b7a69c3b4f2fd" [label="copy{src=/api/docker_uwsgi.sh, dest=/etc/service/uwsgi/run}" shape="note"];
  "sha256:137615db2fcaab899d2bd0f083297c9185430f0339ede716f6590e6b9fff39ba" [label="/bin/sh -c chmod +x /etc/service/uwsgi/run" shape="box"];
  "sha256:d2428bfb1107dc7377d4c9bd1891683e50eebe3cd295dc92e0db35f8c47a9233" [label="/bin/sh -c mkdir /etc/service/nginx" shape="box"];
  "sha256:a8af8291c4b3ed29d42eb5162f2cc0e2d3966425871d0c112ea65d89ade043cd" [label="copy{src=/api/docker_nginx.sh, dest=/etc/service/nginx/run}" shape="note"];
  "sha256:a5aae8c42f88b6a135254a85057f27e6bd7707b0fc4b3b2d6c0c68dbd54d02f3" [label="/bin/sh -c chmod +x /etc/service/nginx/run" shape="box"];
  "sha256:e0d9f0f2ca27202ec9d352bfb79fc4d0cdfdd46fcbb9e2e69b420c227e434961" [label="/bin/sh -c mkdir /var/log/uwsgi" shape="box"];
  "sha256:bdbe5741a26545f7176c573ce8113267a72273ee1212bd115415479624735e37" [label="copy{src=/api/docker_nginx.conf, dest=/etc/nginx/nginx.conf}" shape="note"];
  "sha256:4cef0a2f8fdfc50457c4ac701f4a099e3067d00889542b356878d303b1e41e92" [label="copy{src=/api/docker_nginx_site.conf, dest=/etc/nginx/sites-available/default}" shape="note"];
  "sha256:455e87fe133a65fc2caf0a9be9a0308a2751e1c7f8d16b875ada3f6d37dfa72f" [label="sha256:455e87fe133a65fc2caf0a9be9a0308a2751e1c7f8d16b875ada3f6d37dfa72f" shape="plaintext"];
  "sha256:1aa1d1d5f1faa63c936cba144597fbf511fa41b32a41dfb21452b2bc27b11e47" -> "sha256:dcecf3a5f75a5949f837168510ef46f777f84d59f6c0a2f84d4dedafefebe221" [label=""];
  "sha256:dcecf3a5f75a5949f837168510ef46f777f84d59f6c0a2f84d4dedafefebe221" -> "sha256:e3f6ea6cce4a8a82f7cbed1659a767531018c938e3fed1deb6630b2f967dcb39" [label=""];
  "sha256:e3f6ea6cce4a8a82f7cbed1659a767531018c938e3fed1deb6630b2f967dcb39" -> "sha256:71282074dfd1b673441d64db9ac43b2ddc46e1e8b2095f42d5c919310ccd15bf" [label=""];
  "sha256:71282074dfd1b673441d64db9ac43b2ddc46e1e8b2095f42d5c919310ccd15bf" -> "sha256:153bf497836f3b50dba75b34eb4f498df3cd9c023d7a47c38340ab6f36c48c31" [label=""];
  "sha256:153bf497836f3b50dba75b34eb4f498df3cd9c023d7a47c38340ab6f36c48c31" -> "sha256:1c2c96b70771c9c0863fd8a06832f1c7c1301ea52dcdbcbabf8b06084179619f" [label=""];
  "sha256:1c2c96b70771c9c0863fd8a06832f1c7c1301ea52dcdbcbabf8b06084179619f" -> "sha256:6c237a1d979edc1dc2c1da4432adc6588686ec241cd81e589c19a34703f3be24" [label=""];
  "sha256:6c237a1d979edc1dc2c1da4432adc6588686ec241cd81e589c19a34703f3be24" -> "sha256:55886355acd41bb9d64e1d11e6104cc1cc1fd7f62480ddb9e61ed6761cb38c5e" [label=""];
  "sha256:04db566448a8ef6f71a0f18f3b1b258d5b6eef906dcb70a89aa2de5cef237f79" -> "sha256:55886355acd41bb9d64e1d11e6104cc1cc1fd7f62480ddb9e61ed6761cb38c5e" [label=""];
  "sha256:55886355acd41bb9d64e1d11e6104cc1cc1fd7f62480ddb9e61ed6761cb38c5e" -> "sha256:c99b1b3d711c65ec261117707231a19d723603772cf77796555080337249d84e" [label=""];
  "sha256:c99b1b3d711c65ec261117707231a19d723603772cf77796555080337249d84e" -> "sha256:2c387f4a524bf468e2e0d87c50d06df9ce1b3dc9210188b077e901aadbb7940d" [label=""];
  "sha256:2c387f4a524bf468e2e0d87c50d06df9ce1b3dc9210188b077e901aadbb7940d" -> "sha256:0dcd9c3c1c5076d73fee795ff698b048bfc94f47e229fb2e3e1b7a69c3b4f2fd" [label=""];
  "sha256:04db566448a8ef6f71a0f18f3b1b258d5b6eef906dcb70a89aa2de5cef237f79" -> "sha256:0dcd9c3c1c5076d73fee795ff698b048bfc94f47e229fb2e3e1b7a69c3b4f2fd" [label=""];
  "sha256:0dcd9c3c1c5076d73fee795ff698b048bfc94f47e229fb2e3e1b7a69c3b4f2fd" -> "sha256:137615db2fcaab899d2bd0f083297c9185430f0339ede716f6590e6b9fff39ba" [label=""];
  "sha256:137615db2fcaab899d2bd0f083297c9185430f0339ede716f6590e6b9fff39ba" -> "sha256:d2428bfb1107dc7377d4c9bd1891683e50eebe3cd295dc92e0db35f8c47a9233" [label=""];
  "sha256:d2428bfb1107dc7377d4c9bd1891683e50eebe3cd295dc92e0db35f8c47a9233" -> "sha256:a8af8291c4b3ed29d42eb5162f2cc0e2d3966425871d0c112ea65d89ade043cd" [label=""];
  "sha256:04db566448a8ef6f71a0f18f3b1b258d5b6eef906dcb70a89aa2de5cef237f79" -> "sha256:a8af8291c4b3ed29d42eb5162f2cc0e2d3966425871d0c112ea65d89ade043cd" [label=""];
  "sha256:a8af8291c4b3ed29d42eb5162f2cc0e2d3966425871d0c112ea65d89ade043cd" -> "sha256:a5aae8c42f88b6a135254a85057f27e6bd7707b0fc4b3b2d6c0c68dbd54d02f3" [label=""];
  "sha256:a5aae8c42f88b6a135254a85057f27e6bd7707b0fc4b3b2d6c0c68dbd54d02f3" -> "sha256:e0d9f0f2ca27202ec9d352bfb79fc4d0cdfdd46fcbb9e2e69b420c227e434961" [label=""];
  "sha256:e0d9f0f2ca27202ec9d352bfb79fc4d0cdfdd46fcbb9e2e69b420c227e434961" -> "sha256:bdbe5741a26545f7176c573ce8113267a72273ee1212bd115415479624735e37" [label=""];
  "sha256:04db566448a8ef6f71a0f18f3b1b258d5b6eef906dcb70a89aa2de5cef237f79" -> "sha256:bdbe5741a26545f7176c573ce8113267a72273ee1212bd115415479624735e37" [label=""];
  "sha256:bdbe5741a26545f7176c573ce8113267a72273ee1212bd115415479624735e37" -> "sha256:4cef0a2f8fdfc50457c4ac701f4a099e3067d00889542b356878d303b1e41e92" [label=""];
  "sha256:04db566448a8ef6f71a0f18f3b1b258d5b6eef906dcb70a89aa2de5cef237f79" -> "sha256:4cef0a2f8fdfc50457c4ac701f4a099e3067d00889542b356878d303b1e41e92" [label=""];
  "sha256:4cef0a2f8fdfc50457c4ac701f4a099e3067d00889542b356878d303b1e41e92" -> "sha256:455e87fe133a65fc2caf0a9be9a0308a2751e1c7f8d16b875ada3f6d37dfa72f" [label=""];
}

