[app/sources/244196714.Dockerfile]
digraph {
  "sha256:5afce64046e3aeb1081f217f2d57ec60e23a02e047881568eddb5209e9a729ff" [label="docker-image://docker.io/phusion/baseimage:latest" shape="ellipse"];
  "sha256:19d5751c58e75204aa485b1dde9dd2a9a8d2ba6cc4c3794830eb89aa68f61409" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:a15e8617d86dde9978522b44826beefe0bb54bc50ce0224810c30198042e9b81" [label="/bin/sh -c apt-get install -y beanstalkd" shape="box"];
  "sha256:08ef9a43f1765a3b483c91249fa5835bd8426655731471bc45e8e6def49917d3" [label="/bin/sh -c apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:87aeacbbb921c2dc602931ecb28c18e7ebff63fecae5f9531de207e02279b558" [label="sha256:87aeacbbb921c2dc602931ecb28c18e7ebff63fecae5f9531de207e02279b558" shape="plaintext"];
  "sha256:5afce64046e3aeb1081f217f2d57ec60e23a02e047881568eddb5209e9a729ff" -> "sha256:19d5751c58e75204aa485b1dde9dd2a9a8d2ba6cc4c3794830eb89aa68f61409" [label=""];
  "sha256:19d5751c58e75204aa485b1dde9dd2a9a8d2ba6cc4c3794830eb89aa68f61409" -> "sha256:a15e8617d86dde9978522b44826beefe0bb54bc50ce0224810c30198042e9b81" [label=""];
  "sha256:a15e8617d86dde9978522b44826beefe0bb54bc50ce0224810c30198042e9b81" -> "sha256:08ef9a43f1765a3b483c91249fa5835bd8426655731471bc45e8e6def49917d3" [label=""];
  "sha256:08ef9a43f1765a3b483c91249fa5835bd8426655731471bc45e8e6def49917d3" -> "sha256:87aeacbbb921c2dc602931ecb28c18e7ebff63fecae5f9531de207e02279b558" [label=""];
}

