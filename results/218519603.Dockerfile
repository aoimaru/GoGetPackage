[app/sources/218519603.Dockerfile]
digraph {
  "sha256:9fddeb6a37ae3f9e58732031f69da19b7b4ddb153bf57c3a466947c07785129d" [label="docker-image://docker.io/supermy/cloud-cdh5:snappy" shape="ellipse"];
  "sha256:cde90446a9db18fe330647a6aed72204ee87e4d4309874be951f61d688cd7568" [label="local://context" shape="ellipse"];
  "sha256:7c3b673b130f54c163693ab38cb20451bda44667c9b2e7eecc14ef86b7b91125" [label="copy{src=/hadoop-env.sh, dest=/etc/hadoop/conf/hadoop-env.sh}" shape="note"];
  "sha256:bcc6dab5f1dc5aef6567cdad92f8fb84452c7a60b8e5044e7a741a3868ab2be3" [label="copy{src=/core-site.xml.template, dest=/etc/hadoop/conf/core-site.xml.template}" shape="note"];
  "sha256:31418e79c66f4900987d66cf88466782530b870b095012acd6cdad61e96870ef" [label="copy{src=/hdfs-site.xml, dest=/etc/hadoop/conf/hdfs-site.xml}" shape="note"];
  "sha256:4b09a2bb4df888a7599a0c225b79bf357b70e804435800879a509319a1e87775" [label="copy{src=/supervisord.conf, dest=/etc/supervisor/conf.d/supervisord.conf}" shape="note"];
  "sha256:41ea97b833c7da095afd3ab33a41cda003cb529a0a3df527c39663668035a6d4" [label="copy{src=/pre-start-hadoop.sh, dest=/home/jamesmo/pre-start-hadoop.sh}" shape="note"];
  "sha256:7c2c847626e2b04e3230fcb22166feb909cd687d584d0c38b7eedc32065ef5d4" [label="/bin/sh -c chmod a+x /home/jamesmo/pre-start-hadoop.sh" shape="box"];
  "sha256:8ed5ba34946e572eaa1a5fb5d04a40ee6f43aa042e86ff8316f41a58c5a3c899" [label="sha256:8ed5ba34946e572eaa1a5fb5d04a40ee6f43aa042e86ff8316f41a58c5a3c899" shape="plaintext"];
  "sha256:9fddeb6a37ae3f9e58732031f69da19b7b4ddb153bf57c3a466947c07785129d" -> "sha256:7c3b673b130f54c163693ab38cb20451bda44667c9b2e7eecc14ef86b7b91125" [label=""];
  "sha256:cde90446a9db18fe330647a6aed72204ee87e4d4309874be951f61d688cd7568" -> "sha256:7c3b673b130f54c163693ab38cb20451bda44667c9b2e7eecc14ef86b7b91125" [label=""];
  "sha256:7c3b673b130f54c163693ab38cb20451bda44667c9b2e7eecc14ef86b7b91125" -> "sha256:bcc6dab5f1dc5aef6567cdad92f8fb84452c7a60b8e5044e7a741a3868ab2be3" [label=""];
  "sha256:cde90446a9db18fe330647a6aed72204ee87e4d4309874be951f61d688cd7568" -> "sha256:bcc6dab5f1dc5aef6567cdad92f8fb84452c7a60b8e5044e7a741a3868ab2be3" [label=""];
  "sha256:bcc6dab5f1dc5aef6567cdad92f8fb84452c7a60b8e5044e7a741a3868ab2be3" -> "sha256:31418e79c66f4900987d66cf88466782530b870b095012acd6cdad61e96870ef" [label=""];
  "sha256:cde90446a9db18fe330647a6aed72204ee87e4d4309874be951f61d688cd7568" -> "sha256:31418e79c66f4900987d66cf88466782530b870b095012acd6cdad61e96870ef" [label=""];
  "sha256:31418e79c66f4900987d66cf88466782530b870b095012acd6cdad61e96870ef" -> "sha256:4b09a2bb4df888a7599a0c225b79bf357b70e804435800879a509319a1e87775" [label=""];
  "sha256:cde90446a9db18fe330647a6aed72204ee87e4d4309874be951f61d688cd7568" -> "sha256:4b09a2bb4df888a7599a0c225b79bf357b70e804435800879a509319a1e87775" [label=""];
  "sha256:4b09a2bb4df888a7599a0c225b79bf357b70e804435800879a509319a1e87775" -> "sha256:41ea97b833c7da095afd3ab33a41cda003cb529a0a3df527c39663668035a6d4" [label=""];
  "sha256:cde90446a9db18fe330647a6aed72204ee87e4d4309874be951f61d688cd7568" -> "sha256:41ea97b833c7da095afd3ab33a41cda003cb529a0a3df527c39663668035a6d4" [label=""];
  "sha256:41ea97b833c7da095afd3ab33a41cda003cb529a0a3df527c39663668035a6d4" -> "sha256:7c2c847626e2b04e3230fcb22166feb909cd687d584d0c38b7eedc32065ef5d4" [label=""];
  "sha256:7c2c847626e2b04e3230fcb22166feb909cd687d584d0c38b7eedc32065ef5d4" -> "sha256:8ed5ba34946e572eaa1a5fb5d04a40ee6f43aa042e86ff8316f41a58c5a3c899" [label=""];
}

