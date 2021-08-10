[app/sources/167054721.Dockerfile]
digraph {
  "sha256:9c4608b8f1d618a2738ebd1882f5d8729ce59e8d99fa52a9e248a67257d269bb" [label="local://context" shape="ellipse"];
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" [label="docker-image://docker.io/library/ubuntu:xenial" shape="ellipse"];
  "sha256:d42994fd9af241895bda57a92fccefe21e6b6cd82d795d16d79693906d7f118c" [label="/bin/sh -c apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y         curl         git         php7.0         php7.0-bcmath         php7.0-cli         php7.0-curl         php7.0-dom         php7.0-fpm         php7.0-mbstring         php7.0-mysqlnd         nginx \t&& apt-get clean && rm -r /var/lib/apt/lists/*" shape="box"];
  "sha256:f673e1ddc79cc41677628bd885a1487757c13958c0b60eaf8eb0e7513f64cb1e" [label="copy{src=/composer.json, dest=/www/}" shape="note"];
  "sha256:7bdeb220ef3851ee748ab8bc05c0330314ce37671dbd1e2fbbb1cb0b50839dd3" [label="/bin/sh -c curl -sS https://getcomposer.org/installer | php -- --install-dir=/www/ &&     cd /www/ &&     php composer.phar install &&     echo \"daemon off;\" >> /etc/nginx/nginx.conf" shape="box"];
  "sha256:33f2149219831c68569b0a9ed13dd2764617c64886548b292e0f6a5fee6af6be" [label="copy{src=/app, dest=/www/app}" shape="note"];
  "sha256:fc7394e37460eeb3a6d453b996909fa903ceb641e9ebd18a2f97469ce7d92313" [label="copy{src=/web, dest=/www/web}" shape="note"];
  "sha256:d9f72042f960733bdbc1676fc3993364ded6aba7fe8a54fb75af6eba5b33814d" [label="copy{src=/vhs, dest=/www/vhs}" shape="note"];
  "sha256:f2f4073ddb02169020a9bcc1cab4c4819fdb227cb45911cee4d03c0a498bb1f7" [label="copy{src=/migrations, dest=/www/migrations}" shape="note"];
  "sha256:17ddd971a7257f59564ab6769a3d6a30db2bceb32ab93b7be0b804c494682219" [label="copy{src=/tools, dest=/www/tools}" shape="note"];
  "sha256:113d85b4b8076c70396f604533984800b573d448566d4442067811d4f16055a5" [label="copy{src=/conf/nginx-vhost-docker.conf, dest=/etc/nginx/sites-enabled/default}" shape="note"];
  "sha256:bd717b26227730a1d50b9a4b96da06b6abde392765fd7927ce4cfc54263706a3" [label="copy{src=/docker, dest=/usr/bin}" shape="note"];
  "sha256:62fdc7468e7fb2904bed21a8b96d214f9a65ec75d282bb9637455f447656a530" [label="copy{src=/conf/config.ini.php.docker, dest=/www/conf/config.ini.php}" shape="note"];
  "sha256:1e567eadd91f540e893b6255bc8c9cd3d1601df52cb4f494aa32f3a53e3031e9" [label="sha256:1e567eadd91f540e893b6255bc8c9cd3d1601df52cb4f494aa32f3a53e3031e9" shape="plaintext"];
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" -> "sha256:d42994fd9af241895bda57a92fccefe21e6b6cd82d795d16d79693906d7f118c" [label=""];
  "sha256:d42994fd9af241895bda57a92fccefe21e6b6cd82d795d16d79693906d7f118c" -> "sha256:f673e1ddc79cc41677628bd885a1487757c13958c0b60eaf8eb0e7513f64cb1e" [label=""];
  "sha256:9c4608b8f1d618a2738ebd1882f5d8729ce59e8d99fa52a9e248a67257d269bb" -> "sha256:f673e1ddc79cc41677628bd885a1487757c13958c0b60eaf8eb0e7513f64cb1e" [label=""];
  "sha256:f673e1ddc79cc41677628bd885a1487757c13958c0b60eaf8eb0e7513f64cb1e" -> "sha256:7bdeb220ef3851ee748ab8bc05c0330314ce37671dbd1e2fbbb1cb0b50839dd3" [label=""];
  "sha256:7bdeb220ef3851ee748ab8bc05c0330314ce37671dbd1e2fbbb1cb0b50839dd3" -> "sha256:33f2149219831c68569b0a9ed13dd2764617c64886548b292e0f6a5fee6af6be" [label=""];
  "sha256:9c4608b8f1d618a2738ebd1882f5d8729ce59e8d99fa52a9e248a67257d269bb" -> "sha256:33f2149219831c68569b0a9ed13dd2764617c64886548b292e0f6a5fee6af6be" [label=""];
  "sha256:33f2149219831c68569b0a9ed13dd2764617c64886548b292e0f6a5fee6af6be" -> "sha256:fc7394e37460eeb3a6d453b996909fa903ceb641e9ebd18a2f97469ce7d92313" [label=""];
  "sha256:9c4608b8f1d618a2738ebd1882f5d8729ce59e8d99fa52a9e248a67257d269bb" -> "sha256:fc7394e37460eeb3a6d453b996909fa903ceb641e9ebd18a2f97469ce7d92313" [label=""];
  "sha256:fc7394e37460eeb3a6d453b996909fa903ceb641e9ebd18a2f97469ce7d92313" -> "sha256:d9f72042f960733bdbc1676fc3993364ded6aba7fe8a54fb75af6eba5b33814d" [label=""];
  "sha256:9c4608b8f1d618a2738ebd1882f5d8729ce59e8d99fa52a9e248a67257d269bb" -> "sha256:d9f72042f960733bdbc1676fc3993364ded6aba7fe8a54fb75af6eba5b33814d" [label=""];
  "sha256:d9f72042f960733bdbc1676fc3993364ded6aba7fe8a54fb75af6eba5b33814d" -> "sha256:f2f4073ddb02169020a9bcc1cab4c4819fdb227cb45911cee4d03c0a498bb1f7" [label=""];
  "sha256:9c4608b8f1d618a2738ebd1882f5d8729ce59e8d99fa52a9e248a67257d269bb" -> "sha256:f2f4073ddb02169020a9bcc1cab4c4819fdb227cb45911cee4d03c0a498bb1f7" [label=""];
  "sha256:f2f4073ddb02169020a9bcc1cab4c4819fdb227cb45911cee4d03c0a498bb1f7" -> "sha256:17ddd971a7257f59564ab6769a3d6a30db2bceb32ab93b7be0b804c494682219" [label=""];
  "sha256:9c4608b8f1d618a2738ebd1882f5d8729ce59e8d99fa52a9e248a67257d269bb" -> "sha256:17ddd971a7257f59564ab6769a3d6a30db2bceb32ab93b7be0b804c494682219" [label=""];
  "sha256:17ddd971a7257f59564ab6769a3d6a30db2bceb32ab93b7be0b804c494682219" -> "sha256:113d85b4b8076c70396f604533984800b573d448566d4442067811d4f16055a5" [label=""];
  "sha256:9c4608b8f1d618a2738ebd1882f5d8729ce59e8d99fa52a9e248a67257d269bb" -> "sha256:113d85b4b8076c70396f604533984800b573d448566d4442067811d4f16055a5" [label=""];
  "sha256:113d85b4b8076c70396f604533984800b573d448566d4442067811d4f16055a5" -> "sha256:bd717b26227730a1d50b9a4b96da06b6abde392765fd7927ce4cfc54263706a3" [label=""];
  "sha256:9c4608b8f1d618a2738ebd1882f5d8729ce59e8d99fa52a9e248a67257d269bb" -> "sha256:bd717b26227730a1d50b9a4b96da06b6abde392765fd7927ce4cfc54263706a3" [label=""];
  "sha256:bd717b26227730a1d50b9a4b96da06b6abde392765fd7927ce4cfc54263706a3" -> "sha256:62fdc7468e7fb2904bed21a8b96d214f9a65ec75d282bb9637455f447656a530" [label=""];
  "sha256:9c4608b8f1d618a2738ebd1882f5d8729ce59e8d99fa52a9e248a67257d269bb" -> "sha256:62fdc7468e7fb2904bed21a8b96d214f9a65ec75d282bb9637455f447656a530" [label=""];
  "sha256:62fdc7468e7fb2904bed21a8b96d214f9a65ec75d282bb9637455f447656a530" -> "sha256:1e567eadd91f540e893b6255bc8c9cd3d1601df52cb4f494aa32f3a53e3031e9" [label=""];
}

