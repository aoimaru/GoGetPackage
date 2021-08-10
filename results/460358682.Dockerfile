[app/sources/460358682.Dockerfile]
digraph {
  "sha256:283e092a87b14d39c8c2644aeb6ee003a80df1b450f979320e6ff7216fad8aee" [label="local://context" shape="ellipse"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:48d8ad5b154074b5827fe0d5ee6c2ea5516353233136fa5b67ffd7816b5d648e" [label="/bin/sh -c mkdir -p $WORK_PATH" shape="box"];
  "sha256:4dfbbbc715be67de35e7f4c96a8b599d3ff44b59e5ccc451dd4aab1947c54c73" [label="/bin/sh -c mkdir -p $INSTALL_PATH" shape="box"];
  "sha256:f94d76e3dbaba7b501123e1c66fd772441b7ccb308ac41d150cb9c324f7f6910" [label="/bin/sh -c rm /etc/apt/sources.list" shape="box"];
  "sha256:59d3b39035c05811f130edd3e3aeb14cd06cf70182e270afdc46b519359d786f" [label="copy{src=/sources.list, dest=/etc/apt/sources.list}" shape="note"];
  "sha256:f456ac3c9fa9bde99725559bffca335e17a1eb6eb9de2ffccd64e5d9249131d6" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:85278dcf48223d8538c51d99ac329741ff9cf8992798db049f840052c4b892d4" [label="/bin/sh -c apt-get install -y make gcc libreadline-dev libncurses5-dev libpcre3-dev libssl-dev perl" shape="box"];
  "sha256:de28d83658d97894c12b2f2046e9309bbb08ef17e315548de72ec4fa53e7187a" [label="copy{src=/ngx_openresty-1.7.7.2, dest=/usr/servers/ngx_openresty-1.7.7.2}" shape="note"];
  "sha256:f9883e4a9eae6faf83fa94c10fe9962d3dc9fe14fc965ec5c95a75e10caa1392" [label="/bin/sh -c cd $INSTALL_PATH/$NGX_OPENRESTY_PACKAGE_NAME/bundle/LuaJIT-2.1-20150120/ && make clean && make && make install" shape="box"];
  "sha256:4e1e0782b2c06998cc396f2beaf9359b34401105e42adf1516bf8dc85f76441c" [label="/bin/sh -c ln -sf luajit-2.1.0-alpha /usr/local/bin/luajit" shape="box"];
  "sha256:d5da91a69a9122bcadb0aad23afce8b4e33353bb8c84f0b6e2167430ec645cb8" [label="copy{src=/ngx_cache_purge-2.3, dest=/usr/servers/ngx_openresty-1.7.7.2/bundle/ngx_cache_purge-2.3}" shape="note"];
  "sha256:a3df9dd9820615f0ad042e9b81ce5ae96af1dc69780fed0a0606a7b504aa42bb" [label="copy{src=/nginx_upstream_check_module-0.3.0, dest=/usr/servers/ngx_openresty-1.7.7.2/bundle/nginx_upstream_check_module-0.3.0}" shape="note"];
  "sha256:d6f70d10613c2630c40f2d8dfd5e561417e643e2ed2ebee94e2f13fbd4096d5e" [label="/bin/sh -c cd $INSTALL_PATH/$NGX_OPENRESTY_PACKAGE_NAME && ./configure --prefix=$INSTALL_PATH --with-http_realip_module  --with-pcre  --with-luajit --add-module=./bundle/$NGX_CACHE_PURGE_PACKAGE_NAME/ --add-module=./bundle/$NGX_UPSTREAM_CHECK_PACKAGE_NAME/ -j2 && make && make install" shape="box"];
  "sha256:f8283e0abe02964aa3768daefcdfbb5b924027f2df6eafc02c37390bcb5f5016" [label="/bin/sh -c rm $INSTALL_PATH/nginx/conf/nginx.conf" shape="box"];
  "sha256:cbca9918edc4b4d6b25cbf0b65681869c3f991cd19fcf2f81b9b049811c9bfcf" [label="copy{src=/nginx.conf, dest=/usr/servers/nginx/conf/}" shape="note"];
  "sha256:850387dde96700539a2bd0d8021931f5db41f284f3d4c2defb51f22b0d1b423a" [label="copy{src=/boling_cavalry.conf, dest=/usr/local/work/}" shape="note"];
  "sha256:856bc3d6a3173de16d496961b82cef3e7f189d468c81ab7d162ad823eeea991d" [label="/bin/sh -c mkdir $WORK_PATH/lualib" shape="box"];
  "sha256:36730820b3ad1cfe14ba760c9337e933e72e7fd2f636bbe0821bc5a3c417166b" [label="copy{src=/sequare.lua, dest=/usr/local/work/lualib}" shape="note"];
  "sha256:682d1b6ca97ede4fd00542d703640942c085c13c1369a856fb59b70f6d140e9f" [label="/bin/sh -c mkdir $WORK_PATH/lua" shape="box"];
  "sha256:91dae4ac2b6428e37531777d9f4df4f41e2ed3e4431aa2bb55c4d1f93f866701" [label="copy{src=/test_request.lua, dest=/usr/local/work/lua}" shape="note"];
  "sha256:228fe39ec7e00e86f114f16897afc49f2c1b0937ed44bf85c0cf1efec56a5c90" [label="copy{src=/get_sequare.lua, dest=/usr/local/work/lua}" shape="note"];
  "sha256:80256761d6f1a6bd6efd9282e344a8c125af025ecc19b9548cae9ba75af7585f" [label="sha256:80256761d6f1a6bd6efd9282e344a8c125af025ecc19b9548cae9ba75af7585f" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:48d8ad5b154074b5827fe0d5ee6c2ea5516353233136fa5b67ffd7816b5d648e" [label=""];
  "sha256:48d8ad5b154074b5827fe0d5ee6c2ea5516353233136fa5b67ffd7816b5d648e" -> "sha256:4dfbbbc715be67de35e7f4c96a8b599d3ff44b59e5ccc451dd4aab1947c54c73" [label=""];
  "sha256:4dfbbbc715be67de35e7f4c96a8b599d3ff44b59e5ccc451dd4aab1947c54c73" -> "sha256:f94d76e3dbaba7b501123e1c66fd772441b7ccb308ac41d150cb9c324f7f6910" [label=""];
  "sha256:f94d76e3dbaba7b501123e1c66fd772441b7ccb308ac41d150cb9c324f7f6910" -> "sha256:59d3b39035c05811f130edd3e3aeb14cd06cf70182e270afdc46b519359d786f" [label=""];
  "sha256:283e092a87b14d39c8c2644aeb6ee003a80df1b450f979320e6ff7216fad8aee" -> "sha256:59d3b39035c05811f130edd3e3aeb14cd06cf70182e270afdc46b519359d786f" [label=""];
  "sha256:59d3b39035c05811f130edd3e3aeb14cd06cf70182e270afdc46b519359d786f" -> "sha256:f456ac3c9fa9bde99725559bffca335e17a1eb6eb9de2ffccd64e5d9249131d6" [label=""];
  "sha256:f456ac3c9fa9bde99725559bffca335e17a1eb6eb9de2ffccd64e5d9249131d6" -> "sha256:85278dcf48223d8538c51d99ac329741ff9cf8992798db049f840052c4b892d4" [label=""];
  "sha256:85278dcf48223d8538c51d99ac329741ff9cf8992798db049f840052c4b892d4" -> "sha256:de28d83658d97894c12b2f2046e9309bbb08ef17e315548de72ec4fa53e7187a" [label=""];
  "sha256:283e092a87b14d39c8c2644aeb6ee003a80df1b450f979320e6ff7216fad8aee" -> "sha256:de28d83658d97894c12b2f2046e9309bbb08ef17e315548de72ec4fa53e7187a" [label=""];
  "sha256:de28d83658d97894c12b2f2046e9309bbb08ef17e315548de72ec4fa53e7187a" -> "sha256:f9883e4a9eae6faf83fa94c10fe9962d3dc9fe14fc965ec5c95a75e10caa1392" [label=""];
  "sha256:f9883e4a9eae6faf83fa94c10fe9962d3dc9fe14fc965ec5c95a75e10caa1392" -> "sha256:4e1e0782b2c06998cc396f2beaf9359b34401105e42adf1516bf8dc85f76441c" [label=""];
  "sha256:4e1e0782b2c06998cc396f2beaf9359b34401105e42adf1516bf8dc85f76441c" -> "sha256:d5da91a69a9122bcadb0aad23afce8b4e33353bb8c84f0b6e2167430ec645cb8" [label=""];
  "sha256:283e092a87b14d39c8c2644aeb6ee003a80df1b450f979320e6ff7216fad8aee" -> "sha256:d5da91a69a9122bcadb0aad23afce8b4e33353bb8c84f0b6e2167430ec645cb8" [label=""];
  "sha256:d5da91a69a9122bcadb0aad23afce8b4e33353bb8c84f0b6e2167430ec645cb8" -> "sha256:a3df9dd9820615f0ad042e9b81ce5ae96af1dc69780fed0a0606a7b504aa42bb" [label=""];
  "sha256:283e092a87b14d39c8c2644aeb6ee003a80df1b450f979320e6ff7216fad8aee" -> "sha256:a3df9dd9820615f0ad042e9b81ce5ae96af1dc69780fed0a0606a7b504aa42bb" [label=""];
  "sha256:a3df9dd9820615f0ad042e9b81ce5ae96af1dc69780fed0a0606a7b504aa42bb" -> "sha256:d6f70d10613c2630c40f2d8dfd5e561417e643e2ed2ebee94e2f13fbd4096d5e" [label=""];
  "sha256:d6f70d10613c2630c40f2d8dfd5e561417e643e2ed2ebee94e2f13fbd4096d5e" -> "sha256:f8283e0abe02964aa3768daefcdfbb5b924027f2df6eafc02c37390bcb5f5016" [label=""];
  "sha256:f8283e0abe02964aa3768daefcdfbb5b924027f2df6eafc02c37390bcb5f5016" -> "sha256:cbca9918edc4b4d6b25cbf0b65681869c3f991cd19fcf2f81b9b049811c9bfcf" [label=""];
  "sha256:283e092a87b14d39c8c2644aeb6ee003a80df1b450f979320e6ff7216fad8aee" -> "sha256:cbca9918edc4b4d6b25cbf0b65681869c3f991cd19fcf2f81b9b049811c9bfcf" [label=""];
  "sha256:cbca9918edc4b4d6b25cbf0b65681869c3f991cd19fcf2f81b9b049811c9bfcf" -> "sha256:850387dde96700539a2bd0d8021931f5db41f284f3d4c2defb51f22b0d1b423a" [label=""];
  "sha256:283e092a87b14d39c8c2644aeb6ee003a80df1b450f979320e6ff7216fad8aee" -> "sha256:850387dde96700539a2bd0d8021931f5db41f284f3d4c2defb51f22b0d1b423a" [label=""];
  "sha256:850387dde96700539a2bd0d8021931f5db41f284f3d4c2defb51f22b0d1b423a" -> "sha256:856bc3d6a3173de16d496961b82cef3e7f189d468c81ab7d162ad823eeea991d" [label=""];
  "sha256:856bc3d6a3173de16d496961b82cef3e7f189d468c81ab7d162ad823eeea991d" -> "sha256:36730820b3ad1cfe14ba760c9337e933e72e7fd2f636bbe0821bc5a3c417166b" [label=""];
  "sha256:283e092a87b14d39c8c2644aeb6ee003a80df1b450f979320e6ff7216fad8aee" -> "sha256:36730820b3ad1cfe14ba760c9337e933e72e7fd2f636bbe0821bc5a3c417166b" [label=""];
  "sha256:36730820b3ad1cfe14ba760c9337e933e72e7fd2f636bbe0821bc5a3c417166b" -> "sha256:682d1b6ca97ede4fd00542d703640942c085c13c1369a856fb59b70f6d140e9f" [label=""];
  "sha256:682d1b6ca97ede4fd00542d703640942c085c13c1369a856fb59b70f6d140e9f" -> "sha256:91dae4ac2b6428e37531777d9f4df4f41e2ed3e4431aa2bb55c4d1f93f866701" [label=""];
  "sha256:283e092a87b14d39c8c2644aeb6ee003a80df1b450f979320e6ff7216fad8aee" -> "sha256:91dae4ac2b6428e37531777d9f4df4f41e2ed3e4431aa2bb55c4d1f93f866701" [label=""];
  "sha256:91dae4ac2b6428e37531777d9f4df4f41e2ed3e4431aa2bb55c4d1f93f866701" -> "sha256:228fe39ec7e00e86f114f16897afc49f2c1b0937ed44bf85c0cf1efec56a5c90" [label=""];
  "sha256:283e092a87b14d39c8c2644aeb6ee003a80df1b450f979320e6ff7216fad8aee" -> "sha256:228fe39ec7e00e86f114f16897afc49f2c1b0937ed44bf85c0cf1efec56a5c90" [label=""];
  "sha256:228fe39ec7e00e86f114f16897afc49f2c1b0937ed44bf85c0cf1efec56a5c90" -> "sha256:80256761d6f1a6bd6efd9282e344a8c125af025ecc19b9548cae9ba75af7585f" [label=""];
}
