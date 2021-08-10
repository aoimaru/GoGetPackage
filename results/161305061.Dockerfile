[app/sources/161305061.Dockerfile]
digraph {
  "sha256:c4d4889123c567c49265c56226746191563354296d0d8c13cad2589799698cd6" [label="docker-image://docker.io/library/base:ubuntu-quantal" shape="ellipse"];
  "sha256:aa93ef6511a9263223991116545615f754132c6200e18557a787449bcc5ae663" [label="/bin/sh -c apt-get install wget -y --force-yes" shape="box"];
  "sha256:8b576e46aa3f9c0ca3bb4727ed85d24b6e0935f012897bd66203c62a10fd6b69" [label="/bin/sh -c wget http://github.com/tsuru/basebuilder/tarball/master -O basebuilder.tar.gz --no-check-certificate" shape="box"];
  "sha256:48dc69a00b6b071a33309a21fc3650c90ea42f4c967d04933929706df91941ac" [label="/bin/sh -c mkdir /var/lib/tsuru" shape="box"];
  "sha256:d375d881a41e55102aa5b83a5ac9e1359bb768df99ebe33a46ae6c27364d351b" [label="/bin/sh -c tar -xvf basebuilder.tar.gz -C /var/lib/tsuru --strip 1" shape="box"];
  "sha256:de5430eda3e7cbd96e8594e4027b72ec0e6e746c8bef2dba9d61e16560e2219c" [label="/bin/sh -c cp /var/lib/tsuru/python/deploy /var/lib/tsuru" shape="box"];
  "sha256:08ce90821f58820d7bf2fc984de53bc03fc995c91bfc89906e91c0d2e5755409" [label="/bin/sh -c cp /var/lib/tsuru/base/restart /var/lib/tsuru" shape="box"];
  "sha256:bbc0e4464e4f645ecaef1041684c74a5e4937e1ce03f8a3a65ce5705e7c9b173" [label="/bin/sh -c cp /var/lib/tsuru/base/start /var/lib/tsuru" shape="box"];
  "sha256:98033aa3794f89bb24b0c6d9abfd4c046f2a74836a2a99a18e3467f8ec93e90e" [label="/bin/sh -c /var/lib/tsuru/base/install" shape="box"];
  "sha256:0de3191b2fb0b21d214b9574b453873d650f6ddf7b1245ccbca9f77000463c5f" [label="/bin/sh -c /var/lib/tsuru/base/setup" shape="box"];
  "sha256:3880c80ecd0453ef8d060355a4829b345c045c4ccff19c77b75402cb0846694f" [label="sha256:3880c80ecd0453ef8d060355a4829b345c045c4ccff19c77b75402cb0846694f" shape="plaintext"];
  "sha256:c4d4889123c567c49265c56226746191563354296d0d8c13cad2589799698cd6" -> "sha256:aa93ef6511a9263223991116545615f754132c6200e18557a787449bcc5ae663" [label=""];
  "sha256:aa93ef6511a9263223991116545615f754132c6200e18557a787449bcc5ae663" -> "sha256:8b576e46aa3f9c0ca3bb4727ed85d24b6e0935f012897bd66203c62a10fd6b69" [label=""];
  "sha256:8b576e46aa3f9c0ca3bb4727ed85d24b6e0935f012897bd66203c62a10fd6b69" -> "sha256:48dc69a00b6b071a33309a21fc3650c90ea42f4c967d04933929706df91941ac" [label=""];
  "sha256:48dc69a00b6b071a33309a21fc3650c90ea42f4c967d04933929706df91941ac" -> "sha256:d375d881a41e55102aa5b83a5ac9e1359bb768df99ebe33a46ae6c27364d351b" [label=""];
  "sha256:d375d881a41e55102aa5b83a5ac9e1359bb768df99ebe33a46ae6c27364d351b" -> "sha256:de5430eda3e7cbd96e8594e4027b72ec0e6e746c8bef2dba9d61e16560e2219c" [label=""];
  "sha256:de5430eda3e7cbd96e8594e4027b72ec0e6e746c8bef2dba9d61e16560e2219c" -> "sha256:08ce90821f58820d7bf2fc984de53bc03fc995c91bfc89906e91c0d2e5755409" [label=""];
  "sha256:08ce90821f58820d7bf2fc984de53bc03fc995c91bfc89906e91c0d2e5755409" -> "sha256:bbc0e4464e4f645ecaef1041684c74a5e4937e1ce03f8a3a65ce5705e7c9b173" [label=""];
  "sha256:bbc0e4464e4f645ecaef1041684c74a5e4937e1ce03f8a3a65ce5705e7c9b173" -> "sha256:98033aa3794f89bb24b0c6d9abfd4c046f2a74836a2a99a18e3467f8ec93e90e" [label=""];
  "sha256:98033aa3794f89bb24b0c6d9abfd4c046f2a74836a2a99a18e3467f8ec93e90e" -> "sha256:0de3191b2fb0b21d214b9574b453873d650f6ddf7b1245ccbca9f77000463c5f" [label=""];
  "sha256:0de3191b2fb0b21d214b9574b453873d650f6ddf7b1245ccbca9f77000463c5f" -> "sha256:3880c80ecd0453ef8d060355a4829b345c045c4ccff19c77b75402cb0846694f" [label=""];
}

