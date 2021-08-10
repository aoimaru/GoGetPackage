[app/sources/229661747.Dockerfile]
digraph {
  "sha256:c735fb7f447c51d14a476ae7a56855a089b7150b69d34f6a080b74ea6d48fec7" [label="docker-image://docker.io/library/centos:centos7" shape="ellipse"];
  "sha256:d4f35334b40d167b267855941f47adeb24de2bfefb2bb26d75feec2971047cc8" [label="/bin/sh -c sed -i '/nodocs/d' /etc/yum.conf" shape="box"];
  "sha256:4320ca473355c0aad32f35e522d0312c6294e0f4fb69be4b2f90fc817d9e6624" [label="/bin/sh -c yum -y update &&     yum -y install         epel-release         git         yum-utils         tar         bzip2         rpm-build         make         patch         httpd         mod_wsgi         mod_ssl         lsof         python-simplejson         PyGreSQL         pyOpenSSL         python-backports         python-backports-ssl_match_hostname         python-cheetah         python-coverage         python-dateutil         python-devel         python-kerberos         python-krbV         python-qpid         python-saslwrapper         saslwrapper         postgresql         sudo         mod_auth_kerb         python-cheetah         python-markdown         python-pygments         python-setuptools         python-sphinx         python-coverage         openssh-server         wget     ; yum clean all" shape="box"];
  "sha256:3ea13cd83d7163d0f37979f5226449309aa0cccbc73ead01012f8ff9a776c38f" [label="local://context" shape="ellipse"];
  "sha256:5e507ed938f979d21d4dd7d41ec63505585a1131387f8484242ab40958cce16e" [label="copy{src=/etc, dest=/etc/}" shape="note"];
  "sha256:0719e527435f217d459fdf33673bc153cf3b765481782064bd32c433bcda1f46" [label="copy{src=/bin, dest=/usr/local/bin/}" shape="note"];
  "sha256:86ab79852269b9a327b479bb2ecb622ed06c812ad0b43235ba3e7276ea9afff2" [label="copy{src=/root, dest=/root/}" shape="note"];
  "sha256:de7954bc1ef6f876c5dc4c138b540559f034aa6746b24a1a9a98624d8c943af4" [label="/bin/sh -c chmod 600 /root/.pgpass" shape="box"];
  "sha256:91aad313dbbeb22ac275040432d07c110d1fd6c24fb03cb758e8a7d02157b7d6" [label="/bin/sh -c chmod +x /usr/local/bin/*" shape="box"];
  "sha256:068b87889353bf7ab707be365b2c013027102eaedb8db2faf75d6c717903bd08" [label="copy{src=/cgi/*.py, dest=/var/www/cgi-bin/}" shape="note"];
  "sha256:eb5c976c84f9d849b4efddb1dc12cae8f39e7f0e77860edf305c58c0858111c6" [label="/bin/sh -c chmod o+rx /var/log /var/log/httpd" shape="box"];
  "sha256:fdd7defa6263d6eedf2380bb2b6a53f648392031328a8d88185cbe1b68ed47fc" [label="/bin/sh -c chmod +x /var/www/cgi-bin/*.py" shape="box"];
  "sha256:491803806fc101d069a0fb335960d741ef8163f1f117f0e541c93df8bb5ff914" [label="/bin/sh -c chmod o+rwx /var/www/html" shape="box"];
  "sha256:9820263acf8fce1f49698a36137f8920e2f2c12a02356b16db2502d19494f1bf" [label="/bin/sh -c chmod -R o+rx /etc/httpd" shape="box"];
  "sha256:42c9b10015ab25d5533dde821a45f17bf94f14da1a1499e92806aa51f5d529e5" [label="/bin/sh -c mkdir -p /mnt/koji/{packages,repos,work,scratch}" shape="box"];
  "sha256:bae560c535abefc9fd9e80be46e50ab22e9a4bdc64fd21e4c140c84d88243cbd" [label="/bin/sh -c chown apache.apache /mnt/koji/*" shape="box"];
  "sha256:205383ce4b3646115b625a0023fe6e5563ebfe1f7b7162218648c570d987e580" [label="/bin/sh -c echo 'root:mypassword' | chpasswd" shape="box"];
  "sha256:21db575c3e0cff39614526fef8f309155e1dcedb3f9792a6739c6f64db85345a" [label="sha256:21db575c3e0cff39614526fef8f309155e1dcedb3f9792a6739c6f64db85345a" shape="plaintext"];
  "sha256:c735fb7f447c51d14a476ae7a56855a089b7150b69d34f6a080b74ea6d48fec7" -> "sha256:d4f35334b40d167b267855941f47adeb24de2bfefb2bb26d75feec2971047cc8" [label=""];
  "sha256:d4f35334b40d167b267855941f47adeb24de2bfefb2bb26d75feec2971047cc8" -> "sha256:4320ca473355c0aad32f35e522d0312c6294e0f4fb69be4b2f90fc817d9e6624" [label=""];
  "sha256:4320ca473355c0aad32f35e522d0312c6294e0f4fb69be4b2f90fc817d9e6624" -> "sha256:5e507ed938f979d21d4dd7d41ec63505585a1131387f8484242ab40958cce16e" [label=""];
  "sha256:3ea13cd83d7163d0f37979f5226449309aa0cccbc73ead01012f8ff9a776c38f" -> "sha256:5e507ed938f979d21d4dd7d41ec63505585a1131387f8484242ab40958cce16e" [label=""];
  "sha256:5e507ed938f979d21d4dd7d41ec63505585a1131387f8484242ab40958cce16e" -> "sha256:0719e527435f217d459fdf33673bc153cf3b765481782064bd32c433bcda1f46" [label=""];
  "sha256:3ea13cd83d7163d0f37979f5226449309aa0cccbc73ead01012f8ff9a776c38f" -> "sha256:0719e527435f217d459fdf33673bc153cf3b765481782064bd32c433bcda1f46" [label=""];
  "sha256:0719e527435f217d459fdf33673bc153cf3b765481782064bd32c433bcda1f46" -> "sha256:86ab79852269b9a327b479bb2ecb622ed06c812ad0b43235ba3e7276ea9afff2" [label=""];
  "sha256:3ea13cd83d7163d0f37979f5226449309aa0cccbc73ead01012f8ff9a776c38f" -> "sha256:86ab79852269b9a327b479bb2ecb622ed06c812ad0b43235ba3e7276ea9afff2" [label=""];
  "sha256:86ab79852269b9a327b479bb2ecb622ed06c812ad0b43235ba3e7276ea9afff2" -> "sha256:de7954bc1ef6f876c5dc4c138b540559f034aa6746b24a1a9a98624d8c943af4" [label=""];
  "sha256:de7954bc1ef6f876c5dc4c138b540559f034aa6746b24a1a9a98624d8c943af4" -> "sha256:91aad313dbbeb22ac275040432d07c110d1fd6c24fb03cb758e8a7d02157b7d6" [label=""];
  "sha256:91aad313dbbeb22ac275040432d07c110d1fd6c24fb03cb758e8a7d02157b7d6" -> "sha256:068b87889353bf7ab707be365b2c013027102eaedb8db2faf75d6c717903bd08" [label=""];
  "sha256:3ea13cd83d7163d0f37979f5226449309aa0cccbc73ead01012f8ff9a776c38f" -> "sha256:068b87889353bf7ab707be365b2c013027102eaedb8db2faf75d6c717903bd08" [label=""];
  "sha256:068b87889353bf7ab707be365b2c013027102eaedb8db2faf75d6c717903bd08" -> "sha256:eb5c976c84f9d849b4efddb1dc12cae8f39e7f0e77860edf305c58c0858111c6" [label=""];
  "sha256:eb5c976c84f9d849b4efddb1dc12cae8f39e7f0e77860edf305c58c0858111c6" -> "sha256:fdd7defa6263d6eedf2380bb2b6a53f648392031328a8d88185cbe1b68ed47fc" [label=""];
  "sha256:fdd7defa6263d6eedf2380bb2b6a53f648392031328a8d88185cbe1b68ed47fc" -> "sha256:491803806fc101d069a0fb335960d741ef8163f1f117f0e541c93df8bb5ff914" [label=""];
  "sha256:491803806fc101d069a0fb335960d741ef8163f1f117f0e541c93df8bb5ff914" -> "sha256:9820263acf8fce1f49698a36137f8920e2f2c12a02356b16db2502d19494f1bf" [label=""];
  "sha256:9820263acf8fce1f49698a36137f8920e2f2c12a02356b16db2502d19494f1bf" -> "sha256:42c9b10015ab25d5533dde821a45f17bf94f14da1a1499e92806aa51f5d529e5" [label=""];
  "sha256:42c9b10015ab25d5533dde821a45f17bf94f14da1a1499e92806aa51f5d529e5" -> "sha256:bae560c535abefc9fd9e80be46e50ab22e9a4bdc64fd21e4c140c84d88243cbd" [label=""];
  "sha256:bae560c535abefc9fd9e80be46e50ab22e9a4bdc64fd21e4c140c84d88243cbd" -> "sha256:205383ce4b3646115b625a0023fe6e5563ebfe1f7b7162218648c570d987e580" [label=""];
  "sha256:205383ce4b3646115b625a0023fe6e5563ebfe1f7b7162218648c570d987e580" -> "sha256:21db575c3e0cff39614526fef8f309155e1dcedb3f9792a6739c6f64db85345a" [label=""];
}

