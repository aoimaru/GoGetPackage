[app/sources/252766175.Dockerfile]
digraph {
  "sha256:5f8e36a4b43d453932c5671c76bc67b2d276d266a90433dd578a430d1ca0eb60" [label="docker-image://docker.io/nimmis/apache-php5:latest" shape="ellipse"];
  "sha256:2e5bfff7ac775de8b9fafa552370df3919ab1c4f803cfa4071fa39f572edcb61" [label="/bin/sh -c rm -rf /var/www/html/index.html" shape="box"];
  "sha256:ba07865b3c3e7e231b69e781948c8e218c843454507e324c53e203523e8010e3" [label="local://context" shape="ellipse"];
  "sha256:1143c8378165904176b3e09091da9bbcb98c0485d9d91a7af5dd37e69923199d" [label="copy{src=/, dest=/var/www/html}" shape="note"];
  "sha256:2546c72f9fc17083c01c675e27e4f7ea5f34f1d3303928783ddec7b71cc099fa" [label="copy{src=/resources/default.config.php, dest=/var/www/html/resources/config.php}" shape="note"];
  "sha256:99f0c12e8e2528b10ade6de83a715c9d10d3cc8b6843307aa164460fc7bafe27" [label="copy{src=/index.php, dest=/var/www/html}" shape="note"];
  "sha256:9218de539e4cfae29738b305c28ce08a642c656dc76553ef18e9cf5e2cc3ed68" [label="sha256:9218de539e4cfae29738b305c28ce08a642c656dc76553ef18e9cf5e2cc3ed68" shape="plaintext"];
  "sha256:5f8e36a4b43d453932c5671c76bc67b2d276d266a90433dd578a430d1ca0eb60" -> "sha256:2e5bfff7ac775de8b9fafa552370df3919ab1c4f803cfa4071fa39f572edcb61" [label=""];
  "sha256:2e5bfff7ac775de8b9fafa552370df3919ab1c4f803cfa4071fa39f572edcb61" -> "sha256:1143c8378165904176b3e09091da9bbcb98c0485d9d91a7af5dd37e69923199d" [label=""];
  "sha256:ba07865b3c3e7e231b69e781948c8e218c843454507e324c53e203523e8010e3" -> "sha256:1143c8378165904176b3e09091da9bbcb98c0485d9d91a7af5dd37e69923199d" [label=""];
  "sha256:1143c8378165904176b3e09091da9bbcb98c0485d9d91a7af5dd37e69923199d" -> "sha256:2546c72f9fc17083c01c675e27e4f7ea5f34f1d3303928783ddec7b71cc099fa" [label=""];
  "sha256:ba07865b3c3e7e231b69e781948c8e218c843454507e324c53e203523e8010e3" -> "sha256:2546c72f9fc17083c01c675e27e4f7ea5f34f1d3303928783ddec7b71cc099fa" [label=""];
  "sha256:2546c72f9fc17083c01c675e27e4f7ea5f34f1d3303928783ddec7b71cc099fa" -> "sha256:99f0c12e8e2528b10ade6de83a715c9d10d3cc8b6843307aa164460fc7bafe27" [label=""];
  "sha256:ba07865b3c3e7e231b69e781948c8e218c843454507e324c53e203523e8010e3" -> "sha256:99f0c12e8e2528b10ade6de83a715c9d10d3cc8b6843307aa164460fc7bafe27" [label=""];
  "sha256:99f0c12e8e2528b10ade6de83a715c9d10d3cc8b6843307aa164460fc7bafe27" -> "sha256:9218de539e4cfae29738b305c28ce08a642c656dc76553ef18e9cf5e2cc3ed68" [label=""];
}

