[app/sources/234462704.Dockerfile]
digraph {
  "sha256:f3ef151b9cb5e947fa685cf5e3f97a6a8907278f72c0c9aba86ef0eab70707e4" [label="docker-image://docker.io/idoall/supervisor:1.9" shape="ellipse"];
  "sha256:976d8c8a21bcbec146b36dda4840e732a05ef152076fdc7f30ac421b808fe5f0" [label="local://context" shape="ellipse"];
  "sha256:fc46f96b6509fb8fef9c2e2f1e950bac356a8b57bbb5040a453896821389c4f6" [label="copy{src=/tengine-2.2.0.zip, dest=/home/work/_src}" shape="note"];
  "sha256:dd8824a71839684a5b6dc076ab6f4e9cc950bb0a5fe57976f34272adb6e74e11" [label="copy{src=/pcre-8.35.tar.gz, dest=/home/work/_src}" shape="note"];
  "sha256:b2ccd558af9b1bfc82a8fee6774e0c930a3888d597f22afe4a5e20f809a8c823" [label="copy{src=/zlib-1.2.8.tar.gz, dest=/home/work/_src}" shape="note"];
  "sha256:4beb2d5f2f102f44461a0286e76d2122914edc2255da2695968ff0d9460d816f" [label="copy{src=/openssl-1.0.1g.tar.gz, dest=/home/work/_src}" shape="note"];
  "sha256:ea72142d7efafd6d7f909bf59dd0f7f4b443fbc553fd9676e0f8ce52902df499" [label="/bin/sh -c mkdir -p /home/work/_script /home/work/_app/nginx     && cd /home/work/_src/pcre-8.35     && ./configure --enable-utf8     && make     && make install         && cd /home/work/_src/     && unzip tengine-2.2.0.zip     && cd tengine-tengine-2.2.0     && ./configure --prefix=/home/work/_app/nginx --with-pcre=/home/work/_src/pcre-8.35 --with-zlib=/home/work/_src/zlib-1.2.8 --with-openssl=/home/work/_src/openssl-1.0.1g --with-http_gzip_static_module --with-http_realip_module --with-http_stub_status_module --with-http_concat_module --with-http_ssl_module     && make     && make install         && echo \"export PATH=\\$PATH:/home/work/_app/nginx/sbin\" >> /etc/profile     && echo \"export PATH=\\$PATH:/home/work/_app/nginx/sbin\" >> ~/.bashrc     && sed -i \"s/#user  nobody;/user  work;/\" /home/work/_app/nginx/conf/nginx.conf         && yum clean all     && rm -rf /home/work/_src/*" shape="box"];
  "sha256:a9111e1f780bb4608a44282727a23809574a0b0417e65b81942e9093dc5e6a7d" [label="copy{src=/_app/nginx/conf/nginx.conf, dest=/home/work/_app/nginx/conf/nginx.conf}" shape="note"];
  "sha256:302d3f9179a56892afcbb5a7273ec5a7b4b2063f518eaf94273ba0abb297f26e" [label="copy{src=/_app/nginx/conf/conf.d/default.conf, dest=/home/work/_app/nginx/conf/conf.d/default.conf}" shape="note"];
  "sha256:4e6547b8dfc5d5ad8bb16d8f7f49418a9b92ec96a6d84fa178cbaba58297e56f" [label="copy{src=/run.sh, dest=/}" shape="note"];
  "sha256:bd17c6be08c7d425219bd387c5e1c84742ed57eeab38af3ad173152baad6b8b2" [label="/bin/sh -c chmod +x /run.sh" shape="box"];
  "sha256:5f89b3167b01c7208f7b8609778377089bdc1daebddba1b0fc2d64a146b53921" [label="sha256:5f89b3167b01c7208f7b8609778377089bdc1daebddba1b0fc2d64a146b53921" shape="plaintext"];
  "sha256:f3ef151b9cb5e947fa685cf5e3f97a6a8907278f72c0c9aba86ef0eab70707e4" -> "sha256:fc46f96b6509fb8fef9c2e2f1e950bac356a8b57bbb5040a453896821389c4f6" [label=""];
  "sha256:976d8c8a21bcbec146b36dda4840e732a05ef152076fdc7f30ac421b808fe5f0" -> "sha256:fc46f96b6509fb8fef9c2e2f1e950bac356a8b57bbb5040a453896821389c4f6" [label=""];
  "sha256:fc46f96b6509fb8fef9c2e2f1e950bac356a8b57bbb5040a453896821389c4f6" -> "sha256:dd8824a71839684a5b6dc076ab6f4e9cc950bb0a5fe57976f34272adb6e74e11" [label=""];
  "sha256:976d8c8a21bcbec146b36dda4840e732a05ef152076fdc7f30ac421b808fe5f0" -> "sha256:dd8824a71839684a5b6dc076ab6f4e9cc950bb0a5fe57976f34272adb6e74e11" [label=""];
  "sha256:dd8824a71839684a5b6dc076ab6f4e9cc950bb0a5fe57976f34272adb6e74e11" -> "sha256:b2ccd558af9b1bfc82a8fee6774e0c930a3888d597f22afe4a5e20f809a8c823" [label=""];
  "sha256:976d8c8a21bcbec146b36dda4840e732a05ef152076fdc7f30ac421b808fe5f0" -> "sha256:b2ccd558af9b1bfc82a8fee6774e0c930a3888d597f22afe4a5e20f809a8c823" [label=""];
  "sha256:b2ccd558af9b1bfc82a8fee6774e0c930a3888d597f22afe4a5e20f809a8c823" -> "sha256:4beb2d5f2f102f44461a0286e76d2122914edc2255da2695968ff0d9460d816f" [label=""];
  "sha256:976d8c8a21bcbec146b36dda4840e732a05ef152076fdc7f30ac421b808fe5f0" -> "sha256:4beb2d5f2f102f44461a0286e76d2122914edc2255da2695968ff0d9460d816f" [label=""];
  "sha256:4beb2d5f2f102f44461a0286e76d2122914edc2255da2695968ff0d9460d816f" -> "sha256:ea72142d7efafd6d7f909bf59dd0f7f4b443fbc553fd9676e0f8ce52902df499" [label=""];
  "sha256:ea72142d7efafd6d7f909bf59dd0f7f4b443fbc553fd9676e0f8ce52902df499" -> "sha256:a9111e1f780bb4608a44282727a23809574a0b0417e65b81942e9093dc5e6a7d" [label=""];
  "sha256:976d8c8a21bcbec146b36dda4840e732a05ef152076fdc7f30ac421b808fe5f0" -> "sha256:a9111e1f780bb4608a44282727a23809574a0b0417e65b81942e9093dc5e6a7d" [label=""];
  "sha256:a9111e1f780bb4608a44282727a23809574a0b0417e65b81942e9093dc5e6a7d" -> "sha256:302d3f9179a56892afcbb5a7273ec5a7b4b2063f518eaf94273ba0abb297f26e" [label=""];
  "sha256:976d8c8a21bcbec146b36dda4840e732a05ef152076fdc7f30ac421b808fe5f0" -> "sha256:302d3f9179a56892afcbb5a7273ec5a7b4b2063f518eaf94273ba0abb297f26e" [label=""];
  "sha256:302d3f9179a56892afcbb5a7273ec5a7b4b2063f518eaf94273ba0abb297f26e" -> "sha256:4e6547b8dfc5d5ad8bb16d8f7f49418a9b92ec96a6d84fa178cbaba58297e56f" [label=""];
  "sha256:976d8c8a21bcbec146b36dda4840e732a05ef152076fdc7f30ac421b808fe5f0" -> "sha256:4e6547b8dfc5d5ad8bb16d8f7f49418a9b92ec96a6d84fa178cbaba58297e56f" [label=""];
  "sha256:4e6547b8dfc5d5ad8bb16d8f7f49418a9b92ec96a6d84fa178cbaba58297e56f" -> "sha256:bd17c6be08c7d425219bd387c5e1c84742ed57eeab38af3ad173152baad6b8b2" [label=""];
  "sha256:bd17c6be08c7d425219bd387c5e1c84742ed57eeab38af3ad173152baad6b8b2" -> "sha256:5f89b3167b01c7208f7b8609778377089bdc1daebddba1b0fc2d64a146b53921" [label=""];
}

