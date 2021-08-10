[app/sources/129804251.Dockerfile]
digraph {
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:0b5594ac0b3c0db080a919852c38fc37bc764064299301446fdc2c60c6f12415" [label="/bin/sh -c apt update -y && apt install -y wget curl git" shape="box"];
  "sha256:74302996e51edc907414f26a6546c09e8fad0f046b836fd65e400534d969deb3" [label="/bin/sh -c apt -y install php-cli php-fpm" shape="box"];
  "sha256:d437d8c4dadc31c95efbb224dcdce8d9d9a390627cd812e36bf9c4f7ce116429" [label="/bin/sh -c apt -y install php-pinba" shape="box"];
  "sha256:aedf5d14020f7635fd2596a87007f3c54c1e6599adf323c187445aeabe057757" [label="/bin/sh -c echo \"deb http://repo.yandex.ru/clickhouse/deb/stable/ main/\" > /etc/apt/sources.list.d/clickhouse.list &&     apt install -y dirmngr && apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv E0C56BD4 &&     apt update && apt install -y clickhouse-client clickhouse-server" shape="box"];
  "sha256:9a716c5c9134e1c634599b1a82175dc3fd0f0197a1ed8737e4de57cc1cef2798" [label="/bin/sh -c apt install -y adduser libfontconfig1 &&     wget https://dl.grafana.com/oss/release/grafana_6.1.4_amd64.deb && dpkg -i grafana_6.1.4_amd64.deb &&     grafana-cli plugins install vertamedia-clickhouse-datasource" shape="box"];
  "sha256:62748b08d8b883369e16d2feefae7552f159531fd3eedab405c93a387db465e0" [label="/bin/sh -c cd /opt/ && git clone https://github.com/pinba-server/pinba-server.git && cd pinba-server && php composer.phar install &&     service clickhouse-server restart &&     clickhouse-client -n < clickhouse/pinba.requests.sql &&     clickhouse-client -n < clickhouse/pinba.report_by_all.sql &&     cp systemd/pinba-server.service /usr/lib/systemd/system/pinba-server.service" shape="box"];
  "sha256:86fda71c0ba62011f1a00a66db7c5919c262c73c9391180aac11b9f434dbb77b" [label="/bin/sh -c apt -y install php-dev libevent-dev && pecl install protobuf && echo \"extension=protobuf.so\" > /etc/php/7.2/cli/conf.d/protobuf.ini &&     printf \"\\n\\n /usr/lib/x86_64-linux-gnu/\\n\\n\\nno\\n\\n\\n\" | pecl install event && echo \"extension=event.so\" > /etc/php/7.2/cli/conf.d/event.ini" shape="box"];
  "sha256:03fc5c6c3ed0ce6910b9f9fc7e6ee66e1e3d3417b40d1853edced46818513710" [label="/bin/sh -c apt install -y nginx" shape="box"];
  "sha256:ddcf8ef5409ccd5c82e96cb20b6a1dede06f8adb24984bf8e386d82ea615f5c5" [label="/bin/sh -c nginx -V" shape="box"];
  "sha256:e06a1fc356a1defe4207d8f0ea5a92744b44d275723e293de9653a18daa1bc6d" [label="/bin/sh -c apt install -y zlib1g-dev libgd-dev libxslt1-dev libgeoip-dev &&     git clone https://github.com/tony2001/ngx_http_pinba_module &&     wget http://nginx.org/download/nginx-1.14.0.tar.gz && tar zxvf nginx-1.14.0.tar.gz" shape="box"];
  "sha256:d5aba07d086b9196a9f2b0368ac2a0802413ccec8854ab2b585cdabde6138dee" [label="/bin/sh -c cd nginx-1.14.0 && ./configure --add-dynamic-module=/ngx_http_pinba_module --with-debug --with-pcre-jit --with-http_ssl_module --with-http_stub_status_module --with-http_realip_module --with-http_auth_request_module --with-http_v2_module --with-http_dav_module --with-http_slice_module --with-threads --with-http_addition_module --with-http_geoip_module=dynamic --with-http_gunzip_module --with-http_gzip_static_module --with-http_image_filter_module=dynamic --with-http_sub_module --with-http_xslt_module=dynamic --with-stream=dynamic --with-stream_ssl_module --with-mail=dynamic --with-mail_ssl_module" shape="box"];
  "sha256:8ef994fe4b004c88e5eb57cae01468f5ee7992436f28fe46b77da3262820d989" [label="/bin/sh -c cd nginx-1.14.0 && make" shape="box"];
  "sha256:33e253af38e235284db0a9db8f7dfd8c9540c488a8ae48c358f25fab9f93b40d" [label="/bin/sh -c cp /nginx-1.14.0/objs/ngx_http_pinba_module.so /usr/lib64/nginx/modules/ngx_http_pinba_module.so &&     echo 'load_module /usr/lib64/nginx/modules/ngx_http_pinba_module.so;' > /usr/share/nginx/modules/ngx_http_pinba_module.conf" shape="box"];
  "sha256:74e6752ddc6943f2819b73368f4b9667dcad77d5e881095e9302ec6138ab5267" [label="/bin/sh -c nginx -t" shape="box"];
  "sha256:07d800804c2c9e647aca5e11b189095479ac8dbd19edbbe5eac8750ab14d21da" [label="sha256:07d800804c2c9e647aca5e11b189095479ac8dbd19edbbe5eac8750ab14d21da" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:0b5594ac0b3c0db080a919852c38fc37bc764064299301446fdc2c60c6f12415" [label=""];
  "sha256:0b5594ac0b3c0db080a919852c38fc37bc764064299301446fdc2c60c6f12415" -> "sha256:74302996e51edc907414f26a6546c09e8fad0f046b836fd65e400534d969deb3" [label=""];
  "sha256:74302996e51edc907414f26a6546c09e8fad0f046b836fd65e400534d969deb3" -> "sha256:d437d8c4dadc31c95efbb224dcdce8d9d9a390627cd812e36bf9c4f7ce116429" [label=""];
  "sha256:d437d8c4dadc31c95efbb224dcdce8d9d9a390627cd812e36bf9c4f7ce116429" -> "sha256:aedf5d14020f7635fd2596a87007f3c54c1e6599adf323c187445aeabe057757" [label=""];
  "sha256:aedf5d14020f7635fd2596a87007f3c54c1e6599adf323c187445aeabe057757" -> "sha256:9a716c5c9134e1c634599b1a82175dc3fd0f0197a1ed8737e4de57cc1cef2798" [label=""];
  "sha256:9a716c5c9134e1c634599b1a82175dc3fd0f0197a1ed8737e4de57cc1cef2798" -> "sha256:62748b08d8b883369e16d2feefae7552f159531fd3eedab405c93a387db465e0" [label=""];
  "sha256:62748b08d8b883369e16d2feefae7552f159531fd3eedab405c93a387db465e0" -> "sha256:86fda71c0ba62011f1a00a66db7c5919c262c73c9391180aac11b9f434dbb77b" [label=""];
  "sha256:86fda71c0ba62011f1a00a66db7c5919c262c73c9391180aac11b9f434dbb77b" -> "sha256:03fc5c6c3ed0ce6910b9f9fc7e6ee66e1e3d3417b40d1853edced46818513710" [label=""];
  "sha256:03fc5c6c3ed0ce6910b9f9fc7e6ee66e1e3d3417b40d1853edced46818513710" -> "sha256:ddcf8ef5409ccd5c82e96cb20b6a1dede06f8adb24984bf8e386d82ea615f5c5" [label=""];
  "sha256:ddcf8ef5409ccd5c82e96cb20b6a1dede06f8adb24984bf8e386d82ea615f5c5" -> "sha256:e06a1fc356a1defe4207d8f0ea5a92744b44d275723e293de9653a18daa1bc6d" [label=""];
  "sha256:e06a1fc356a1defe4207d8f0ea5a92744b44d275723e293de9653a18daa1bc6d" -> "sha256:d5aba07d086b9196a9f2b0368ac2a0802413ccec8854ab2b585cdabde6138dee" [label=""];
  "sha256:d5aba07d086b9196a9f2b0368ac2a0802413ccec8854ab2b585cdabde6138dee" -> "sha256:8ef994fe4b004c88e5eb57cae01468f5ee7992436f28fe46b77da3262820d989" [label=""];
  "sha256:8ef994fe4b004c88e5eb57cae01468f5ee7992436f28fe46b77da3262820d989" -> "sha256:33e253af38e235284db0a9db8f7dfd8c9540c488a8ae48c358f25fab9f93b40d" [label=""];
  "sha256:33e253af38e235284db0a9db8f7dfd8c9540c488a8ae48c358f25fab9f93b40d" -> "sha256:74e6752ddc6943f2819b73368f4b9667dcad77d5e881095e9302ec6138ab5267" [label=""];
  "sha256:74e6752ddc6943f2819b73368f4b9667dcad77d5e881095e9302ec6138ab5267" -> "sha256:07d800804c2c9e647aca5e11b189095479ac8dbd19edbbe5eac8750ab14d21da" [label=""];
}

