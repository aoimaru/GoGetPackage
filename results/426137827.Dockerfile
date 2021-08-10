[app/sources/426137827.Dockerfile]
digraph {
  "sha256:09ad9e616bb4bb444220b92344df1b6924f52a2491867305586d720078ac8310" [label="local://context" shape="ellipse"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:adaf8d86b4c839ac98d8da31a4eb9da2645e9f3cdf8404a1138b6acdcb9e6fc3" [label="/bin/sh -c ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone" shape="box"];
  "sha256:a39587e116ce17bf41d40a4532a6d458f03f995bbcc6bcf553f12cb874332993" [label="/bin/sh -c yum update -y && yum install epel-release -y && yum update -y && yum install wget unzip epel-release nginx  xz gcc automake zlib-devel openssl-devel supervisor  groupinstall development  libxslt-devel libxml2-devel libcurl-devel git -y" shape="box"];
  "sha256:fda09b50a48d995750789d816b0a365a39eafe4cf18e4e19e8535e668a2cc0db" [label="/bin/sh -c wget https://www.python.org/ftp/python/3.6.6/Python-3.6.6.tar.xz" shape="box"];
  "sha256:1c2079c64ba102bbfc7504d98ecac775e608c9e501223622c1c86f4e360783b8" [label="/bin/sh -c xz -d Python-3.6.6.tar.xz && tar xvf Python-3.6.6.tar && cd Python-3.6.6 && ./configure && make && make install" shape="box"];
  "sha256:d66d8c44dadcfd0075106ccc8d5783df6acd1d8ad85963855e375cb2a8a0340b" [label="/bin/sh -c pip3 install --upgrade pip" shape="box"];
  "sha256:8da8840553378ac1c508b1720961926078f74939e825e94f475e48f35b7383f4" [label="/bin/sh -c pip3 install -U git+https://github.com/ss1917/ops_sdk.git" shape="box"];
  "sha256:ede1e4ef0881c935a6d9ded857224541a1103069978c8e99424be8beb6ad9d97" [label="/bin/sh -c mkdir -p /var/www/" shape="box"];
  "sha256:5c53d07c5b7829ded4ae005f3d2f314baf9def6302f0ebdb753f20d0b6d8a7f9" [label="copy{src=/, dest=/var/www/codo-admin/}" shape="note"];
  "sha256:f7cb7aa9b546b9375c0708d02f7bdef970bdfb4ae020f657ce23887ebfabe91c" [label="/bin/sh -c pip3 install -r /var/www/codo-admin/doc/requirements.txt" shape="box"];
  "sha256:81b78dd50a10ca432e3db518289c4b99adf4f2d5dbf9979cf0889327433509f3" [label="copy{src=/doc/nginx_ops.conf, dest=/etc/nginx/conf.d/default.conf}" shape="note"];
  "sha256:9ef69d8dfb29b281fd58da8a7db5dc0da73b95a766d025d3b1c14d75733fee7d" [label="copy{src=/doc/supervisor_ops.conf, dest=/etc/supervisord.conf}" shape="note"];
  "sha256:9c6651423cbe1571ad152a8cc181bbbc005bdb85502095a57a3d7edc52cce72a" [label="sha256:9c6651423cbe1571ad152a8cc181bbbc005bdb85502095a57a3d7edc52cce72a" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:adaf8d86b4c839ac98d8da31a4eb9da2645e9f3cdf8404a1138b6acdcb9e6fc3" [label=""];
  "sha256:adaf8d86b4c839ac98d8da31a4eb9da2645e9f3cdf8404a1138b6acdcb9e6fc3" -> "sha256:a39587e116ce17bf41d40a4532a6d458f03f995bbcc6bcf553f12cb874332993" [label=""];
  "sha256:a39587e116ce17bf41d40a4532a6d458f03f995bbcc6bcf553f12cb874332993" -> "sha256:fda09b50a48d995750789d816b0a365a39eafe4cf18e4e19e8535e668a2cc0db" [label=""];
  "sha256:fda09b50a48d995750789d816b0a365a39eafe4cf18e4e19e8535e668a2cc0db" -> "sha256:1c2079c64ba102bbfc7504d98ecac775e608c9e501223622c1c86f4e360783b8" [label=""];
  "sha256:1c2079c64ba102bbfc7504d98ecac775e608c9e501223622c1c86f4e360783b8" -> "sha256:d66d8c44dadcfd0075106ccc8d5783df6acd1d8ad85963855e375cb2a8a0340b" [label=""];
  "sha256:d66d8c44dadcfd0075106ccc8d5783df6acd1d8ad85963855e375cb2a8a0340b" -> "sha256:8da8840553378ac1c508b1720961926078f74939e825e94f475e48f35b7383f4" [label=""];
  "sha256:8da8840553378ac1c508b1720961926078f74939e825e94f475e48f35b7383f4" -> "sha256:ede1e4ef0881c935a6d9ded857224541a1103069978c8e99424be8beb6ad9d97" [label=""];
  "sha256:ede1e4ef0881c935a6d9ded857224541a1103069978c8e99424be8beb6ad9d97" -> "sha256:5c53d07c5b7829ded4ae005f3d2f314baf9def6302f0ebdb753f20d0b6d8a7f9" [label=""];
  "sha256:09ad9e616bb4bb444220b92344df1b6924f52a2491867305586d720078ac8310" -> "sha256:5c53d07c5b7829ded4ae005f3d2f314baf9def6302f0ebdb753f20d0b6d8a7f9" [label=""];
  "sha256:5c53d07c5b7829ded4ae005f3d2f314baf9def6302f0ebdb753f20d0b6d8a7f9" -> "sha256:f7cb7aa9b546b9375c0708d02f7bdef970bdfb4ae020f657ce23887ebfabe91c" [label=""];
  "sha256:f7cb7aa9b546b9375c0708d02f7bdef970bdfb4ae020f657ce23887ebfabe91c" -> "sha256:81b78dd50a10ca432e3db518289c4b99adf4f2d5dbf9979cf0889327433509f3" [label=""];
  "sha256:09ad9e616bb4bb444220b92344df1b6924f52a2491867305586d720078ac8310" -> "sha256:81b78dd50a10ca432e3db518289c4b99adf4f2d5dbf9979cf0889327433509f3" [label=""];
  "sha256:81b78dd50a10ca432e3db518289c4b99adf4f2d5dbf9979cf0889327433509f3" -> "sha256:9ef69d8dfb29b281fd58da8a7db5dc0da73b95a766d025d3b1c14d75733fee7d" [label=""];
  "sha256:09ad9e616bb4bb444220b92344df1b6924f52a2491867305586d720078ac8310" -> "sha256:9ef69d8dfb29b281fd58da8a7db5dc0da73b95a766d025d3b1c14d75733fee7d" [label=""];
  "sha256:9ef69d8dfb29b281fd58da8a7db5dc0da73b95a766d025d3b1c14d75733fee7d" -> "sha256:9c6651423cbe1571ad152a8cc181bbbc005bdb85502095a57a3d7edc52cce72a" [label=""];
}

