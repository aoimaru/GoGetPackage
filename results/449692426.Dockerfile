[app/sources/449692426.Dockerfile]
digraph {
  "sha256:5afce64046e3aeb1081f217f2d57ec60e23a02e047881568eddb5209e9a729ff" [label="docker-image://docker.io/phusion/baseimage:latest" shape="ellipse"];
  "sha256:92c41ff08964de4dbe218b71c2b7673f5546211ca6f5e7720665c4f47d226c31" [label="/bin/sh -c apt-get -y update" shape="box"];
  "sha256:59817fe75d16d42f8753fd3cf585abf6cc24e7682d83467885efec6065481c1d" [label="/bin/sh -c apt-get -y install apache2 mysql-client libapache2-mod-php5 php5-gd php5-json php5-mysql php5-sqlite php5-curl php5-intl php5-mcrypt php5-imagick php5-memcache bzip2 wget" shape="box"];
  "sha256:9ab00a8bb6f992df2b0018926fa10a5e93beb69c6d799cbe4f4653044456601e" [label="/bin/sh -c apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:636421278a06d1ce61729da352a189b70627f929e0da94a1f1baee2dec05f254" [label="/bin/sh -c /etc/my_init.d/00_regen_ssh_host_keys.sh" shape="box"];
  "sha256:c316052699b46812614c97b7d0681927e2be85a3dc79d9e8cdd3427a62c3219d" [label="/bin/sh -c curl https://download.owncloud.org/community/owncloud-7.0.3.tar.bz2 | tar jx -C /var/www/" shape="box"];
  "sha256:76153fc44638d0b8f379c51915374bdc6d875385c410b5c71378b6681ce538cc" [label="/bin/sh -c chown -R www-data:www-data /var/www/owncloud" shape="box"];
  "sha256:52b85e44d064a4588d729be478526b148ff9a863aa868233f91af42c93b1815f" [label="local://context" shape="ellipse"];
  "sha256:c244caf5486e493aca7e4b8b629264ab6e7459bc50e2db72c683a16ade55627d" [label="copy{src=/config/001-owncloud.conf, dest=/etc/apache2/sites-available/}" shape="note"];
  "sha256:6ab6b47c0176e0b583c967aed9803c6ae358fc0f9b36375196874fa04b86a2b4" [label="/bin/sh -c rm -f /etc/apache2/sites-enabled/000*" shape="box"];
  "sha256:89e43166723d7458ea1d7df791eb62843fb7e1da7e560502a29c585aad7548a9" [label="/bin/sh -c ln -s /etc/apache2/sites-available/001-owncloud.conf /etc/apache2/sites-enabled/" shape="box"];
  "sha256:c07bb852e252c9e29a641a54c25b8f40378716d50c4c801af6c421e0b5183c76" [label="/bin/sh -c a2enmod rewrite" shape="box"];
  "sha256:6a4ac270391d8172444fa76183c549fe9b618707dc032d683254eab13853dd5c" [label="/bin/sh -c mkdir /etc/service/apache" shape="box"];
  "sha256:15b95d13abf3d1ea073a7ad25865b3992ea24c5603ee9c3adf5e6ec9db596887" [label="copy{src=/runit/apache.sh, dest=/etc/service/apache/run}" shape="note"];
  "sha256:b5dfd2840dca277957ba296f4c8a20138c31dae985e5a66b389b14f9b77db8d0" [label="/bin/sh -c mv /var/www/owncloud/config /var/www/owncloud/config_old" shape="box"];
  "sha256:5e50fd860ee6c77d4756dd7752d5e1a00c132a454e84e985f1876f4f1f1229f4" [label="copy{src=/config/use_memcached.sh, dest=/etc/my_init.d/use_memcached.sh}" shape="note"];
  "sha256:d0daa3922efc0dc035835c9b17f437f4e5988069111d54713cc06d0bdad1bf8b" [label="/bin/sh -c chmod +x /etc/my_init.d/use_memcached.sh" shape="box"];
  "sha256:e1024954ead1794bd020973fc0db9f5b2a24199c01e69b62eb5a610bcc258728" [label="copy{src=/config/init_volume.sh, dest=/etc/my_init.d/init_volume.sh}" shape="note"];
  "sha256:8e93dd16517c3ac3c7f84365825c24ca942cd83c36fa3fc5adaf4f1fb84e9732" [label="/bin/sh -c chmod +x /etc/my_init.d/init_volume.sh" shape="box"];
  "sha256:d52c83585f218509e47772d648a1c7f082bf3deaabce2401cc8fc48a7f11838f" [label="sha256:d52c83585f218509e47772d648a1c7f082bf3deaabce2401cc8fc48a7f11838f" shape="plaintext"];
  "sha256:5afce64046e3aeb1081f217f2d57ec60e23a02e047881568eddb5209e9a729ff" -> "sha256:92c41ff08964de4dbe218b71c2b7673f5546211ca6f5e7720665c4f47d226c31" [label=""];
  "sha256:92c41ff08964de4dbe218b71c2b7673f5546211ca6f5e7720665c4f47d226c31" -> "sha256:59817fe75d16d42f8753fd3cf585abf6cc24e7682d83467885efec6065481c1d" [label=""];
  "sha256:59817fe75d16d42f8753fd3cf585abf6cc24e7682d83467885efec6065481c1d" -> "sha256:9ab00a8bb6f992df2b0018926fa10a5e93beb69c6d799cbe4f4653044456601e" [label=""];
  "sha256:9ab00a8bb6f992df2b0018926fa10a5e93beb69c6d799cbe4f4653044456601e" -> "sha256:636421278a06d1ce61729da352a189b70627f929e0da94a1f1baee2dec05f254" [label=""];
  "sha256:636421278a06d1ce61729da352a189b70627f929e0da94a1f1baee2dec05f254" -> "sha256:c316052699b46812614c97b7d0681927e2be85a3dc79d9e8cdd3427a62c3219d" [label=""];
  "sha256:c316052699b46812614c97b7d0681927e2be85a3dc79d9e8cdd3427a62c3219d" -> "sha256:76153fc44638d0b8f379c51915374bdc6d875385c410b5c71378b6681ce538cc" [label=""];
  "sha256:76153fc44638d0b8f379c51915374bdc6d875385c410b5c71378b6681ce538cc" -> "sha256:c244caf5486e493aca7e4b8b629264ab6e7459bc50e2db72c683a16ade55627d" [label=""];
  "sha256:52b85e44d064a4588d729be478526b148ff9a863aa868233f91af42c93b1815f" -> "sha256:c244caf5486e493aca7e4b8b629264ab6e7459bc50e2db72c683a16ade55627d" [label=""];
  "sha256:c244caf5486e493aca7e4b8b629264ab6e7459bc50e2db72c683a16ade55627d" -> "sha256:6ab6b47c0176e0b583c967aed9803c6ae358fc0f9b36375196874fa04b86a2b4" [label=""];
  "sha256:6ab6b47c0176e0b583c967aed9803c6ae358fc0f9b36375196874fa04b86a2b4" -> "sha256:89e43166723d7458ea1d7df791eb62843fb7e1da7e560502a29c585aad7548a9" [label=""];
  "sha256:89e43166723d7458ea1d7df791eb62843fb7e1da7e560502a29c585aad7548a9" -> "sha256:c07bb852e252c9e29a641a54c25b8f40378716d50c4c801af6c421e0b5183c76" [label=""];
  "sha256:c07bb852e252c9e29a641a54c25b8f40378716d50c4c801af6c421e0b5183c76" -> "sha256:6a4ac270391d8172444fa76183c549fe9b618707dc032d683254eab13853dd5c" [label=""];
  "sha256:6a4ac270391d8172444fa76183c549fe9b618707dc032d683254eab13853dd5c" -> "sha256:15b95d13abf3d1ea073a7ad25865b3992ea24c5603ee9c3adf5e6ec9db596887" [label=""];
  "sha256:52b85e44d064a4588d729be478526b148ff9a863aa868233f91af42c93b1815f" -> "sha256:15b95d13abf3d1ea073a7ad25865b3992ea24c5603ee9c3adf5e6ec9db596887" [label=""];
  "sha256:15b95d13abf3d1ea073a7ad25865b3992ea24c5603ee9c3adf5e6ec9db596887" -> "sha256:b5dfd2840dca277957ba296f4c8a20138c31dae985e5a66b389b14f9b77db8d0" [label=""];
  "sha256:b5dfd2840dca277957ba296f4c8a20138c31dae985e5a66b389b14f9b77db8d0" -> "sha256:5e50fd860ee6c77d4756dd7752d5e1a00c132a454e84e985f1876f4f1f1229f4" [label=""];
  "sha256:52b85e44d064a4588d729be478526b148ff9a863aa868233f91af42c93b1815f" -> "sha256:5e50fd860ee6c77d4756dd7752d5e1a00c132a454e84e985f1876f4f1f1229f4" [label=""];
  "sha256:5e50fd860ee6c77d4756dd7752d5e1a00c132a454e84e985f1876f4f1f1229f4" -> "sha256:d0daa3922efc0dc035835c9b17f437f4e5988069111d54713cc06d0bdad1bf8b" [label=""];
  "sha256:d0daa3922efc0dc035835c9b17f437f4e5988069111d54713cc06d0bdad1bf8b" -> "sha256:e1024954ead1794bd020973fc0db9f5b2a24199c01e69b62eb5a610bcc258728" [label=""];
  "sha256:52b85e44d064a4588d729be478526b148ff9a863aa868233f91af42c93b1815f" -> "sha256:e1024954ead1794bd020973fc0db9f5b2a24199c01e69b62eb5a610bcc258728" [label=""];
  "sha256:e1024954ead1794bd020973fc0db9f5b2a24199c01e69b62eb5a610bcc258728" -> "sha256:8e93dd16517c3ac3c7f84365825c24ca942cd83c36fa3fc5adaf4f1fb84e9732" [label=""];
  "sha256:8e93dd16517c3ac3c7f84365825c24ca942cd83c36fa3fc5adaf4f1fb84e9732" -> "sha256:d52c83585f218509e47772d648a1c7f082bf3deaabce2401cc8fc48a7f11838f" [label=""];
}

