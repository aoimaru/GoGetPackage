[app/sources/229974412.Dockerfile]
digraph {
  "sha256:78b112054fe539d20d0f79b7ab22f3bd073ba20c3e62098ca1307aac1bc36756" [label="docker-image://docker.io/library/httpd:2.4" shape="ellipse"];
  "sha256:2ff8810bd3d91b0f9b55b1e74e39ace70a5e17e4567641454391a3e21a6790b8" [label="local://context" shape="ellipse"];
  "sha256:90bef5ec5e4641cda61dd071e0f18c90f82dabee0916039b92e39183e6ecd9ef" [label="copy{src=/assets/alfresco-vhost.conf, dest=/usr/local/apache2/conf/extra/alfresco-vhost.conf}" shape="note"];
  "sha256:987f62ca277c43b355123699c106232db4c007d634b5dbc5ebdf8d26600af686" [label="/bin/sh -c set -x \t&& sed -i 's,#LoadModule socache_shmcb_module modules/mod_socache_shmcb.so,LoadModule socache_shmcb_module modules/mod_socache_shmcb.so,g' /usr/local/apache2/conf/httpd.conf \t&& sed -i 's,#LoadModule xml2enc_module modules/mod_xml2enc.so,LoadModule xml2enc_module modules/mod_xml2enc.so,g' /usr/local/apache2/conf/httpd.conf \t&& sed -i 's,#LoadModule rewrite_module modules/mod_rewrite.so,LoadModule rewrite_module modules/mod_rewrite.so,g' /usr/local/apache2/conf/httpd.conf \t&& sed -i 's,#LoadModule proxy_html_module modules/mod_proxy_html.so,LoadModule proxy_html_module modules/mod_proxy_html.so,g' /usr/local/apache2/conf/httpd.conf \t&& sed -i 's,#LoadModule proxy_module modules/mod_proxy.so,LoadModule proxy_module modules/mod_proxy.so,g' /usr/local/apache2/conf/httpd.conf \t&& sed -i 's,#LoadModule proxy_connect_module modules/mod_proxy_connect.so,LoadModule proxy_connect_module modules/mod_proxy_connect.so,g' /usr/local/apache2/conf/httpd.conf \t&& sed -i 's,#LoadModule proxy_ajp_module modules/mod_proxy_ajp.so,LoadModule proxy_ajp_module modules/mod_proxy_ajp.so,g' /usr/local/apache2/conf/httpd.conf \t&& sed -i 's,#LoadModule proxy_http_module modules/mod_proxy_http.so,LoadModule proxy_http_module modules/mod_proxy_http.so,g' /usr/local/apache2/conf/httpd.conf \t&& echo \"Include conf/extra/alfresco-vhost.conf\" >> /usr/local/apache2/conf/httpd.conf" shape="box"];
  "sha256:5e5632968d626871f8260490075f7532c83e9556c6382b12297349987ed2bf30" [label="sha256:5e5632968d626871f8260490075f7532c83e9556c6382b12297349987ed2bf30" shape="plaintext"];
  "sha256:78b112054fe539d20d0f79b7ab22f3bd073ba20c3e62098ca1307aac1bc36756" -> "sha256:90bef5ec5e4641cda61dd071e0f18c90f82dabee0916039b92e39183e6ecd9ef" [label=""];
  "sha256:2ff8810bd3d91b0f9b55b1e74e39ace70a5e17e4567641454391a3e21a6790b8" -> "sha256:90bef5ec5e4641cda61dd071e0f18c90f82dabee0916039b92e39183e6ecd9ef" [label=""];
  "sha256:90bef5ec5e4641cda61dd071e0f18c90f82dabee0916039b92e39183e6ecd9ef" -> "sha256:987f62ca277c43b355123699c106232db4c007d634b5dbc5ebdf8d26600af686" [label=""];
  "sha256:987f62ca277c43b355123699c106232db4c007d634b5dbc5ebdf8d26600af686" -> "sha256:5e5632968d626871f8260490075f7532c83e9556c6382b12297349987ed2bf30" [label=""];
}

