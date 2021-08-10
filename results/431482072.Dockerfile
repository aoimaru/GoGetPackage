[app/sources/431482072.Dockerfile]
digraph {
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" [label="docker-image://docker.io/library/fedora:latest" shape="ellipse"];
  "sha256:a8673b7102fbe1d69c878220cf76246dee983e6fbd06212bc5f74eb3282e86a0" [label="/bin/sh -c dnf -y update && dnf clean all" shape="box"];
  "sha256:b05d9d48f05a55d53fc4fa2d8fb74740e98e8db01b1ab5dbfe3f8baa4c364709" [label="/bin/sh -c dnf -y install unzip tar wget vim git make gcc readline-devel pcre-devel openssl-devel && dnf clean all" shape="box"];
  "sha256:25872d46e477cc3c7cc2a278b651242e495fa064f37a13ac4dc7a90e37499204" [label="/bin/sh -c cd /usr/src/ && wget http://openresty.org/download/ngx_openresty-$OPENRESTY_VERSION.tar.gz && tar xvfz ngx_openresty-$OPENRESTY_VERSION.tar.gz && cd ngx_openresty-$OPENRESTY_VERSION && ./configure && make && make install" shape="box"];
  "sha256:720e167bd1fede06a9623cfd47b18bd623e9d27298a791067a6bfeedece6acdf" [label="/bin/sh -c cd /usr/src/ && wget http://luarocks.org/releases/luarocks-$LUAROCKS_VERSION.tar.gz && tar xvfz luarocks-$LUAROCKS_VERSION.tar.gz && cd luarocks-$LUAROCKS_VERSION && ./configure --prefix=/usr/local/openresty/luajit         --with-lua=/usr/local/openresty/luajit/         --lua-suffix=jit-2.1.0-alpha         --with-lua-include=/usr/local/openresty/luajit/include/luajit-2.1 && make build && make install" shape="box"];
  "sha256:34d86536b27ddcb0ff5e5a877f4496bf1781dd2db02a1fc7694bfb0207d90f57" [label="/bin/sh -c luarocks install lapis" shape="box"];
  "sha256:c9699ffc4d341a13d14994f2b446ce64875c784e4275b608872bd64da179f971" [label="local://context" shape="ellipse"];
  "sha256:7fbd06f4e1e096e3e6243de396184fcfdfe3f776fd66eb7ccc240e843533bccc" [label="copy{src=/, dest=/opt/webapp}" shape="note"];
  "sha256:dab67f7ff09de1e02e13cfb355abd4035caef0f38c9457ba09addbd072788e45" [label="mkdir{path=/opt/webapp}" shape="note"];
  "sha256:5f89fa5df65df585d2b3a08979460db962e444eb36b8fd29ecf8af724bdfde16" [label="sha256:5f89fa5df65df585d2b3a08979460db962e444eb36b8fd29ecf8af724bdfde16" shape="plaintext"];
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" -> "sha256:a8673b7102fbe1d69c878220cf76246dee983e6fbd06212bc5f74eb3282e86a0" [label=""];
  "sha256:a8673b7102fbe1d69c878220cf76246dee983e6fbd06212bc5f74eb3282e86a0" -> "sha256:b05d9d48f05a55d53fc4fa2d8fb74740e98e8db01b1ab5dbfe3f8baa4c364709" [label=""];
  "sha256:b05d9d48f05a55d53fc4fa2d8fb74740e98e8db01b1ab5dbfe3f8baa4c364709" -> "sha256:25872d46e477cc3c7cc2a278b651242e495fa064f37a13ac4dc7a90e37499204" [label=""];
  "sha256:25872d46e477cc3c7cc2a278b651242e495fa064f37a13ac4dc7a90e37499204" -> "sha256:720e167bd1fede06a9623cfd47b18bd623e9d27298a791067a6bfeedece6acdf" [label=""];
  "sha256:720e167bd1fede06a9623cfd47b18bd623e9d27298a791067a6bfeedece6acdf" -> "sha256:34d86536b27ddcb0ff5e5a877f4496bf1781dd2db02a1fc7694bfb0207d90f57" [label=""];
  "sha256:34d86536b27ddcb0ff5e5a877f4496bf1781dd2db02a1fc7694bfb0207d90f57" -> "sha256:7fbd06f4e1e096e3e6243de396184fcfdfe3f776fd66eb7ccc240e843533bccc" [label=""];
  "sha256:c9699ffc4d341a13d14994f2b446ce64875c784e4275b608872bd64da179f971" -> "sha256:7fbd06f4e1e096e3e6243de396184fcfdfe3f776fd66eb7ccc240e843533bccc" [label=""];
  "sha256:7fbd06f4e1e096e3e6243de396184fcfdfe3f776fd66eb7ccc240e843533bccc" -> "sha256:dab67f7ff09de1e02e13cfb355abd4035caef0f38c9457ba09addbd072788e45" [label=""];
  "sha256:dab67f7ff09de1e02e13cfb355abd4035caef0f38c9457ba09addbd072788e45" -> "sha256:5f89fa5df65df585d2b3a08979460db962e444eb36b8fd29ecf8af724bdfde16" [label=""];
}

