[app/sources/237733515.Dockerfile]
digraph {
  "sha256:9b0d2262bdb90137854fd9cdabf5ffea554c0c51c0869fc3bb068e9af8537279" [label="docker-image://docker.io/library/node:boron" shape="ellipse"];
  "sha256:d5a625f2a0ba0b434b447e44befdf91daaf8179cd0804fa5f297b485a9b8486a" [label="/bin/sh -c mkdir -p /opt/qewd" shape="box"];
  "sha256:81435cd997f2801b85b56ffbb651ba154357ea949b22a3da239f61450a0f634b" [label="mkdir{path=/opt/qewd}" shape="note"];
  "sha256:7337ad62aa504a3cda36844c1743fca4a650f7350e7426c697c19a763ecb17e5" [label="local://context" shape="ellipse"];
  "sha256:d37c1d7ef9f015652a8c8cdaa6fa43509c5eef55881fb9ccb8bf46dd839fad49" [label="copy{src=/package.json, dest=/opt/qewd}" shape="note"];
  "sha256:84c238d504000d05864d422f6fc940f32c618920cad881f43a0ee285b88be03a" [label="/bin/sh -c npm install" shape="box"];
  "sha256:523fab43182bd02f0901a75adb0d0cb48381c169f900cae088d178421d4bce71" [label="copy{src=/, dest=/opt/qewd}" shape="note"];
  "sha256:d17a335af1ac26cc072f29b3bf9c9189e28bce869ab9d519eb9105073e6fa639" [label="/bin/sh -c mkdir /opt/qewd/www" shape="box"];
  "sha256:65684e7de926208668a93b02d23614f888d8cd80d9b3e416baa94c7b2b5ddc9b" [label="/bin/sh -c mkdir /opt/qewd/www/qewd-monitor" shape="box"];
  "sha256:a3e8186da46c8cb4b423f30f1f4da9b3b915bfa3156e2e1aa2099af21f8dc643" [label="/bin/sh -c cd /opt/qewd/node_modules/qewd-monitor/www" shape="box"];
  "sha256:b8a52ba6143fafd24f4972c06fae7dcbc84584f3f2292d75bcf7a15e4e9c8cd0" [label="/bin/sh -c cp /opt/qewd/node_modules/qewd-monitor/www/bundle.js /opt/qewd/www/qewd-monitor" shape="box"];
  "sha256:bb39ae62093971e6ec6136275ed284d5510e4de08738db4dae39e2e6f148120c" [label="/bin/sh -c cp /opt/qewd/node_modules/qewd-monitor/www/*.html /opt/qewd/www/qewd-monitor" shape="box"];
  "sha256:80173b980c01dcd17beb2b09066abe2414d7f1d0e29ee27fbf89546ede904400" [label="/bin/sh -c cp /opt/qewd/node_modules/qewd-monitor/www/*.css /opt/qewd/www/qewd-monitor" shape="box"];
  "sha256:0a5af6408945f7bb7aa342636068097f02a29a82f407acc5d58ee2f7c9fbbdd9" [label="/bin/sh -c cp /opt/qewd/node_modules/ewd-client/lib/proto/ewd-client.js /opt/qewd/www" shape="box"];
  "sha256:c742dbcbc982e63972a797a8a525d3ae6ee60076ad0a5678e3b9390687558f95" [label="sha256:c742dbcbc982e63972a797a8a525d3ae6ee60076ad0a5678e3b9390687558f95" shape="plaintext"];
  "sha256:9b0d2262bdb90137854fd9cdabf5ffea554c0c51c0869fc3bb068e9af8537279" -> "sha256:d5a625f2a0ba0b434b447e44befdf91daaf8179cd0804fa5f297b485a9b8486a" [label=""];
  "sha256:d5a625f2a0ba0b434b447e44befdf91daaf8179cd0804fa5f297b485a9b8486a" -> "sha256:81435cd997f2801b85b56ffbb651ba154357ea949b22a3da239f61450a0f634b" [label=""];
  "sha256:81435cd997f2801b85b56ffbb651ba154357ea949b22a3da239f61450a0f634b" -> "sha256:d37c1d7ef9f015652a8c8cdaa6fa43509c5eef55881fb9ccb8bf46dd839fad49" [label=""];
  "sha256:7337ad62aa504a3cda36844c1743fca4a650f7350e7426c697c19a763ecb17e5" -> "sha256:d37c1d7ef9f015652a8c8cdaa6fa43509c5eef55881fb9ccb8bf46dd839fad49" [label=""];
  "sha256:d37c1d7ef9f015652a8c8cdaa6fa43509c5eef55881fb9ccb8bf46dd839fad49" -> "sha256:84c238d504000d05864d422f6fc940f32c618920cad881f43a0ee285b88be03a" [label=""];
  "sha256:84c238d504000d05864d422f6fc940f32c618920cad881f43a0ee285b88be03a" -> "sha256:523fab43182bd02f0901a75adb0d0cb48381c169f900cae088d178421d4bce71" [label=""];
  "sha256:7337ad62aa504a3cda36844c1743fca4a650f7350e7426c697c19a763ecb17e5" -> "sha256:523fab43182bd02f0901a75adb0d0cb48381c169f900cae088d178421d4bce71" [label=""];
  "sha256:523fab43182bd02f0901a75adb0d0cb48381c169f900cae088d178421d4bce71" -> "sha256:d17a335af1ac26cc072f29b3bf9c9189e28bce869ab9d519eb9105073e6fa639" [label=""];
  "sha256:d17a335af1ac26cc072f29b3bf9c9189e28bce869ab9d519eb9105073e6fa639" -> "sha256:65684e7de926208668a93b02d23614f888d8cd80d9b3e416baa94c7b2b5ddc9b" [label=""];
  "sha256:65684e7de926208668a93b02d23614f888d8cd80d9b3e416baa94c7b2b5ddc9b" -> "sha256:a3e8186da46c8cb4b423f30f1f4da9b3b915bfa3156e2e1aa2099af21f8dc643" [label=""];
  "sha256:a3e8186da46c8cb4b423f30f1f4da9b3b915bfa3156e2e1aa2099af21f8dc643" -> "sha256:b8a52ba6143fafd24f4972c06fae7dcbc84584f3f2292d75bcf7a15e4e9c8cd0" [label=""];
  "sha256:b8a52ba6143fafd24f4972c06fae7dcbc84584f3f2292d75bcf7a15e4e9c8cd0" -> "sha256:bb39ae62093971e6ec6136275ed284d5510e4de08738db4dae39e2e6f148120c" [label=""];
  "sha256:bb39ae62093971e6ec6136275ed284d5510e4de08738db4dae39e2e6f148120c" -> "sha256:80173b980c01dcd17beb2b09066abe2414d7f1d0e29ee27fbf89546ede904400" [label=""];
  "sha256:80173b980c01dcd17beb2b09066abe2414d7f1d0e29ee27fbf89546ede904400" -> "sha256:0a5af6408945f7bb7aa342636068097f02a29a82f407acc5d58ee2f7c9fbbdd9" [label=""];
  "sha256:0a5af6408945f7bb7aa342636068097f02a29a82f407acc5d58ee2f7c9fbbdd9" -> "sha256:c742dbcbc982e63972a797a8a525d3ae6ee60076ad0a5678e3b9390687558f95" [label=""];
}

