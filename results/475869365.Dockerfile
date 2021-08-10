[app/sources/475869365.Dockerfile]
digraph {
  "sha256:401145b0b3ec7fb236683f9f2d4bd8a67021613b4ce8f2618910bd5dc2398ff5" [label="local://context" shape="ellipse"];
  "sha256:3c00243e8f7c3d50961f2fee7b92f871e7b1c10c57b03b84e8d0cee90f23f708" [label="docker-image://docker.io/library/buildpack-deps:jessie-scm" shape="ellipse"];
  "sha256:7f5b62cf52ca7e3f6780b7ea309d75597159e0348f1598effac5177bd1e549a3" [label="/bin/sh -c echo $TZ | tee /etc/timezone \t&& dpkg-reconfigure --frontend noninteractive tzdata" shape="box"];
  "sha256:660647d9e91fdd192cf2bc01ec8cc3b3a30cc7e5acd065a84f4ae816319f348d" [label="/bin/sh -c apt-key update   && apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62   && echo \"deb http://nginx.org/packages/mainline/debian/ jessie nginx\" >> /etc/apt/sources.list   && apt-get update   && apt-get install --no-install-recommends --no-install-suggests -y     ca-certificates     nginx=${NGINX_VERSION}     nginx-module-geoip     nginx-module-image-filter     nginx-module-perl     nginx-module-njs     gettext-base     gitweb     autoconf     build-essential     pkg-config     automake     libtool     libfcgi-dev     git-core     gitweb" shape="box"];
  "sha256:f7d1a6b4fff653f9c905fb86be1afb4d58ec0122f9c529744fc3cc3692be33fe" [label="/bin/sh -c git clone https://github.com/gnosek/fcgiwrap.git     && cd fcgiwrap/     && autoreconf -i     && ./configure     && make     && make install     && cp fcgiwrap /usr/bin" shape="box"];
  "sha256:f0c8a42d9ab49c2ece9b8222763b0d9597e068239a74617b787833631a0278ef" [label="/bin/sh -c mkdir -p /var/www/git     && ln -s /usr/lib/cgi-bin/gitweb.cgi /var/www/git/gitweb.cgi     && chmod ugo+x /var/www/git/gitweb.cgi" shape="box"];
  "sha256:426ad68e80809414eccd755dd146f73531b9e1a34a22391889a845cf1a6f5ff8" [label="copy{src=/infra/docker/depot/external/files/nginx/gitweb.conf, dest=/etc/gitweb.conf}" shape="note"];
  "sha256:a9866421b468e4e6cdff7ba54a878557856b346ea76a025de96128dea1d06d8f" [label="copy{src=/infra/docker/depot/external/files/nginx/git.conf, dest=/etc/nginx/conf.d/git.conf}" shape="note"];
  "sha256:2226f17c73268699fd7afc4b816d6838826a2b4379b8a59d35ac1846f2df153d" [label="copy{src=/infra/docker/depot/external/files/bin/spawn-fcgi, dest=/usr/bin/spawn-fcgi}" shape="note"];
  "sha256:f42aac8be5a75ad8261ecca05fa8412b560bfad4f09487641a25690d6bca61b7" [label="copy{src=/infra/docker/depot/external/files/init.d/spawn-fcgi, dest=/etc/init.d/spawn-fcgi}" shape="note"];
  "sha256:45ec72ec0d996ee19df16cf92a71b1b23a75f89a2925877c2d38faba0ac52a6f" [label="copy{src=/infra/docker/depot/external/files/start.sh, dest=/start.sh}" shape="note"];
  "sha256:a4073a51915a249b4e1621e88c2d6628079b43670bb0cae85f0efcc639f7e74a" [label="copy{src=/infra/docker/depot/external/files/git/gitconfig, dest=/etc/gitconfig}" shape="note"];
  "sha256:5c46bc0d87ec127ec15493a0d54c90bb97691d638751375a7173784287ca2fbd" [label="/bin/sh -c rm /etc/nginx/conf.d/default.conf   && chmod +x /usr/bin/spawn-fcgi   && chmod +x /etc/init.d/spawn-fcgi   && chmod +x /start.sh" shape="box"];
  "sha256:77018f668c5f62b69c76f56eca02b674c619a00431bb6f0467dea829fdbf47bb" [label="sha256:77018f668c5f62b69c76f56eca02b674c619a00431bb6f0467dea829fdbf47bb" shape="plaintext"];
  "sha256:3c00243e8f7c3d50961f2fee7b92f871e7b1c10c57b03b84e8d0cee90f23f708" -> "sha256:7f5b62cf52ca7e3f6780b7ea309d75597159e0348f1598effac5177bd1e549a3" [label=""];
  "sha256:7f5b62cf52ca7e3f6780b7ea309d75597159e0348f1598effac5177bd1e549a3" -> "sha256:660647d9e91fdd192cf2bc01ec8cc3b3a30cc7e5acd065a84f4ae816319f348d" [label=""];
  "sha256:660647d9e91fdd192cf2bc01ec8cc3b3a30cc7e5acd065a84f4ae816319f348d" -> "sha256:f7d1a6b4fff653f9c905fb86be1afb4d58ec0122f9c529744fc3cc3692be33fe" [label=""];
  "sha256:f7d1a6b4fff653f9c905fb86be1afb4d58ec0122f9c529744fc3cc3692be33fe" -> "sha256:f0c8a42d9ab49c2ece9b8222763b0d9597e068239a74617b787833631a0278ef" [label=""];
  "sha256:f0c8a42d9ab49c2ece9b8222763b0d9597e068239a74617b787833631a0278ef" -> "sha256:426ad68e80809414eccd755dd146f73531b9e1a34a22391889a845cf1a6f5ff8" [label=""];
  "sha256:401145b0b3ec7fb236683f9f2d4bd8a67021613b4ce8f2618910bd5dc2398ff5" -> "sha256:426ad68e80809414eccd755dd146f73531b9e1a34a22391889a845cf1a6f5ff8" [label=""];
  "sha256:426ad68e80809414eccd755dd146f73531b9e1a34a22391889a845cf1a6f5ff8" -> "sha256:a9866421b468e4e6cdff7ba54a878557856b346ea76a025de96128dea1d06d8f" [label=""];
  "sha256:401145b0b3ec7fb236683f9f2d4bd8a67021613b4ce8f2618910bd5dc2398ff5" -> "sha256:a9866421b468e4e6cdff7ba54a878557856b346ea76a025de96128dea1d06d8f" [label=""];
  "sha256:a9866421b468e4e6cdff7ba54a878557856b346ea76a025de96128dea1d06d8f" -> "sha256:2226f17c73268699fd7afc4b816d6838826a2b4379b8a59d35ac1846f2df153d" [label=""];
  "sha256:401145b0b3ec7fb236683f9f2d4bd8a67021613b4ce8f2618910bd5dc2398ff5" -> "sha256:2226f17c73268699fd7afc4b816d6838826a2b4379b8a59d35ac1846f2df153d" [label=""];
  "sha256:2226f17c73268699fd7afc4b816d6838826a2b4379b8a59d35ac1846f2df153d" -> "sha256:f42aac8be5a75ad8261ecca05fa8412b560bfad4f09487641a25690d6bca61b7" [label=""];
  "sha256:401145b0b3ec7fb236683f9f2d4bd8a67021613b4ce8f2618910bd5dc2398ff5" -> "sha256:f42aac8be5a75ad8261ecca05fa8412b560bfad4f09487641a25690d6bca61b7" [label=""];
  "sha256:f42aac8be5a75ad8261ecca05fa8412b560bfad4f09487641a25690d6bca61b7" -> "sha256:45ec72ec0d996ee19df16cf92a71b1b23a75f89a2925877c2d38faba0ac52a6f" [label=""];
  "sha256:401145b0b3ec7fb236683f9f2d4bd8a67021613b4ce8f2618910bd5dc2398ff5" -> "sha256:45ec72ec0d996ee19df16cf92a71b1b23a75f89a2925877c2d38faba0ac52a6f" [label=""];
  "sha256:45ec72ec0d996ee19df16cf92a71b1b23a75f89a2925877c2d38faba0ac52a6f" -> "sha256:a4073a51915a249b4e1621e88c2d6628079b43670bb0cae85f0efcc639f7e74a" [label=""];
  "sha256:401145b0b3ec7fb236683f9f2d4bd8a67021613b4ce8f2618910bd5dc2398ff5" -> "sha256:a4073a51915a249b4e1621e88c2d6628079b43670bb0cae85f0efcc639f7e74a" [label=""];
  "sha256:a4073a51915a249b4e1621e88c2d6628079b43670bb0cae85f0efcc639f7e74a" -> "sha256:5c46bc0d87ec127ec15493a0d54c90bb97691d638751375a7173784287ca2fbd" [label=""];
  "sha256:5c46bc0d87ec127ec15493a0d54c90bb97691d638751375a7173784287ca2fbd" -> "sha256:77018f668c5f62b69c76f56eca02b674c619a00431bb6f0467dea829fdbf47bb" [label=""];
}

