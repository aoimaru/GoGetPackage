[app/sources/449788590.Dockerfile]
digraph {
  "sha256:3ea9adfbe267dae250ee10d76fa0dfe27899da8d8c59eb15c12d5bb0df236f89" [label="docker-image://docker.io/acmeair/base:latest" shape="ellipse"];
  "sha256:0e54c4597f9da40bf17d06ac91c9cea373faf0077705089e90e66ddd97ae04d4" [label="/bin/sh -c apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y mongodb redis-server redis-tools rake golang git &&  apt-get clean &&  rm -Rf /var/cache/*" shape="box"];
  "sha256:342798c39d1e71ac16c31d017e7eb9150722836790560c1b7c351ce4ddca458f" [label="/bin/sh -c mkdir /tmp/go &&  GOPATH=/tmp/go go get github.com/apcera/gnatsd &&  mv /tmp/go/bin/gnatsd /usr/local/bin &&  rm -Rf /tmp/go" shape="box"];
  "sha256:27aab4ef3430da7f0a6b263d9888750f3d70173e19cc9c2ffe2527ed0e3efebb" [label="/bin/sh -c gem install mongo bson_ext" shape="box"];
  "sha256:92e5ca0d939934cafece518a930bcacdfbefba9d5c4bb72a218d23aa8d7e8c13" [label="/bin/sh -c sed -i 's/\\(bind_ip = \\).*/\\10.0.0.0/' /etc/mongodb.conf &&  echo \"port = 27017\" >> /etc/mongodb.conf &&  echo \"smallfiles = true\" >> /etc/mongodb.conf" shape="box"];
  "sha256:0b95814c3d16c73f91f580b2bd8a6ee8569ea31b7fc3dba118537c5f1298bd25" [label="/bin/sh -c sudo -u mongodb /usr/bin/mongod -f /etc/mongodb.conf --fork &  max=5; for i in `seq 1 1 $max`; do sleep 5; /usr/bin/mongo --eval \"db\"; if [ \"$?\" -eq 0 ]; then break; fi; if [ \"$i\" -eq \"$max\" ]; then exit 1; fi; done &&  /usr/bin/mongo admin --eval \"db.addUser('admin','$admin_passwd');\" &&  /usr/bin/mongo authdb --eval \"db.addUser('auser','$auser_passwd');\" &&  /usr/bin/mongo imdb --eval \"db.addUser('imuser','$imuser_passwd');\" &&  /usr/bin/mongo asgdb --eval \"db.addUser('asguser','$asguser_passwd');\" &&  sudo -u mongodb /usr/bin/mongod -f /etc/mongodb.conf --shutdown" shape="box"];
  "sha256:09b7260d125346e6901b0a39bb30c8e01ddf00a9f9c057b5a6ea4b28b45a8fad" [label="/bin/sh -c echo \"auth = true\" >> /etc/mongodb.conf" shape="box"];
  "sha256:1091d402979838206f849ed79e77b3a55a334e5a856ff1d4732ee95d34ca232b" [label="/bin/sh -c cd /usr/local &&  wget -qO- https://github.com/EmergingTechnologyInstitute/microscaler/tarball/master | tar xzf - -C /tmp &&  mv /tmp/EmergingTechnologyInstitute-microscaler-*/microscaler /usr/local &&  mv /tmp/EmergingTechnologyInstitute-microscaler-*/microscaler-cli /usr/local &&  rm -Rf /tmp/EmergingTechnologyInstitute-microscaler-* &&  cd microscaler &&  mkdir /.bundle &&  echo --- >> /.bundle/config &&  echo 'BUNDLE_BUILD__EVENTMACHINE: --with-cflags=\"-O2 -pipe -march=native -w\" ' >> /.bundle/config &&  echo 'BUNDLE_BUILD__THIN: --with-cflags=\"-O2 -pipe -march=native -w\" ' >> /.bundle/config &&  bundle install &&  cd ../microscaler-cli &&  bundle install" shape="box"];
  "sha256:2deb9e30bdf0336c72a3243120d067e1dfa03c109db37669c4792ebec61f9ba3" [label="/bin/sh -c echo \"alias ms=/usr/local/microscaler-cli/bin/ms\" >> /root/.bashrc" shape="box"];
  "sha256:1c3f710ac73bfc77115c3cc29389e0652aa6d298dbda4baa299544f2a88ef9b8" [label="local://context" shape="ellipse"];
  "sha256:9a25410f30e78c10e6acce53ea84dc582f79408498bc4068b0b48042bc8524cc" [label="copy{src=/redis.conf, dest=/etc/supervisor/conf.d/redis.conf}" shape="note"];
  "sha256:1ba9b55bb57e977594b73ba9d09278db318fc570a7156f41ab414bf5b09d97ce" [label="copy{src=/mongodb.conf, dest=/etc/supervisor/conf.d/mongodb.conf}" shape="note"];
  "sha256:7b3a6530807a7d4406602c32afff181a24a817f5f955ad637d392304c91a1749" [label="copy{src=/gnatsd.conf, dest=/etc/supervisor/conf.d/gnatsd.conf}" shape="note"];
  "sha256:c401d1f1f51fb0f9f4a0be2500e37b858f8883d77dd3fd739249e985300207c4" [label="copy{src=/controller.conf, dest=/etc/supervisor/conf.d/controller.conf}" shape="note"];
  "sha256:bd26de36edb099dc77ae76c7d78c74832308fc3c05b91f281d7a54d753732c07" [label="copy{src=/healthmanager.conf, dest=/etc/supervisor/conf.d/healthmanager.conf}" shape="note"];
  "sha256:1a2ff668c2cb08a514d726d9296c7b2c67b563cfe4cdb53e099fffdbfc3dd6ac" [label="copy{src=/worker-launch.conf, dest=/etc/supervisor/conf.d/worker-launch.conf}" shape="note"];
  "sha256:2a2de5b1632a2afc3079f1bd6bfe37fc46985e322b9e28377da7562eb198ae6f" [label="copy{src=/worker-stop.conf, dest=/etc/supervisor/conf.d/worker-stop.conf}" shape="note"];
  "sha256:a84c259ca5e4c257ebcd5bcf04bc0929325b57b389e4474525b685f99a1c1d1e" [label="sha256:a84c259ca5e4c257ebcd5bcf04bc0929325b57b389e4474525b685f99a1c1d1e" shape="plaintext"];
  "sha256:3ea9adfbe267dae250ee10d76fa0dfe27899da8d8c59eb15c12d5bb0df236f89" -> "sha256:0e54c4597f9da40bf17d06ac91c9cea373faf0077705089e90e66ddd97ae04d4" [label=""];
  "sha256:0e54c4597f9da40bf17d06ac91c9cea373faf0077705089e90e66ddd97ae04d4" -> "sha256:342798c39d1e71ac16c31d017e7eb9150722836790560c1b7c351ce4ddca458f" [label=""];
  "sha256:342798c39d1e71ac16c31d017e7eb9150722836790560c1b7c351ce4ddca458f" -> "sha256:27aab4ef3430da7f0a6b263d9888750f3d70173e19cc9c2ffe2527ed0e3efebb" [label=""];
  "sha256:27aab4ef3430da7f0a6b263d9888750f3d70173e19cc9c2ffe2527ed0e3efebb" -> "sha256:92e5ca0d939934cafece518a930bcacdfbefba9d5c4bb72a218d23aa8d7e8c13" [label=""];
  "sha256:92e5ca0d939934cafece518a930bcacdfbefba9d5c4bb72a218d23aa8d7e8c13" -> "sha256:0b95814c3d16c73f91f580b2bd8a6ee8569ea31b7fc3dba118537c5f1298bd25" [label=""];
  "sha256:0b95814c3d16c73f91f580b2bd8a6ee8569ea31b7fc3dba118537c5f1298bd25" -> "sha256:09b7260d125346e6901b0a39bb30c8e01ddf00a9f9c057b5a6ea4b28b45a8fad" [label=""];
  "sha256:09b7260d125346e6901b0a39bb30c8e01ddf00a9f9c057b5a6ea4b28b45a8fad" -> "sha256:1091d402979838206f849ed79e77b3a55a334e5a856ff1d4732ee95d34ca232b" [label=""];
  "sha256:1091d402979838206f849ed79e77b3a55a334e5a856ff1d4732ee95d34ca232b" -> "sha256:2deb9e30bdf0336c72a3243120d067e1dfa03c109db37669c4792ebec61f9ba3" [label=""];
  "sha256:2deb9e30bdf0336c72a3243120d067e1dfa03c109db37669c4792ebec61f9ba3" -> "sha256:9a25410f30e78c10e6acce53ea84dc582f79408498bc4068b0b48042bc8524cc" [label=""];
  "sha256:1c3f710ac73bfc77115c3cc29389e0652aa6d298dbda4baa299544f2a88ef9b8" -> "sha256:9a25410f30e78c10e6acce53ea84dc582f79408498bc4068b0b48042bc8524cc" [label=""];
  "sha256:9a25410f30e78c10e6acce53ea84dc582f79408498bc4068b0b48042bc8524cc" -> "sha256:1ba9b55bb57e977594b73ba9d09278db318fc570a7156f41ab414bf5b09d97ce" [label=""];
  "sha256:1c3f710ac73bfc77115c3cc29389e0652aa6d298dbda4baa299544f2a88ef9b8" -> "sha256:1ba9b55bb57e977594b73ba9d09278db318fc570a7156f41ab414bf5b09d97ce" [label=""];
  "sha256:1ba9b55bb57e977594b73ba9d09278db318fc570a7156f41ab414bf5b09d97ce" -> "sha256:7b3a6530807a7d4406602c32afff181a24a817f5f955ad637d392304c91a1749" [label=""];
  "sha256:1c3f710ac73bfc77115c3cc29389e0652aa6d298dbda4baa299544f2a88ef9b8" -> "sha256:7b3a6530807a7d4406602c32afff181a24a817f5f955ad637d392304c91a1749" [label=""];
  "sha256:7b3a6530807a7d4406602c32afff181a24a817f5f955ad637d392304c91a1749" -> "sha256:c401d1f1f51fb0f9f4a0be2500e37b858f8883d77dd3fd739249e985300207c4" [label=""];
  "sha256:1c3f710ac73bfc77115c3cc29389e0652aa6d298dbda4baa299544f2a88ef9b8" -> "sha256:c401d1f1f51fb0f9f4a0be2500e37b858f8883d77dd3fd739249e985300207c4" [label=""];
  "sha256:c401d1f1f51fb0f9f4a0be2500e37b858f8883d77dd3fd739249e985300207c4" -> "sha256:bd26de36edb099dc77ae76c7d78c74832308fc3c05b91f281d7a54d753732c07" [label=""];
  "sha256:1c3f710ac73bfc77115c3cc29389e0652aa6d298dbda4baa299544f2a88ef9b8" -> "sha256:bd26de36edb099dc77ae76c7d78c74832308fc3c05b91f281d7a54d753732c07" [label=""];
  "sha256:bd26de36edb099dc77ae76c7d78c74832308fc3c05b91f281d7a54d753732c07" -> "sha256:1a2ff668c2cb08a514d726d9296c7b2c67b563cfe4cdb53e099fffdbfc3dd6ac" [label=""];
  "sha256:1c3f710ac73bfc77115c3cc29389e0652aa6d298dbda4baa299544f2a88ef9b8" -> "sha256:1a2ff668c2cb08a514d726d9296c7b2c67b563cfe4cdb53e099fffdbfc3dd6ac" [label=""];
  "sha256:1a2ff668c2cb08a514d726d9296c7b2c67b563cfe4cdb53e099fffdbfc3dd6ac" -> "sha256:2a2de5b1632a2afc3079f1bd6bfe37fc46985e322b9e28377da7562eb198ae6f" [label=""];
  "sha256:1c3f710ac73bfc77115c3cc29389e0652aa6d298dbda4baa299544f2a88ef9b8" -> "sha256:2a2de5b1632a2afc3079f1bd6bfe37fc46985e322b9e28377da7562eb198ae6f" [label=""];
  "sha256:2a2de5b1632a2afc3079f1bd6bfe37fc46985e322b9e28377da7562eb198ae6f" -> "sha256:a84c259ca5e4c257ebcd5bcf04bc0929325b57b389e4474525b685f99a1c1d1e" [label=""];
}

