[app/sources/180245278.Dockerfile]
digraph {
  "sha256:d1a6123fcd53665b5d5907d457138d252b04072dce5ddb398ce053b34a7cc614" [label="docker-image://docker.io/library/centos:centos6" shape="ellipse"];
  "sha256:f606e855bcb68e1e46181295aa58f52b5465a0695fc337e61cd3194d1cbea42d" [label="/bin/sh -c yum -y install tar wget numactl libaio mutt python python-paramiko java-1.6.0-openjdk vi which" shape="box"];
  "sha256:f6f97f1d1e911f216b664f9706fdc22da096bd751ad37cfb2c4fe909f38af4f9" [label="/bin/sh -c wget http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm" shape="box"];
  "sha256:1f4b667fa038b016ea92e5b9787d312c1b461bea11f2d657a215ff6143b939aa" [label="/bin/sh -c wget http://rpms.famillecollet.com/enterprise/remi-release-6.rpm" shape="box"];
  "sha256:910b2f246b17737dc8e6eb1ef87e21be80fe8711bcb4be8e9cd58ea6829033e3" [label="/bin/sh -c rpm -Uvh remi-release-6*.rpm epel-release-6*.rpm" shape="box"];
  "sha256:368155978907d4452e4ebb6a9f0588260435d3ecafb5c6821b6f8a7622bdd7b4" [label="/bin/sh -c yum -y install bash-completion" shape="box"];
  "sha256:df206be91ee3dc072f0007e78250eda7dfa4ee05ad2e343989556db27ede953f" [label="local://context" shape="ellipse"];
  "sha256:161015c6c5a0deb91030536515c5ea79f0a71bf88ca51da8b7328c3849b6dd94" [label="copy{src=/, dest=/opt/emc/scaleio/siinstall/}" shape="note"];
  "sha256:67df58d727669e44b8c0f4c737b3b3cf79414f1756217437e01c32f573091103" [label="/bin/sh -c printf \"#!/bin/sh \\numount /dev/shm \\nmount -t tmpfs -o rw,nosuid,nodev,noexec,relatime,size=524288k shm /dev/shm \\nrpm -qa | egrep -i 'ecs|scaleio' \\nif ((\\$? != 0 )); then \\n  rpm -Uvh /opt/emc/scaleio/siinstall/EMC-ScaleIO-mdm-*.x86_64.rpm \\n  rpm -Uvh /opt/emc/scaleio/siinstall/EMC-ScaleIO-sds-*.x86_64.rpm \\nfi \\n/opt/emc/scaleio/mdm/bin/run_bin.sh & \\n/opt/emc/scaleio/sds/bin/run_bin.sh & \\nwhile true;do \\n  ps -ef \\n  netstat -an \\n  sleep 10 \\ndone\" > /start.sh" shape="box"];
  "sha256:ee993c9e7c77d35cbb86373c283f0ff3240a81387984e5bc2272ee1f455bbd94" [label="/bin/sh -c chmod +x /start.sh" shape="box"];
  "sha256:fb2f7c82f42ecea449ab1d5bdd28145036ca12e950092c1ab2925c47fbb810b8" [label="sha256:fb2f7c82f42ecea449ab1d5bdd28145036ca12e950092c1ab2925c47fbb810b8" shape="plaintext"];
  "sha256:d1a6123fcd53665b5d5907d457138d252b04072dce5ddb398ce053b34a7cc614" -> "sha256:f606e855bcb68e1e46181295aa58f52b5465a0695fc337e61cd3194d1cbea42d" [label=""];
  "sha256:f606e855bcb68e1e46181295aa58f52b5465a0695fc337e61cd3194d1cbea42d" -> "sha256:f6f97f1d1e911f216b664f9706fdc22da096bd751ad37cfb2c4fe909f38af4f9" [label=""];
  "sha256:f6f97f1d1e911f216b664f9706fdc22da096bd751ad37cfb2c4fe909f38af4f9" -> "sha256:1f4b667fa038b016ea92e5b9787d312c1b461bea11f2d657a215ff6143b939aa" [label=""];
  "sha256:1f4b667fa038b016ea92e5b9787d312c1b461bea11f2d657a215ff6143b939aa" -> "sha256:910b2f246b17737dc8e6eb1ef87e21be80fe8711bcb4be8e9cd58ea6829033e3" [label=""];
  "sha256:910b2f246b17737dc8e6eb1ef87e21be80fe8711bcb4be8e9cd58ea6829033e3" -> "sha256:368155978907d4452e4ebb6a9f0588260435d3ecafb5c6821b6f8a7622bdd7b4" [label=""];
  "sha256:368155978907d4452e4ebb6a9f0588260435d3ecafb5c6821b6f8a7622bdd7b4" -> "sha256:161015c6c5a0deb91030536515c5ea79f0a71bf88ca51da8b7328c3849b6dd94" [label=""];
  "sha256:df206be91ee3dc072f0007e78250eda7dfa4ee05ad2e343989556db27ede953f" -> "sha256:161015c6c5a0deb91030536515c5ea79f0a71bf88ca51da8b7328c3849b6dd94" [label=""];
  "sha256:161015c6c5a0deb91030536515c5ea79f0a71bf88ca51da8b7328c3849b6dd94" -> "sha256:67df58d727669e44b8c0f4c737b3b3cf79414f1756217437e01c32f573091103" [label=""];
  "sha256:67df58d727669e44b8c0f4c737b3b3cf79414f1756217437e01c32f573091103" -> "sha256:ee993c9e7c77d35cbb86373c283f0ff3240a81387984e5bc2272ee1f455bbd94" [label=""];
  "sha256:ee993c9e7c77d35cbb86373c283f0ff3240a81387984e5bc2272ee1f455bbd94" -> "sha256:fb2f7c82f42ecea449ab1d5bdd28145036ca12e950092c1ab2925c47fbb810b8" [label=""];
}

