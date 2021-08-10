[app/sources/450546571.Dockerfile]
digraph {
  "sha256:fbfd8c8eaed1731fb7342e95d836f91496c8a3582dc09b834e7186b020e56e5b" [label="local://context" shape="ellipse"];
  "sha256:69a71ae2b9169e98caae67a1a2b50ac8f6a37f8b7dd432734def6dd5e56b30f0" [label="docker-image://docker.io/phusion/baseimage:0.10.1" shape="ellipse"];
  "sha256:2c55f89120c5f625d722c3d223d77db8062ba033a40361113877924b644ebfef" [label="/bin/sh -c apt-get update && apt-get -y -q install \tbuild-essential tcl8.5 wget awscli dnsutils && \tapt-get clean && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:1dfd222a94bba4bb0f0d7e91b61207ea1393791eaaaa127d78449be8f933ace9" [label="/bin/sh -c useradd redis" shape="box"];
  "sha256:8813e35a58513c39ca9e979fe54b4cb65c306fea72388b17b88594b50a373bfa" [label="/bin/sh -c mkdir -p $REDIS_LOG_DIR && \tmkdir -p $REDIS_DATA_DIR && \tmkdir -p $REDIS_PID_DIR && \tchown redis:redis $REDIS_DATA_DIR && \tchown redis:redis $REDIS_LOG_DIR && \tchown redis:redis $REDIS_PID_DIR" shape="box"];
  "sha256:57f5f5ebbf3634c0e9628154b4b2822af50e6c8987f616a219b004a328fb2ba6" [label="/bin/sh -c wget http://download.redis.io/releases/redis-%%REDIS_VERSION%%.tar.gz" shape="box"];
  "sha256:33064c8e49fdacf29774b08ead33a03a9e213edaf421de0630589fbbf9ff9efc" [label="/bin/sh -c tar -zxf redis-%%REDIS_VERSION%%.tar.gz" shape="box"];
  "sha256:e701bc1c4a40a7adf68cb9db41dcd5ccdbe40e726f29cba1ee51e586b788229a" [label="/bin/sh -c cd redis-%%REDIS_VERSION%% && \t/usr/bin/make && \t/usr/bin/make install && \techo echo -e \"6379\\n/etc/redis/redis.conf\\n${REDIS_LOG_DIR}/redis.log\\n${REDIS_DATA_DIR}/\\n/usr/local/bin/redis-server\\n\" | ./utils/install_server.sh && \tupdate-rc.d -f redis_6379 remove && \tcd .. && \trm -rf redis-%%REDIS_VERSION%%" shape="box"];
  "sha256:08f882c0afb783d224913b5d8b3e84a62d91534731988667e9ba6f3073d55c70" [label="/bin/sh -c sed -i 's/^daemonize yes/daemonize no/' /etc/redis/redis.conf \t&& sed -i 's/^bind 127.0.0.1/bind 0.0.0.0/' /etc/redis/redis.conf \t&& sed -i 's/^logfile \\/var\\/log\\/redis\\/redis.log/logfile \"\"/' /etc/redis/redis.conf" shape="box"];
  "sha256:356907a5f0f657c1a5947819e188268ff534fbd0b4e31f4f11cd40222560cbd1" [label="/bin/sh -c echo \"${REDIS_LOG_DIR}/*.log {\\n\\tweekly\\n\\trotate 2\\n\\tcopytruncate\\n\\tdelaycompress\\n\\tcompress\\n\\tnotifempty\\n\\tmissingok\\n\\tsu root root\\n}\" > /etc/logrotate.d/redis" shape="box"];
  "sha256:dd66f029f388ec7c53478aeb4a9cd0d90678c040e74d536086750db848e6453c" [label="/bin/sh -c mkdir /etc/service/redis" shape="box"];
  "sha256:27e91a05ea2507194e22253be3481ceab59e1eb942e1de0c1579a3edb49c7e21" [label="copy{src=/start_redis.sh, dest=/etc/service/redis/run}" shape="note"];
  "sha256:32c3775431e0a891cb927728eda21758507812d317c4e712ec351f8cc220df14" [label="copy{src=/backup.sh, dest=/backup.sh}" shape="note"];
  "sha256:57043166b07bc4720770e18def11916f80762117641d655454941cc0cc0bebe5" [label="copy{src=/enable_backups.sh, dest=/enable_backups.sh}" shape="note"];
  "sha256:1074ca768d10f949f46bd131bbe38de6836a2879f394122f7eb586c2375b4fe8" [label="sha256:1074ca768d10f949f46bd131bbe38de6836a2879f394122f7eb586c2375b4fe8" shape="plaintext"];
  "sha256:69a71ae2b9169e98caae67a1a2b50ac8f6a37f8b7dd432734def6dd5e56b30f0" -> "sha256:2c55f89120c5f625d722c3d223d77db8062ba033a40361113877924b644ebfef" [label=""];
  "sha256:2c55f89120c5f625d722c3d223d77db8062ba033a40361113877924b644ebfef" -> "sha256:1dfd222a94bba4bb0f0d7e91b61207ea1393791eaaaa127d78449be8f933ace9" [label=""];
  "sha256:1dfd222a94bba4bb0f0d7e91b61207ea1393791eaaaa127d78449be8f933ace9" -> "sha256:8813e35a58513c39ca9e979fe54b4cb65c306fea72388b17b88594b50a373bfa" [label=""];
  "sha256:8813e35a58513c39ca9e979fe54b4cb65c306fea72388b17b88594b50a373bfa" -> "sha256:57f5f5ebbf3634c0e9628154b4b2822af50e6c8987f616a219b004a328fb2ba6" [label=""];
  "sha256:57f5f5ebbf3634c0e9628154b4b2822af50e6c8987f616a219b004a328fb2ba6" -> "sha256:33064c8e49fdacf29774b08ead33a03a9e213edaf421de0630589fbbf9ff9efc" [label=""];
  "sha256:33064c8e49fdacf29774b08ead33a03a9e213edaf421de0630589fbbf9ff9efc" -> "sha256:e701bc1c4a40a7adf68cb9db41dcd5ccdbe40e726f29cba1ee51e586b788229a" [label=""];
  "sha256:e701bc1c4a40a7adf68cb9db41dcd5ccdbe40e726f29cba1ee51e586b788229a" -> "sha256:08f882c0afb783d224913b5d8b3e84a62d91534731988667e9ba6f3073d55c70" [label=""];
  "sha256:08f882c0afb783d224913b5d8b3e84a62d91534731988667e9ba6f3073d55c70" -> "sha256:356907a5f0f657c1a5947819e188268ff534fbd0b4e31f4f11cd40222560cbd1" [label=""];
  "sha256:356907a5f0f657c1a5947819e188268ff534fbd0b4e31f4f11cd40222560cbd1" -> "sha256:dd66f029f388ec7c53478aeb4a9cd0d90678c040e74d536086750db848e6453c" [label=""];
  "sha256:dd66f029f388ec7c53478aeb4a9cd0d90678c040e74d536086750db848e6453c" -> "sha256:27e91a05ea2507194e22253be3481ceab59e1eb942e1de0c1579a3edb49c7e21" [label=""];
  "sha256:fbfd8c8eaed1731fb7342e95d836f91496c8a3582dc09b834e7186b020e56e5b" -> "sha256:27e91a05ea2507194e22253be3481ceab59e1eb942e1de0c1579a3edb49c7e21" [label=""];
  "sha256:27e91a05ea2507194e22253be3481ceab59e1eb942e1de0c1579a3edb49c7e21" -> "sha256:32c3775431e0a891cb927728eda21758507812d317c4e712ec351f8cc220df14" [label=""];
  "sha256:fbfd8c8eaed1731fb7342e95d836f91496c8a3582dc09b834e7186b020e56e5b" -> "sha256:32c3775431e0a891cb927728eda21758507812d317c4e712ec351f8cc220df14" [label=""];
  "sha256:32c3775431e0a891cb927728eda21758507812d317c4e712ec351f8cc220df14" -> "sha256:57043166b07bc4720770e18def11916f80762117641d655454941cc0cc0bebe5" [label=""];
  "sha256:fbfd8c8eaed1731fb7342e95d836f91496c8a3582dc09b834e7186b020e56e5b" -> "sha256:57043166b07bc4720770e18def11916f80762117641d655454941cc0cc0bebe5" [label=""];
  "sha256:57043166b07bc4720770e18def11916f80762117641d655454941cc0cc0bebe5" -> "sha256:1074ca768d10f949f46bd131bbe38de6836a2879f394122f7eb586c2375b4fe8" [label=""];
}

