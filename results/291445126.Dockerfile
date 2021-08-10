[app/sources/291445126.Dockerfile]
digraph {
  "sha256:c3804149d6e7c363912ed27df522bd630cb1f8c197225104f8b099642872001c" [label="docker-image://docker.io/library/centos:6.9" shape="ellipse"];
  "sha256:be3c1a1419f9c108204f3e85041d1e7d1cf5ec2c2d60b6f34485d4e3bcc0c3c9" [label="/bin/sh -c cd /etc/yum.repos.d/ && rm -f *                                                && curl -svo Centos-Base.repo http://mirrors.aliyun.com/repo/Centos-6.repo     && yum makecache && yum -y update" shape="box"];
  "sha256:7674ce705ebc155f095da4dffca7c5ae1343347001e76272b9ddd979b32d2248" [label="/bin/sh -c yum -y install initscripts" shape="box"];
  "sha256:ee974b061ca906e4f8d9ce1a14d3583e3b5b27db10585ce8171143d217367301" [label="/bin/sh -c yum -y install crontabs" shape="box"];
  "sha256:494854b4025a8f187e9546b6e3051ce4761b48dcd5ddbe86f268dfd0554d313b" [label="/bin/sh -c curl -svo /home/xcache-5.7.5.5-R.x86_64.rpm http://www.test.com/rpm/xcache-5.7.5.5-R.x86_64.rpm -x 10.80.147.19:80" shape="box"];
  "sha256:78183305af4906bfa1e041b35e2856c7e2359f59d3f7b969bf7a9f89385a0be4" [label="/bin/sh -c rpm -ivh /home/xcache-5.7.5.5-R.x86_64.rpm" shape="box"];
  "sha256:70ce8dc7e156ee5a32c3f9b379f3f053f1567e0d60d346751bc8617471db7848" [label="/bin/sh -c curl -svo /home/rfs-5.7.5.5-R.x86_64.rpm http://www.test.com/rpm/rfs-5.7.5.5-R.x86_64.rpm -x 10.80.147.19:80" shape="box"];
  "sha256:d41361a407bcb9d498833fdae337fd9a3d4928b6b7cbb67dc13a93e00c69aee6" [label="/bin/sh -c rpm -ivh /home/rfs-5.7.5.5-R.x86_64.rpm" shape="box"];
  "sha256:bbdef54ba302270c501caf260df4db343046a41b1583b7e7dc4865ce7541e311" [label="/bin/sh -c curl -svo /home/detect-5.7.5.5-R.x86_64.rpm http://www.test.com/rpm/detect-5.7.5.5-R.x86_64.rpm -x 10.80.147.19:80" shape="box"];
  "sha256:aed72a022a4e6eb9778789563c4e9affbc851cc063c3bbcd71513ad3fa17aecd" [label="/bin/sh -c rpm -ivh /home/detect-5.7.5.5-R.x86_64.rpm" shape="box"];
  "sha256:35e6cbe0f14286c4647a683b1b79715d8d21ff9abf838d8066b3500066ec0cf6" [label="/bin/sh -c curl -svo /home/xcache_run.sh http://www.test.com/rpm/xcache_run.sh -x 10.80.147.19:80" shape="box"];
  "sha256:31f50fc3280c2dd8add3ce56de05ec40d7a73f4ea34d4297bc2ee3868d287c33" [label="/bin/sh -c yum clean all && rm -f /home/*.rpm" shape="box"];
  "sha256:cb5a2b81043a8f04dd329a05e7f0cede53a18457d12fda088f17a3180f9d3236" [label="sha256:cb5a2b81043a8f04dd329a05e7f0cede53a18457d12fda088f17a3180f9d3236" shape="plaintext"];
  "sha256:c3804149d6e7c363912ed27df522bd630cb1f8c197225104f8b099642872001c" -> "sha256:be3c1a1419f9c108204f3e85041d1e7d1cf5ec2c2d60b6f34485d4e3bcc0c3c9" [label=""];
  "sha256:be3c1a1419f9c108204f3e85041d1e7d1cf5ec2c2d60b6f34485d4e3bcc0c3c9" -> "sha256:7674ce705ebc155f095da4dffca7c5ae1343347001e76272b9ddd979b32d2248" [label=""];
  "sha256:7674ce705ebc155f095da4dffca7c5ae1343347001e76272b9ddd979b32d2248" -> "sha256:ee974b061ca906e4f8d9ce1a14d3583e3b5b27db10585ce8171143d217367301" [label=""];
  "sha256:ee974b061ca906e4f8d9ce1a14d3583e3b5b27db10585ce8171143d217367301" -> "sha256:494854b4025a8f187e9546b6e3051ce4761b48dcd5ddbe86f268dfd0554d313b" [label=""];
  "sha256:494854b4025a8f187e9546b6e3051ce4761b48dcd5ddbe86f268dfd0554d313b" -> "sha256:78183305af4906bfa1e041b35e2856c7e2359f59d3f7b969bf7a9f89385a0be4" [label=""];
  "sha256:78183305af4906bfa1e041b35e2856c7e2359f59d3f7b969bf7a9f89385a0be4" -> "sha256:70ce8dc7e156ee5a32c3f9b379f3f053f1567e0d60d346751bc8617471db7848" [label=""];
  "sha256:70ce8dc7e156ee5a32c3f9b379f3f053f1567e0d60d346751bc8617471db7848" -> "sha256:d41361a407bcb9d498833fdae337fd9a3d4928b6b7cbb67dc13a93e00c69aee6" [label=""];
  "sha256:d41361a407bcb9d498833fdae337fd9a3d4928b6b7cbb67dc13a93e00c69aee6" -> "sha256:bbdef54ba302270c501caf260df4db343046a41b1583b7e7dc4865ce7541e311" [label=""];
  "sha256:bbdef54ba302270c501caf260df4db343046a41b1583b7e7dc4865ce7541e311" -> "sha256:aed72a022a4e6eb9778789563c4e9affbc851cc063c3bbcd71513ad3fa17aecd" [label=""];
  "sha256:aed72a022a4e6eb9778789563c4e9affbc851cc063c3bbcd71513ad3fa17aecd" -> "sha256:35e6cbe0f14286c4647a683b1b79715d8d21ff9abf838d8066b3500066ec0cf6" [label=""];
  "sha256:35e6cbe0f14286c4647a683b1b79715d8d21ff9abf838d8066b3500066ec0cf6" -> "sha256:31f50fc3280c2dd8add3ce56de05ec40d7a73f4ea34d4297bc2ee3868d287c33" [label=""];
  "sha256:31f50fc3280c2dd8add3ce56de05ec40d7a73f4ea34d4297bc2ee3868d287c33" -> "sha256:cb5a2b81043a8f04dd329a05e7f0cede53a18457d12fda088f17a3180f9d3236" [label=""];
}

