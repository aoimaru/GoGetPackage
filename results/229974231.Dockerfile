[app/sources/229974231.Dockerfile]
digraph {
  "sha256:e9cc5b6c9984a6059a7e16e9d5bb2fae7549b4a567ec04afa298933212f67e86" [label="docker-image://docker.io/keensoft/centos7-java8:latest" shape="ellipse"];
  "sha256:c8522e42fb7f8247c61925ddb4f53b37c32fd7c1e494135785eeb112f18bff4c" [label="/bin/sh -c set -x \t&& yum update -y \t&& yum install -y \t\tunzip \t\tlsof \t&& yum clean all" shape="box"];
  "sha256:e37ed29c8bc01334e601cccb0edf607b618a5e66f968ea73d016ac008d8c928c" [label="/bin/sh -c set -x \t&& mkdir -p $SOLR_DIR \t&& wget --no-check-certificate $SOLR6_DOWNLOAD_URL \t&& unzip alfresco-search-services-1.0.0.zip \t&& mv alfresco-search-services/* $SOLR_DIR \t&& rm -rf alfresco-search-services*" shape="box"];
  "sha256:ab12eb95daa5816e353c0de01ceff334c390ae46d6d9c5f58a4ce18b9a536312" [label="local://context" shape="ellipse"];
  "sha256:f1526ad39e3f6e38fc4f4573de6a83777b8c1747cf7da82fc108a72aa1ac529c" [label="copy{src=/assets/templates/rerank/conf/solrcore.properties, dest=/usr/local/solr/solrhome/templates/rerank/conf/solrcore.properties}" shape="note"];
  "sha256:6e5efc05c2715df319b95726f65a114e8906657688596e0eeab9d7f89e72b6a4" [label="copy{src=/assets/run.sh, dest=/usr/local/solr/run.sh}" shape="note"];
  "sha256:8e55fc7e59def710ead486ed3164865b71597751d594c93177347866624085d1" [label="mkdir{path=/usr/local/solr}" shape="note"];
  "sha256:37cbe0e792516d886b2bdaaf3a24de7c8544daa064ba7fcb87fb3dfccd4a79a5" [label="/bin/sh -c useradd -ms /bin/bash solr" shape="box"];
  "sha256:fad53529079f2a1bdbaff4701b1a592f9f63a76f40f9d930f09a5f084cef02ce" [label="/bin/sh -c set -x && chown -RL solr:solr $SOLR_DIR" shape="box"];
  "sha256:e209e0ab0d9a2b41ec61ca01b38855562ca9a4b7d3c9b53b94e0cccc7af1e3e4" [label="sha256:e209e0ab0d9a2b41ec61ca01b38855562ca9a4b7d3c9b53b94e0cccc7af1e3e4" shape="plaintext"];
  "sha256:e9cc5b6c9984a6059a7e16e9d5bb2fae7549b4a567ec04afa298933212f67e86" -> "sha256:c8522e42fb7f8247c61925ddb4f53b37c32fd7c1e494135785eeb112f18bff4c" [label=""];
  "sha256:c8522e42fb7f8247c61925ddb4f53b37c32fd7c1e494135785eeb112f18bff4c" -> "sha256:e37ed29c8bc01334e601cccb0edf607b618a5e66f968ea73d016ac008d8c928c" [label=""];
  "sha256:e37ed29c8bc01334e601cccb0edf607b618a5e66f968ea73d016ac008d8c928c" -> "sha256:f1526ad39e3f6e38fc4f4573de6a83777b8c1747cf7da82fc108a72aa1ac529c" [label=""];
  "sha256:ab12eb95daa5816e353c0de01ceff334c390ae46d6d9c5f58a4ce18b9a536312" -> "sha256:f1526ad39e3f6e38fc4f4573de6a83777b8c1747cf7da82fc108a72aa1ac529c" [label=""];
  "sha256:f1526ad39e3f6e38fc4f4573de6a83777b8c1747cf7da82fc108a72aa1ac529c" -> "sha256:6e5efc05c2715df319b95726f65a114e8906657688596e0eeab9d7f89e72b6a4" [label=""];
  "sha256:ab12eb95daa5816e353c0de01ceff334c390ae46d6d9c5f58a4ce18b9a536312" -> "sha256:6e5efc05c2715df319b95726f65a114e8906657688596e0eeab9d7f89e72b6a4" [label=""];
  "sha256:6e5efc05c2715df319b95726f65a114e8906657688596e0eeab9d7f89e72b6a4" -> "sha256:8e55fc7e59def710ead486ed3164865b71597751d594c93177347866624085d1" [label=""];
  "sha256:8e55fc7e59def710ead486ed3164865b71597751d594c93177347866624085d1" -> "sha256:37cbe0e792516d886b2bdaaf3a24de7c8544daa064ba7fcb87fb3dfccd4a79a5" [label=""];
  "sha256:37cbe0e792516d886b2bdaaf3a24de7c8544daa064ba7fcb87fb3dfccd4a79a5" -> "sha256:fad53529079f2a1bdbaff4701b1a592f9f63a76f40f9d930f09a5f084cef02ce" [label=""];
  "sha256:fad53529079f2a1bdbaff4701b1a592f9f63a76f40f9d930f09a5f084cef02ce" -> "sha256:e209e0ab0d9a2b41ec61ca01b38855562ca9a4b7d3c9b53b94e0cccc7af1e3e4" [label=""];
}

