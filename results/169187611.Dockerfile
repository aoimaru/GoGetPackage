[app/sources/169187611.Dockerfile]
digraph {
  "sha256:e84c3020337e858d5c5f826cd42a1c3574f9825cba469509ee5fdd263a46ee86" [label="docker-image://docker.io/supermy/docker-jre:7" shape="ellipse"];
  "sha256:495914c2e0939b09ae382cad3a7e50a8f90a9bbc94c5b6944f7e6f05577f1ccd" [label="/bin/sh -c mkdir /opt/flume" shape="box"];
  "sha256:07648b9b7c7e60250dc79689e370c83e2673a6a68b8aa779a8ff94e1d415b50f" [label="mkdir{path=/tmp}" shape="note"];
  "sha256:037a8b13a2272e9a0f9e0271116fe248c921733c761fc3840c8c9e73f9b1c344" [label="/bin/sh -c wget http://archive.apache.org/dist/flume/1.6.0/apache-flume-1.6.0-bin.tar.gz" shape="box"];
  "sha256:40f994d4c62e601a74f85f49b05e7c4bd31715aaa1b16422954bcc4458729968" [label="/bin/sh -c tar zxvf apache-flume-1.6.0-bin.tar.gz -C /opt/flume --strip 1" shape="box"];
  "sha256:74c34995df2f3731f4778593e861001c395857f207491c598ae233763ac326b7" [label="local://context" shape="ellipse"];
  "sha256:24c1b9f5ad25bca3cfd7124f8cd2d1e85490751ea21961d37afc1ca6018bb455" [label="copy{src=/conf, dest=/var/tmp/}" shape="note"];
  "sha256:ad9db722cace16b3d8d3bff9023321b0f224457aeb3fd77349fae724fdc80b90" [label="copy{src=/lib, dest=/opt/flume/lib/}" shape="note"];
  "sha256:2fca5ef81d67dd078db5b05a11efb7f6d384ad7dce073ef5ba914d130271c195" [label="/bin/sh -c sed  -i '/log4j.logger.org.apache.flume.lifecycle/a log4j.logger.org.apache.flume.interceptor = DEBUG'  /opt/flume/conf/log4j.properties" shape="box"];
  "sha256:0358693eba382554996c8c90044f5c66373632f922c2874b3958ba21859a2173" [label="/bin/sh -c cat /etc/hosts" shape="box"];
  "sha256:65d6873db5778481488f6a49f0821dec9e3aa1ea8f85fde37d63d0740d0bb813" [label="/bin/sh -c echo \"192.168.59.103 hbasemasteripc\" >> /etc/hosts" shape="box"];
  "sha256:242a5aa2c4ede0eb66f375fcf1c0dd77292f2cf368193dcb2b02fd0d71640d43" [label="copy{src=/start-flume.sh, dest=/opt/flume/bin/start-flume}" shape="note"];
  "sha256:7f84143ce81454a8ea693a29224a2fadb0916245a4174a92333a9e64306ff52a" [label="/bin/sh -c chmod a+x /opt/flume/bin/start-flume" shape="box"];
  "sha256:0306c9d1fd5a43b76b7df6ac0c294bd355d8f80c050a23af6dae8a40690983fb" [label="sha256:0306c9d1fd5a43b76b7df6ac0c294bd355d8f80c050a23af6dae8a40690983fb" shape="plaintext"];
  "sha256:e84c3020337e858d5c5f826cd42a1c3574f9825cba469509ee5fdd263a46ee86" -> "sha256:495914c2e0939b09ae382cad3a7e50a8f90a9bbc94c5b6944f7e6f05577f1ccd" [label=""];
  "sha256:495914c2e0939b09ae382cad3a7e50a8f90a9bbc94c5b6944f7e6f05577f1ccd" -> "sha256:07648b9b7c7e60250dc79689e370c83e2673a6a68b8aa779a8ff94e1d415b50f" [label=""];
  "sha256:07648b9b7c7e60250dc79689e370c83e2673a6a68b8aa779a8ff94e1d415b50f" -> "sha256:037a8b13a2272e9a0f9e0271116fe248c921733c761fc3840c8c9e73f9b1c344" [label=""];
  "sha256:037a8b13a2272e9a0f9e0271116fe248c921733c761fc3840c8c9e73f9b1c344" -> "sha256:40f994d4c62e601a74f85f49b05e7c4bd31715aaa1b16422954bcc4458729968" [label=""];
  "sha256:40f994d4c62e601a74f85f49b05e7c4bd31715aaa1b16422954bcc4458729968" -> "sha256:24c1b9f5ad25bca3cfd7124f8cd2d1e85490751ea21961d37afc1ca6018bb455" [label=""];
  "sha256:74c34995df2f3731f4778593e861001c395857f207491c598ae233763ac326b7" -> "sha256:24c1b9f5ad25bca3cfd7124f8cd2d1e85490751ea21961d37afc1ca6018bb455" [label=""];
  "sha256:24c1b9f5ad25bca3cfd7124f8cd2d1e85490751ea21961d37afc1ca6018bb455" -> "sha256:ad9db722cace16b3d8d3bff9023321b0f224457aeb3fd77349fae724fdc80b90" [label=""];
  "sha256:74c34995df2f3731f4778593e861001c395857f207491c598ae233763ac326b7" -> "sha256:ad9db722cace16b3d8d3bff9023321b0f224457aeb3fd77349fae724fdc80b90" [label=""];
  "sha256:ad9db722cace16b3d8d3bff9023321b0f224457aeb3fd77349fae724fdc80b90" -> "sha256:2fca5ef81d67dd078db5b05a11efb7f6d384ad7dce073ef5ba914d130271c195" [label=""];
  "sha256:2fca5ef81d67dd078db5b05a11efb7f6d384ad7dce073ef5ba914d130271c195" -> "sha256:0358693eba382554996c8c90044f5c66373632f922c2874b3958ba21859a2173" [label=""];
  "sha256:0358693eba382554996c8c90044f5c66373632f922c2874b3958ba21859a2173" -> "sha256:65d6873db5778481488f6a49f0821dec9e3aa1ea8f85fde37d63d0740d0bb813" [label=""];
  "sha256:65d6873db5778481488f6a49f0821dec9e3aa1ea8f85fde37d63d0740d0bb813" -> "sha256:242a5aa2c4ede0eb66f375fcf1c0dd77292f2cf368193dcb2b02fd0d71640d43" [label=""];
  "sha256:74c34995df2f3731f4778593e861001c395857f207491c598ae233763ac326b7" -> "sha256:242a5aa2c4ede0eb66f375fcf1c0dd77292f2cf368193dcb2b02fd0d71640d43" [label=""];
  "sha256:242a5aa2c4ede0eb66f375fcf1c0dd77292f2cf368193dcb2b02fd0d71640d43" -> "sha256:7f84143ce81454a8ea693a29224a2fadb0916245a4174a92333a9e64306ff52a" [label=""];
  "sha256:7f84143ce81454a8ea693a29224a2fadb0916245a4174a92333a9e64306ff52a" -> "sha256:0306c9d1fd5a43b76b7df6ac0c294bd355d8f80c050a23af6dae8a40690983fb" [label=""];
}

