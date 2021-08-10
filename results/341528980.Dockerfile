[app/sources/341528980.Dockerfile]
digraph {
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:d7a3384955eb9a4ec6193505f574c23e15d64a8ce131b485dc13947f3233a014" [label="/bin/sh -c yum -y update; yum clean all" shape="box"];
  "sha256:2d74d85e334fdfc88be87aa0e887f3f9f0ef7c7b083ef5e913145bc08ffda46f" [label="/bin/sh -c yum -y install epel-release; yum clean all" shape="box"];
  "sha256:bebcc214e51af0c64ad4e9b81212c207545b4dfcaf43a07302e6e6027cdf050f" [label="/bin/sh -c rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-6.rpm" shape="box"];
  "sha256:33c0e4668b70b2be3eda1f69581e501f818c2232be085f4242634b5f9be688bd" [label="local://context" shape="ellipse"];
  "sha256:38432fd31dd4cb03c60822790988ed086d6eaa9853bf820883bb44456b0f5403" [label="copy{src=/nginx.repo, dest=/etc/yum.repos.d/nginx.repo}" shape="note"];
  "sha256:f12a8c90fe0c483a0b62111435a6dfd4e1655726a30d0af5e8af5433330bbb1b" [label="/bin/sh -c yum install -y python-setuptools; yum clean all" shape="box"];
  "sha256:552447483e2f87e2ac47ddebb6993ca4fd7ee677d1d0ae993148035f919b19e4" [label="/bin/sh -c easy_install pip" shape="box"];
  "sha256:4e6d770abe0d004a9a21b35aa3f9dba0cc3c6c6b5dee8f1246845823a8977428" [label="/bin/sh -c pip install supervisor" shape="box"];
  "sha256:5be04ea83447111487acb7614d56e064386bd8c515c95bb9e694367f344de4ec" [label="/bin/sh -c yum -y install nginx; yum clean all" shape="box"];
  "sha256:0f597c7c36fee33e45e9aa81d1d8bfb87adb2f37b78a53d2e0cfd1d70a8e5c77" [label="/bin/sh -c yum -y --enablerepo=remi,remi-php56 --skip-broken install php-fpm php-common php-cli php-pdo php-mysql php-gd php-imap php-ldap php-odbc php-opcache php-pear php-xml php-devel php-xmlrpc php-mbstring php-mcrypt php-bcmath php-mhash libmcrypt; yum clean all" shape="box"];
  "sha256:11843d415a053616aaa8fb594468d4d2a5a9a0cfa372ca23acbd0399f2d110cb" [label="copy{src=/nginx.conf, dest=/etc/nginx/nginx.conf}" shape="note"];
  "sha256:2f6b7b0dc21491b2622936c6bbdf482ad526f3682aca2785ea19db74b12e2fb1" [label="copy{src=/default.conf, dest=/etc/nginx/conf.d/default.conf}" shape="note"];
  "sha256:43cf724a189dee9e21acefbe1b0dc841a827475c3f15c1a50246552b6e449977" [label="copy{src=/supervisord.conf, dest=/etc/}" shape="note"];
  "sha256:e01cc5eb15ead5eab9074ad7f905d53675f7c56f582a04a402579b7fdb92547e" [label="copy{src=/index.php, dest=/var/www/index.php}" shape="note"];
  "sha256:665f72c391b4504a4caab6a0a69df84854fb77931418b6c3b9b47568a78724d1" [label="sha256:665f72c391b4504a4caab6a0a69df84854fb77931418b6c3b9b47568a78724d1" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:d7a3384955eb9a4ec6193505f574c23e15d64a8ce131b485dc13947f3233a014" [label=""];
  "sha256:d7a3384955eb9a4ec6193505f574c23e15d64a8ce131b485dc13947f3233a014" -> "sha256:2d74d85e334fdfc88be87aa0e887f3f9f0ef7c7b083ef5e913145bc08ffda46f" [label=""];
  "sha256:2d74d85e334fdfc88be87aa0e887f3f9f0ef7c7b083ef5e913145bc08ffda46f" -> "sha256:bebcc214e51af0c64ad4e9b81212c207545b4dfcaf43a07302e6e6027cdf050f" [label=""];
  "sha256:bebcc214e51af0c64ad4e9b81212c207545b4dfcaf43a07302e6e6027cdf050f" -> "sha256:38432fd31dd4cb03c60822790988ed086d6eaa9853bf820883bb44456b0f5403" [label=""];
  "sha256:33c0e4668b70b2be3eda1f69581e501f818c2232be085f4242634b5f9be688bd" -> "sha256:38432fd31dd4cb03c60822790988ed086d6eaa9853bf820883bb44456b0f5403" [label=""];
  "sha256:38432fd31dd4cb03c60822790988ed086d6eaa9853bf820883bb44456b0f5403" -> "sha256:f12a8c90fe0c483a0b62111435a6dfd4e1655726a30d0af5e8af5433330bbb1b" [label=""];
  "sha256:f12a8c90fe0c483a0b62111435a6dfd4e1655726a30d0af5e8af5433330bbb1b" -> "sha256:552447483e2f87e2ac47ddebb6993ca4fd7ee677d1d0ae993148035f919b19e4" [label=""];
  "sha256:552447483e2f87e2ac47ddebb6993ca4fd7ee677d1d0ae993148035f919b19e4" -> "sha256:4e6d770abe0d004a9a21b35aa3f9dba0cc3c6c6b5dee8f1246845823a8977428" [label=""];
  "sha256:4e6d770abe0d004a9a21b35aa3f9dba0cc3c6c6b5dee8f1246845823a8977428" -> "sha256:5be04ea83447111487acb7614d56e064386bd8c515c95bb9e694367f344de4ec" [label=""];
  "sha256:5be04ea83447111487acb7614d56e064386bd8c515c95bb9e694367f344de4ec" -> "sha256:0f597c7c36fee33e45e9aa81d1d8bfb87adb2f37b78a53d2e0cfd1d70a8e5c77" [label=""];
  "sha256:0f597c7c36fee33e45e9aa81d1d8bfb87adb2f37b78a53d2e0cfd1d70a8e5c77" -> "sha256:11843d415a053616aaa8fb594468d4d2a5a9a0cfa372ca23acbd0399f2d110cb" [label=""];
  "sha256:33c0e4668b70b2be3eda1f69581e501f818c2232be085f4242634b5f9be688bd" -> "sha256:11843d415a053616aaa8fb594468d4d2a5a9a0cfa372ca23acbd0399f2d110cb" [label=""];
  "sha256:11843d415a053616aaa8fb594468d4d2a5a9a0cfa372ca23acbd0399f2d110cb" -> "sha256:2f6b7b0dc21491b2622936c6bbdf482ad526f3682aca2785ea19db74b12e2fb1" [label=""];
  "sha256:33c0e4668b70b2be3eda1f69581e501f818c2232be085f4242634b5f9be688bd" -> "sha256:2f6b7b0dc21491b2622936c6bbdf482ad526f3682aca2785ea19db74b12e2fb1" [label=""];
  "sha256:2f6b7b0dc21491b2622936c6bbdf482ad526f3682aca2785ea19db74b12e2fb1" -> "sha256:43cf724a189dee9e21acefbe1b0dc841a827475c3f15c1a50246552b6e449977" [label=""];
  "sha256:33c0e4668b70b2be3eda1f69581e501f818c2232be085f4242634b5f9be688bd" -> "sha256:43cf724a189dee9e21acefbe1b0dc841a827475c3f15c1a50246552b6e449977" [label=""];
  "sha256:43cf724a189dee9e21acefbe1b0dc841a827475c3f15c1a50246552b6e449977" -> "sha256:e01cc5eb15ead5eab9074ad7f905d53675f7c56f582a04a402579b7fdb92547e" [label=""];
  "sha256:33c0e4668b70b2be3eda1f69581e501f818c2232be085f4242634b5f9be688bd" -> "sha256:e01cc5eb15ead5eab9074ad7f905d53675f7c56f582a04a402579b7fdb92547e" [label=""];
  "sha256:e01cc5eb15ead5eab9074ad7f905d53675f7c56f582a04a402579b7fdb92547e" -> "sha256:665f72c391b4504a4caab6a0a69df84854fb77931418b6c3b9b47568a78724d1" [label=""];
}

