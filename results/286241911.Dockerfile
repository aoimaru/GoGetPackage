[app/sources/286241911.Dockerfile]
digraph {
  "sha256:78b112054fe539d20d0f79b7ab22f3bd073ba20c3e62098ca1307aac1bc36756" [label="docker-image://docker.io/library/httpd:2.4" shape="ellipse"];
  "sha256:bd3ca0d3808fadde5aafbd3881dc9b071812cd93936a7edbab99e76af3f6a708" [label="/bin/sh -c echo \"\\nServerName sawbuck_app\\nAddDefaultCharset utf-8\\nLoadModule proxy_module modules/mod_proxy.so\\nLoadModule proxy_http_module modules/mod_proxy_http.so\\nProxyPass /api http://market-rest-api:8000\\nProxyPassReverse /api http://market-rest-api:8000\\n\\n\" >>/usr/local/apache2/conf/httpd.conf" shape="box"];
  "sha256:67740897f53ae12534c5711868599be15c516ab590b831c00304a181df1257c0" [label="sha256:67740897f53ae12534c5711868599be15c516ab590b831c00304a181df1257c0" shape="plaintext"];
  "sha256:78b112054fe539d20d0f79b7ab22f3bd073ba20c3e62098ca1307aac1bc36756" -> "sha256:bd3ca0d3808fadde5aafbd3881dc9b071812cd93936a7edbab99e76af3f6a708" [label=""];
  "sha256:bd3ca0d3808fadde5aafbd3881dc9b071812cd93936a7edbab99e76af3f6a708" -> "sha256:67740897f53ae12534c5711868599be15c516ab590b831c00304a181df1257c0" [label=""];
}

