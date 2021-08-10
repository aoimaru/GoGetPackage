[app/sources/337811994.Dockerfile]
digraph {
  "sha256:932fc7cf310cf68605c4c8ab32dff5e673f62f5ff15c4320f2345491c2238c78" [label="docker-image://registry.access.redhat.com/rhel:7.4-164" shape="ellipse"];
  "sha256:329f1c40e8bc92a7c1346126615765375aa770995644d5d2fe0a2820ea55144c" [label="/bin/sh -c yum clean all &&     yum -y update &&     yum install -y net-tools bind-utils vim  lsof screen nmap-ncat nmap openssl wget curl rsync openssh-clients krb5-workstation openldap-clients bzip2 sos less iputils traceroute tcpdump telnet mtr strace unzip xz mysql git wireshark setroubleshoot info man-db mlocate findutils grep gawk pcre yum-utils readline which diffutils sudo iptables tar nss cronie net-tools bridge-utils gnupg2 ncurses nano sed rsyslog python file ethtool iperf iproute acl coreutils gzip logrotate tmpwatch procps-ng bc  dmidecode emacs hdparm parted lvm2 make ntpdate patch policycoreutils util-linux expect python-docker-py     httpd mod_ssl mod_auth_mellon php &&     yum clean all" shape="box"];
  "sha256:79db9a76124d65beb0eae207a19c5190825fcab8d71851d2f4aa9656de74e1ee" [label="/bin/sh -c sed -i 's/Listen 80/Listen 8080/g' /etc/httpd/conf/httpd.conf &&     sed -i 's/443/8443/g' /etc/httpd/conf.d/ssl.conf &&     sed -i 's^/etc/pki/tls/certs/localhost.crt^/etc/httpd/conf/saml-demo.paas.local.crt^g' /etc/httpd/conf.d/ssl.conf &&     sed -i 's^/etc/pki/tls/private/localhost.key^/etc/httpd/conf/saml-demo.paas.local.key^g' /etc/httpd/conf.d/ssl.conf &&     sed -i 's/.*ServerName.*/ServerName saml-demo.local:443/g' /etc/httpd/conf.d/ssl.conf &&     mkdir -p /var/www/html/secret" shape="box"];
  "sha256:858b765e59d4bd086507bb53e61b4f574b56c7420b35cb35ce529d0e02d30705" [label="/bin/sh -c chown apache:apache -R /var/log/httpd &&     chown apache:apache -R /etc/httpd/conf &&     chown apache:apache -R /run" shape="box"];
  "sha256:33506f49163534bdb4d74b5c0ed322b091d24b0819a65a038f706598ba3223ee" [label="local://context" shape="ellipse"];
  "sha256:04db91450f3b26bb0aae8bfd008cab1c288bafdc6772c909346cd40ca7fd1f4d" [label="copy{src=/index.php, dest=/var/www/html/secret/index.php}" shape="note"];
  "sha256:cbe8371d60d44d9c2e678b64b21b64f82b855079bd0e0102f3e824606a3b934b" [label="copy{src=/mellon.conf, dest=/etc/httpd/conf.d/}" shape="note"];
  "sha256:487f75341b771b8999c8174a64ec65fe65b831f2512f2656e15b9e33740a8aba" [label="copy{src=/mellon-signing.crt, dest=/etc/httpd/conf/},copy{src=/mellon-signing.key, dest=/etc/httpd/conf/},copy{src=/saml-demo.paas.local.crt, dest=/etc/httpd/conf/},copy{src=/saml-demo.paas.local.key, dest=/etc/httpd/conf/}" shape="note"];
  "sha256:0344379e42ad03ee7f177fd903b35dfc6366f6a3dbdfc0363db811c81a2d23e7" [label="copy{src=/run-httpd.sh, dest=/run-httpd.sh}" shape="note"];
  "sha256:71634c090e97bb5fe792fdcdb901170d934ae244139fb20891b923ec69c5cbc5" [label="/bin/sh -c chmod -v +x /run-httpd.sh" shape="box"];
  "sha256:9f55a108c5dafa3b004c473ddbca88194395a294ac26967c887be8f17b6f8563" [label="sha256:9f55a108c5dafa3b004c473ddbca88194395a294ac26967c887be8f17b6f8563" shape="plaintext"];
  "sha256:932fc7cf310cf68605c4c8ab32dff5e673f62f5ff15c4320f2345491c2238c78" -> "sha256:329f1c40e8bc92a7c1346126615765375aa770995644d5d2fe0a2820ea55144c" [label=""];
  "sha256:329f1c40e8bc92a7c1346126615765375aa770995644d5d2fe0a2820ea55144c" -> "sha256:79db9a76124d65beb0eae207a19c5190825fcab8d71851d2f4aa9656de74e1ee" [label=""];
  "sha256:79db9a76124d65beb0eae207a19c5190825fcab8d71851d2f4aa9656de74e1ee" -> "sha256:858b765e59d4bd086507bb53e61b4f574b56c7420b35cb35ce529d0e02d30705" [label=""];
  "sha256:858b765e59d4bd086507bb53e61b4f574b56c7420b35cb35ce529d0e02d30705" -> "sha256:04db91450f3b26bb0aae8bfd008cab1c288bafdc6772c909346cd40ca7fd1f4d" [label=""];
  "sha256:33506f49163534bdb4d74b5c0ed322b091d24b0819a65a038f706598ba3223ee" -> "sha256:04db91450f3b26bb0aae8bfd008cab1c288bafdc6772c909346cd40ca7fd1f4d" [label=""];
  "sha256:04db91450f3b26bb0aae8bfd008cab1c288bafdc6772c909346cd40ca7fd1f4d" -> "sha256:cbe8371d60d44d9c2e678b64b21b64f82b855079bd0e0102f3e824606a3b934b" [label=""];
  "sha256:33506f49163534bdb4d74b5c0ed322b091d24b0819a65a038f706598ba3223ee" -> "sha256:cbe8371d60d44d9c2e678b64b21b64f82b855079bd0e0102f3e824606a3b934b" [label=""];
  "sha256:cbe8371d60d44d9c2e678b64b21b64f82b855079bd0e0102f3e824606a3b934b" -> "sha256:487f75341b771b8999c8174a64ec65fe65b831f2512f2656e15b9e33740a8aba" [label=""];
  "sha256:33506f49163534bdb4d74b5c0ed322b091d24b0819a65a038f706598ba3223ee" -> "sha256:487f75341b771b8999c8174a64ec65fe65b831f2512f2656e15b9e33740a8aba" [label=""];
  "sha256:487f75341b771b8999c8174a64ec65fe65b831f2512f2656e15b9e33740a8aba" -> "sha256:0344379e42ad03ee7f177fd903b35dfc6366f6a3dbdfc0363db811c81a2d23e7" [label=""];
  "sha256:33506f49163534bdb4d74b5c0ed322b091d24b0819a65a038f706598ba3223ee" -> "sha256:0344379e42ad03ee7f177fd903b35dfc6366f6a3dbdfc0363db811c81a2d23e7" [label=""];
  "sha256:0344379e42ad03ee7f177fd903b35dfc6366f6a3dbdfc0363db811c81a2d23e7" -> "sha256:71634c090e97bb5fe792fdcdb901170d934ae244139fb20891b923ec69c5cbc5" [label=""];
  "sha256:71634c090e97bb5fe792fdcdb901170d934ae244139fb20891b923ec69c5cbc5" -> "sha256:9f55a108c5dafa3b004c473ddbca88194395a294ac26967c887be8f17b6f8563" [label=""];
}

