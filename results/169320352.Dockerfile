[app/sources/169320352.Dockerfile]
digraph {
  "sha256:c735fb7f447c51d14a476ae7a56855a089b7150b69d34f6a080b74ea6d48fec7" [label="docker-image://docker.io/library/centos:centos7" shape="ellipse"];
  "sha256:cf19aee9acc8ddc28f17c0d477388d73fca48280d95d9880644326329cb8105c" [label="/bin/sh -c yum install -y epel-release &&   yum update -y &&   `# Install build tools. Note: perl needed to compile openssl...`   yum install -y inotify-tools wget tar gzip make gcc perl pcre-devel zlib-devel iptables &&   `# Install newest openssl...`   wget -O /tmp/openssl.tgz https://www.openssl.org/source/openssl-1.0.2-latest.tar.gz &&   tar -zxf /tmp/openssl.tgz -C /tmp &&   cd /tmp/openssl-* &&   ./config --prefix=/usr     --openssldir=/etc/ssl     --libdir=lib              no-shared zlib-dynamic &&   make && make install_sw &&   cd && rm -rf /tmp/openssl* &&   `# Install HAProxy...`   wget -O /tmp/haproxy.tgz http://www.haproxy.org/download/${HAPROXY_MJR_VERSION}/src/haproxy-${HAPROXY_VERSION}.tar.gz &&   tar -zxvf /tmp/haproxy.tgz -C /tmp &&   cd /tmp/haproxy-* &&   make     TARGET=linux2628 USE_LINUX_TPROXY=1 USE_ZLIB=1 USE_REGPARM=1 USE_PCRE=1 USE_PCRE_JIT=1     USE_OPENSSL=1 SSL_INC=/usr/include SSL_LIB=/usr/lib ADDLIB=-ldl     CFLAGS=\"-O2 -g -fno-strict-aliasing -DTCP_USER_TIMEOUT=18\" &&   make install &&   rm -rf /tmp/haproxy* &&   `# Configure HAProxy...`   mkdir -p /var/lib/haproxy &&   groupadd haproxy && adduser haproxy -g haproxy && chown -R haproxy:haproxy /var/lib/haproxy &&   `# Generate dummy SSL cert for HAProxy...`   openssl genrsa -out /etc/ssl/dummy.key 2048 &&   openssl req -new -key /etc/ssl/dummy.key -out /etc/ssl/dummy.csr -subj \"/C=GB/L=London/O=Company Ltd/CN=haproxy\" &&   openssl x509 -req -days 3650 -in /etc/ssl/dummy.csr -signkey /etc/ssl/dummy.key -out /etc/ssl/dummy.crt &&   cat /etc/ssl/dummy.crt /etc/ssl/dummy.key > /etc/ssl/dummy.pem &&   `# Clean up: build tools...`   yum remove -y make gcc pcre-devel &&   yum clean all && rm -rf /var/cache/yum" shape="box"];
  "sha256:4cee24b27755cd4cc43b78c7fb2d35e2830f8e18c04a8624ce66d013b5f6efcf" [label="local://context" shape="ellipse"];
  "sha256:0f70812a71c68979ced414c5ce1139f6d6b3b9d13d75b06f8683fc352e9b1db9" [label="copy{src=/container-files, dest=/}" shape="note"];
  "sha256:26392fba0023ad111954a79578b18596d177f3f21880eacf35f272a55e84e974" [label="sha256:26392fba0023ad111954a79578b18596d177f3f21880eacf35f272a55e84e974" shape="plaintext"];
  "sha256:c735fb7f447c51d14a476ae7a56855a089b7150b69d34f6a080b74ea6d48fec7" -> "sha256:cf19aee9acc8ddc28f17c0d477388d73fca48280d95d9880644326329cb8105c" [label=""];
  "sha256:cf19aee9acc8ddc28f17c0d477388d73fca48280d95d9880644326329cb8105c" -> "sha256:0f70812a71c68979ced414c5ce1139f6d6b3b9d13d75b06f8683fc352e9b1db9" [label=""];
  "sha256:4cee24b27755cd4cc43b78c7fb2d35e2830f8e18c04a8624ce66d013b5f6efcf" -> "sha256:0f70812a71c68979ced414c5ce1139f6d6b3b9d13d75b06f8683fc352e9b1db9" [label=""];
  "sha256:0f70812a71c68979ced414c5ce1139f6d6b3b9d13d75b06f8683fc352e9b1db9" -> "sha256:26392fba0023ad111954a79578b18596d177f3f21880eacf35f272a55e84e974" [label=""];
}

