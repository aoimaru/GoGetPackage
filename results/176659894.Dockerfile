[app/sources/176659894.Dockerfile]
digraph {
  "sha256:3bc7a1629f4098e746feae309180f12c784325954935a28748e64c1a3b9540b0" [label="local://context" shape="ellipse"];
  "sha256:4696760d590b25da411ffe962b0b06ad4d415eea0e6ca763077fcca33e405f0c" [label="docker-image://docker.io/phusion/baseimage:0.9.15" shape="ellipse"];
  "sha256:f6bb38852ecf2f98f3b0ba1bf709d629aae06e409301ce0d13603981ce6906f4" [label="/bin/sh -c apt-get update && \t    apt-get -yq install \t    apache2 \t    curl \t    libapache2-mod-php5 \t    mysql-server-5.5 \t    php5-mysql \t    php5-gd \t    php5-curl \t    php-pear \t    php-apc" shape="box"];
  "sha256:989d844bc74668aee922428c1c133e2f8a7980a02117f234a20b1325737408b4" [label="/bin/sh -c sed -i \"s/variables_order.*/variables_order = \\\"EGPCS\\\"/g\" /etc/php5/apache2/php.ini" shape="box"];
  "sha256:69063b194e9b566c15dcc8eedf1fad14376b99b3232a9e22a249f928e1fcba41" [label="/bin/sh -c curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer" shape="box"];
  "sha256:f57cbf8725c401189349f93c2bfa6fb5809ea64d5a15a330f2468c4d10b8babf" [label="/bin/sh -c mkdir -p /app && rm -fr /var/www/html && ln -s /app /var/www/html" shape="box"];
  "sha256:de1e27f3464f8a06d16954fc00a3a86636fc81ff2d1b2bcc03944163f94b522f" [label="copy{src=/run, dest=/etc/service/apache/}" shape="note"];
  "sha256:8f3872cfca88f37aa1f5599d8399d37e26b97f4d790091291c92f77af77e1655" [label="mkdir{path=/app}" shape="note"];
  "sha256:e0464c244621c75c6eb7bc5a541147775963adff03373b20393342f05e01fdc8" [label="/bin/sh -c apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:d4d61ab471ce56812b50ef780614988b80600cb1efb7cde3d6867fda98864825" [label="sha256:d4d61ab471ce56812b50ef780614988b80600cb1efb7cde3d6867fda98864825" shape="plaintext"];
  "sha256:4696760d590b25da411ffe962b0b06ad4d415eea0e6ca763077fcca33e405f0c" -> "sha256:f6bb38852ecf2f98f3b0ba1bf709d629aae06e409301ce0d13603981ce6906f4" [label=""];
  "sha256:f6bb38852ecf2f98f3b0ba1bf709d629aae06e409301ce0d13603981ce6906f4" -> "sha256:989d844bc74668aee922428c1c133e2f8a7980a02117f234a20b1325737408b4" [label=""];
  "sha256:989d844bc74668aee922428c1c133e2f8a7980a02117f234a20b1325737408b4" -> "sha256:69063b194e9b566c15dcc8eedf1fad14376b99b3232a9e22a249f928e1fcba41" [label=""];
  "sha256:69063b194e9b566c15dcc8eedf1fad14376b99b3232a9e22a249f928e1fcba41" -> "sha256:f57cbf8725c401189349f93c2bfa6fb5809ea64d5a15a330f2468c4d10b8babf" [label=""];
  "sha256:f57cbf8725c401189349f93c2bfa6fb5809ea64d5a15a330f2468c4d10b8babf" -> "sha256:de1e27f3464f8a06d16954fc00a3a86636fc81ff2d1b2bcc03944163f94b522f" [label=""];
  "sha256:3bc7a1629f4098e746feae309180f12c784325954935a28748e64c1a3b9540b0" -> "sha256:de1e27f3464f8a06d16954fc00a3a86636fc81ff2d1b2bcc03944163f94b522f" [label=""];
  "sha256:de1e27f3464f8a06d16954fc00a3a86636fc81ff2d1b2bcc03944163f94b522f" -> "sha256:8f3872cfca88f37aa1f5599d8399d37e26b97f4d790091291c92f77af77e1655" [label=""];
  "sha256:8f3872cfca88f37aa1f5599d8399d37e26b97f4d790091291c92f77af77e1655" -> "sha256:e0464c244621c75c6eb7bc5a541147775963adff03373b20393342f05e01fdc8" [label=""];
  "sha256:e0464c244621c75c6eb7bc5a541147775963adff03373b20393342f05e01fdc8" -> "sha256:d4d61ab471ce56812b50ef780614988b80600cb1efb7cde3d6867fda98864825" [label=""];
}

