[app/sources/367310263.Dockerfile]
digraph {
  "sha256:3b045a3433d07237f0d5944627b25d8c2fbbc35f7349db65f371272df4d829a0" [label="local://context" shape="ellipse"];
  "sha256:a2126d6aa7c2b71875176a087e75c027062a111f190581b308a711a6f2dcade8" [label="docker-image://docker.io/library/python:3.4-slim" shape="ellipse"];
  "sha256:a1e94fcdab812fd83b56848c330842a81a52254cb83491a272311682db636ddc" [label="/bin/sh -c apt-get update && apt-get install -y     gcc     gettext     mysql-client libmysqlclient-dev     postgresql-client libpq-dev     sqlite3         bzip2     fontconfig     libfreetype6-dev     nodejs npm       --no-install-recommends && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:a9932e6182fd883a9273df87e2cda8b6134af262d003e447ce8453be88e9ba23" [label="/bin/sh -c pip install mysqlclient psycopg2 django==\"$DJANGO_VERSION\"" shape="box"];
  "sha256:2eb7f0f58564f610dac9dc8cab249dca806aa1b0efa7fc15630547bed77cfdf5" [label="/bin/sh -c mkdir -p /usr/src/app" shape="box"];
  "sha256:7ce1c50bb09c4aa04de8a317c2cab8c86c9bddc6cb74cf4fa4574876c1f33a0c" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:dbb2a5a9bf79903b43bb7f2a61d3f6a0f7fa973cb7b421aef3ded4d02f076756" [label="copy{src=/requirements, dest=/usr/src/app/requirements}" shape="note"];
  "sha256:cedbc197e51ff65b6819826677e90c4c61078695f2b9ca76787d917ca511e4d9" [label="/bin/sh -c pip install --no-cache-dir -r requirements/dev.txt" shape="box"];
  "sha256:910589ea5845c9a4b7df90f758f64c3aa1bc674c45b45fd5b2442c07f1872599" [label="copy{src=/, dest=/usr/src/app}" shape="note"];
  "sha256:4974cfff680243d79bf127b178c0600c0aa042b2bf52b58698be81f494dd647e" [label="/bin/sh -c ln -s /usr/bin/nodejs /usr/bin/node &&     npm install &&     npm install -g grunt-cli &&     grunt build" shape="box"];
  "sha256:673aac7c8e28da09bc11c64a05bfeab021d6c71082a4e23773a0b6f3f9292e9c" [label="/bin/sh -c python manage.py migrate" shape="box"];
  "sha256:1ed11b70df1ea269b6b48d0a9e34f4d480b72ec469bae0ec74c6a835da78ed86" [label="sha256:1ed11b70df1ea269b6b48d0a9e34f4d480b72ec469bae0ec74c6a835da78ed86" shape="plaintext"];
  "sha256:a2126d6aa7c2b71875176a087e75c027062a111f190581b308a711a6f2dcade8" -> "sha256:a1e94fcdab812fd83b56848c330842a81a52254cb83491a272311682db636ddc" [label=""];
  "sha256:a1e94fcdab812fd83b56848c330842a81a52254cb83491a272311682db636ddc" -> "sha256:a9932e6182fd883a9273df87e2cda8b6134af262d003e447ce8453be88e9ba23" [label=""];
  "sha256:a9932e6182fd883a9273df87e2cda8b6134af262d003e447ce8453be88e9ba23" -> "sha256:2eb7f0f58564f610dac9dc8cab249dca806aa1b0efa7fc15630547bed77cfdf5" [label=""];
  "sha256:2eb7f0f58564f610dac9dc8cab249dca806aa1b0efa7fc15630547bed77cfdf5" -> "sha256:7ce1c50bb09c4aa04de8a317c2cab8c86c9bddc6cb74cf4fa4574876c1f33a0c" [label=""];
  "sha256:7ce1c50bb09c4aa04de8a317c2cab8c86c9bddc6cb74cf4fa4574876c1f33a0c" -> "sha256:dbb2a5a9bf79903b43bb7f2a61d3f6a0f7fa973cb7b421aef3ded4d02f076756" [label=""];
  "sha256:3b045a3433d07237f0d5944627b25d8c2fbbc35f7349db65f371272df4d829a0" -> "sha256:dbb2a5a9bf79903b43bb7f2a61d3f6a0f7fa973cb7b421aef3ded4d02f076756" [label=""];
  "sha256:dbb2a5a9bf79903b43bb7f2a61d3f6a0f7fa973cb7b421aef3ded4d02f076756" -> "sha256:cedbc197e51ff65b6819826677e90c4c61078695f2b9ca76787d917ca511e4d9" [label=""];
  "sha256:cedbc197e51ff65b6819826677e90c4c61078695f2b9ca76787d917ca511e4d9" -> "sha256:910589ea5845c9a4b7df90f758f64c3aa1bc674c45b45fd5b2442c07f1872599" [label=""];
  "sha256:3b045a3433d07237f0d5944627b25d8c2fbbc35f7349db65f371272df4d829a0" -> "sha256:910589ea5845c9a4b7df90f758f64c3aa1bc674c45b45fd5b2442c07f1872599" [label=""];
  "sha256:910589ea5845c9a4b7df90f758f64c3aa1bc674c45b45fd5b2442c07f1872599" -> "sha256:4974cfff680243d79bf127b178c0600c0aa042b2bf52b58698be81f494dd647e" [label=""];
  "sha256:4974cfff680243d79bf127b178c0600c0aa042b2bf52b58698be81f494dd647e" -> "sha256:673aac7c8e28da09bc11c64a05bfeab021d6c71082a4e23773a0b6f3f9292e9c" [label=""];
  "sha256:673aac7c8e28da09bc11c64a05bfeab021d6c71082a4e23773a0b6f3f9292e9c" -> "sha256:1ed11b70df1ea269b6b48d0a9e34f4d480b72ec469bae0ec74c6a835da78ed86" [label=""];
}

