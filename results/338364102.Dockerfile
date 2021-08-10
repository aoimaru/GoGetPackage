[app/sources/338364102.Dockerfile]
digraph {
  "sha256:1ad2ffab5c7293733fa381965ed686fe7efa1f751dca4e5d0eae702c4790d823" [label="docker-image://docker.io/statemood/alpine:3.7" shape="ellipse"];
  "sha256:0d3c57cb5d8c3b018805bf67cefa2b447a2407f747738d7e5c48c8a3614014eb" [label="local://context" shape="ellipse"];
  "sha256:0bd85a14bd3c08ab79b09aca440ba1964fabb4e19eebbec05fad07334848a4c3" [label="copy{src=/job.sh, dest=/}" shape="note"];
  "sha256:7f417738297cc570da200e192bca65d4a34174c0236db2bd8bc835e79de19400" [label="/bin/sh -c apk update\t\t&&     apk upgrade\t\t&&     c=\"gcc make autoconf g++ python2-dev mysql-dev\" &&     pi=\"mirrors.aliyun.com\"                         &&     ps=\"http://$pi/pypi/simple\"                     &&     args=\"-i $ps --trusted-host=$pi\"                &&     apk add \"python2~=2.7.14\" py2-pip $c jq         &&     pip install --upgrade pip $args                 &&     pip install ssh toml MySQL-python==1.2.5 $args  &&     cp /usr/lib/libmysqlclient.so.18 /              &&     apk del $c                                      &&     mv /libmysqlclient.so.18 /usr/lib               &&     chmod 755 /job.sh" shape="box"];
  "sha256:7b90d180dddaafe1d5e37dfe83bd20e5e213d3350218195941ea13d1b423a476" [label="sha256:7b90d180dddaafe1d5e37dfe83bd20e5e213d3350218195941ea13d1b423a476" shape="plaintext"];
  "sha256:1ad2ffab5c7293733fa381965ed686fe7efa1f751dca4e5d0eae702c4790d823" -> "sha256:0bd85a14bd3c08ab79b09aca440ba1964fabb4e19eebbec05fad07334848a4c3" [label=""];
  "sha256:0d3c57cb5d8c3b018805bf67cefa2b447a2407f747738d7e5c48c8a3614014eb" -> "sha256:0bd85a14bd3c08ab79b09aca440ba1964fabb4e19eebbec05fad07334848a4c3" [label=""];
  "sha256:0bd85a14bd3c08ab79b09aca440ba1964fabb4e19eebbec05fad07334848a4c3" -> "sha256:7f417738297cc570da200e192bca65d4a34174c0236db2bd8bc835e79de19400" [label=""];
  "sha256:7f417738297cc570da200e192bca65d4a34174c0236db2bd8bc835e79de19400" -> "sha256:7b90d180dddaafe1d5e37dfe83bd20e5e213d3350218195941ea13d1b423a476" [label=""];
}

