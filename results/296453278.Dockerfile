[app/sources/296453278.Dockerfile]
digraph {
  "sha256:09e1af8b145c34bcb7a41d2d9ef688c8cfc4e0d1b6afdf23712856269464b96a" [label="docker-image://daocloud.io/library/centos:7.2.1511@sha256:4516078f48ca34907ed8f874005473059dc29d46745d139c7cea85e3d474f4fb" shape="ellipse"];
  "sha256:eb9253df3f9e0c6628b8fd09416363d028a89dddfa0ffded16b68d7ffa661fa5" [label="/bin/sh -c yum install -y readline-devel pcre-devel openssl-devel perl wget gcc make &&    wget https://openresty.org/download/openresty-1.11.2.3.tar.gz &&    tar xzvf openresty-1.11.2.3.tar.gz &&    cd openresty-1.11.2.3 &&    ./configure --prefix=/opt/openresty             --with-luajit             --without-http_redis2_module              --with-http_iconv_module &&    make && make install &&    ln -s /opt/openresty/nginx/conf /etc/nginx &&    ln -s /opt/openresty/nginx/sbin/nginx /usr/local/bin/ &&    sed -i \"79a \\    include '/etc/nginx/conf.d/*.conf';\" /etc/nginx/nginx.conf" shape="box"];
  "sha256:b401a1ce50589ec17dd17a24abc2ac3e0424c7e018380960d47fe9729957c5bf" [label="local://context" shape="ellipse"];
  "sha256:89d4c49cb267fa253364589c0f0ff22d53e57d264d3533fe6788ff7f14396e90" [label="copy{src=/docker-entrypoint.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:1931804c3e7d2933caa9a38e5afd7674c8177d901bacbfb195a11b0d8042946e" [label="sha256:1931804c3e7d2933caa9a38e5afd7674c8177d901bacbfb195a11b0d8042946e" shape="plaintext"];
  "sha256:09e1af8b145c34bcb7a41d2d9ef688c8cfc4e0d1b6afdf23712856269464b96a" -> "sha256:eb9253df3f9e0c6628b8fd09416363d028a89dddfa0ffded16b68d7ffa661fa5" [label=""];
  "sha256:eb9253df3f9e0c6628b8fd09416363d028a89dddfa0ffded16b68d7ffa661fa5" -> "sha256:89d4c49cb267fa253364589c0f0ff22d53e57d264d3533fe6788ff7f14396e90" [label=""];
  "sha256:b401a1ce50589ec17dd17a24abc2ac3e0424c7e018380960d47fe9729957c5bf" -> "sha256:89d4c49cb267fa253364589c0f0ff22d53e57d264d3533fe6788ff7f14396e90" [label=""];
  "sha256:89d4c49cb267fa253364589c0f0ff22d53e57d264d3533fe6788ff7f14396e90" -> "sha256:1931804c3e7d2933caa9a38e5afd7674c8177d901bacbfb195a11b0d8042946e" [label=""];
}

