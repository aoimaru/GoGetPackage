[app/sources/362020426.Dockerfile]
digraph {
  "sha256:939913831daebf9439a61f4fc55c6a5dc0042cd3158bb3dd76b67868cbd4adc4" [label="local://context" shape="ellipse"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:93fb60e52962f5cb16837935088f591c7a4f937bd3501a188f463b14b9209f40" [label="copy{src=/etc.supervisor.conf.d.supervisord.conf, dest=/}" shape="note"];
  "sha256:1e8d3afa2caab882b705bc74c17a31299f9d3b08c0dc3ef75e7671ca7f3c482b" [label="/bin/sh -c echo \"deb http://ftp.debian.org/debian jessie-backports main\" > /etc/apt/sources.list.d/jessie-backports.list     && apt-get -y update     && apt -y install wget apt-transport-https     && apt -y dist-upgrade      && echo \"# Install Dumb-init\"     && wget https://github.com/Yelp/dumb-init/releases/download/v${DUMBINITVERSION}/dumb-init_${DUMBINITVERSION}_amd64.deb     && dpkg -i dumb-init_${DUMBINITVERSION}_amd64.deb     && apt install -f -y     && apt-get -y install nginx-extras supervisor libapache-session-perl libnet-ldap-perl \tlibcache-cache-perl libdbi-perl perl-modules libwww-perl libcache-cache-perl \tlibxml-simple-perl  libsoap-lite-perl libhtml-template-perl \tlibregexp-assemble-perl libjs-jquery libxml-libxml-perl libcrypt-rijndael-perl \tlibio-string-perl libxml-libxslt-perl libconfig-inifiles-perl libjson-perl \tlibstring-random-perl libemail-date-format-perl libmime-lite-perl \tlibcrypt-openssl-rsa-perl libdigest-hmac-perl libclone-perl libauthen-sasl-perl \tlibnet-cidr-lite-perl libcrypt-openssl-x509-perl libauthcas-perl libtest-pod-perl \tlibtest-mockobject-perl libauthen-captcha-perl libnet-openid-consumer-perl \tlibnet-openid-server-perl libunicode-string-perl libconvert-pem-perl \tlibmouse-perl libplack-perl libglib-perl liblasso-perl yui-compressor dh-systemd \tvim git make devscripts libdbd-sqlite3-perl libemail-sender-perl \tlibgd-securityimage-perl libimage-magick-perl libconvert-base32-perl \t&& apt-get install -y -t jessie-backports debhelper     && rm -rf /var/lib/apt/lists/*     && echo \"# Get trunk version of LL::NG\"     && cd /root     && git clone https://gitlab.ow2.org/lemonldap-ng/lemonldap-ng.git     && echo \"# Install LL::NG\"     && cd lemonldap-ng     && make debian-install-for-nginx     && rm -rf /tmp/*lemonldap* /root/lemonldap/*     && mv /etc.supervisor.conf.d.supervisord.conf /etc/supervisor/conf.d/supervisord.conf     && echo \"# Change SSO Domain\"     && sed -i \"s/example\\.com/${SSODOMAIN}/g\" /etc/lemonldap-ng/*  /var/lib/lemonldap-ng/test/index.pl     && echo \"#/var/lib/lemonldap-ng/conf/lmConf-1.js\"     && echo \"# Set debug mode\"     && sed -i \"s/logLevel\\s*=\\s*warn/logLevel = debug/\" /etc/lemonldap-ng/lemonldap-ng.ini     && echo \"# Enable sites\"     && cd /etc/nginx/sites-enabled     && ln -s ../sites-available/portal-nginx.conf     && ln -s ../sites-available/manager-nginx.conf     && ln -s ../sites-available/handler-nginx.conf     && ln -s ../sites-available/test-nginx.conf     && echo \"# Enable headers and custom logs\"     && perl -i -pe 's/#// if(/nginx-lua-headers/)' /etc/lemonldap-ng/test-nginx.conf     && perl -i -pe 's/#// if(/access\\.log/)' /etc/lemonldap-ng/handler-nginx.conf     && echo \"# No daemon\"     && echo \"\\ndaemon off;\" >> /etc/nginx/nginx.conf \t&& echo \"# Create run directory for llng-fastcgi-server\" \t&& mkdir -p /var/run/llng-fastcgi-server/ \t&& chown www-data:www-data /var/run/llng-fastcgi-server/" shape="box"];
  "sha256:c600aaa457c745dce866b7052b777545daf022efb245368561c2a18f8d46803b" [label="sha256:c600aaa457c745dce866b7052b777545daf022efb245368561c2a18f8d46803b" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:93fb60e52962f5cb16837935088f591c7a4f937bd3501a188f463b14b9209f40" [label=""];
  "sha256:939913831daebf9439a61f4fc55c6a5dc0042cd3158bb3dd76b67868cbd4adc4" -> "sha256:93fb60e52962f5cb16837935088f591c7a4f937bd3501a188f463b14b9209f40" [label=""];
  "sha256:93fb60e52962f5cb16837935088f591c7a4f937bd3501a188f463b14b9209f40" -> "sha256:1e8d3afa2caab882b705bc74c17a31299f9d3b08c0dc3ef75e7671ca7f3c482b" [label=""];
  "sha256:1e8d3afa2caab882b705bc74c17a31299f9d3b08c0dc3ef75e7671ca7f3c482b" -> "sha256:c600aaa457c745dce866b7052b777545daf022efb245368561c2a18f8d46803b" [label=""];
}
