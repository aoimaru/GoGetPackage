[app/sources/346560037.Dockerfile]
digraph {
  "sha256:748ad5a546deec413d8f590751769a393a354df6606d9d77b34286f2041d7ac3" [label="docker-image://docker.io/occitech/magento:php5.4-apache@sha256:38d9dab8837b3ecc8a97cf52d4b5838e3591b6f825d36bfcadced281eb875f93" shape="ellipse"];
  "sha256:05e25302a060c659b737eebb0fdd27a3a30f9a24fae6425d92c970051437bb0a" [label="local://context" shape="ellipse"];
  "sha256:27d79e999607732264821654f50e0526340f85d482c91c2bd3466b7a9e91b92b" [label="copy{src=/bin/set-base-url, dest=/usr/local/bin/set-base-url}" shape="note"];
  "sha256:d1f6368b769b53d43ba3ed60947d7fed40b20c341e175d28a7695a8702bd4ac6" [label="/bin/sh -c curl -sS http://getcomposer.org/installer | php -- --install-dir=/usr/local/bin/ --filename=composer" shape="box"];
  "sha256:c8eecada5364446d9b20851d9fb994e61c2140048bb09301909fbc3873e04832" [label="/bin/sh -c apt-get update && \tapt-get install -y libv8-dev g++&& \trm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:2f4724c661899ff8470b54b689b5800148430d1854c073bdee59ae38ac6cb8bf" [label="/bin/sh -c pecl install v8js-0.1.3 \t&& echo \"extension=v8js.so\" > /usr/local/etc/php/conf.d/ext-v8js.ini" shape="box"];
  "sha256:ddd99833bb7c96bfb1d60e75ac65ae4e489385fd7eedddaf3208add8a97949f6" [label="/bin/sh -c pecl install zip \t&& echo \"extension=zip.so\" > /usr/local/etc/php/conf.d/ext-zip.ini" shape="box"];
  "sha256:a1b59c10ab41919528330765fa8bb64a9d7d3607f90fdb3d2e1d2a7ebedb21c4" [label="sha256:a1b59c10ab41919528330765fa8bb64a9d7d3607f90fdb3d2e1d2a7ebedb21c4" shape="plaintext"];
  "sha256:748ad5a546deec413d8f590751769a393a354df6606d9d77b34286f2041d7ac3" -> "sha256:27d79e999607732264821654f50e0526340f85d482c91c2bd3466b7a9e91b92b" [label=""];
  "sha256:05e25302a060c659b737eebb0fdd27a3a30f9a24fae6425d92c970051437bb0a" -> "sha256:27d79e999607732264821654f50e0526340f85d482c91c2bd3466b7a9e91b92b" [label=""];
  "sha256:27d79e999607732264821654f50e0526340f85d482c91c2bd3466b7a9e91b92b" -> "sha256:d1f6368b769b53d43ba3ed60947d7fed40b20c341e175d28a7695a8702bd4ac6" [label=""];
  "sha256:d1f6368b769b53d43ba3ed60947d7fed40b20c341e175d28a7695a8702bd4ac6" -> "sha256:c8eecada5364446d9b20851d9fb994e61c2140048bb09301909fbc3873e04832" [label=""];
  "sha256:c8eecada5364446d9b20851d9fb994e61c2140048bb09301909fbc3873e04832" -> "sha256:2f4724c661899ff8470b54b689b5800148430d1854c073bdee59ae38ac6cb8bf" [label=""];
  "sha256:2f4724c661899ff8470b54b689b5800148430d1854c073bdee59ae38ac6cb8bf" -> "sha256:ddd99833bb7c96bfb1d60e75ac65ae4e489385fd7eedddaf3208add8a97949f6" [label=""];
  "sha256:ddd99833bb7c96bfb1d60e75ac65ae4e489385fd7eedddaf3208add8a97949f6" -> "sha256:a1b59c10ab41919528330765fa8bb64a9d7d3607f90fdb3d2e1d2a7ebedb21c4" [label=""];
}

