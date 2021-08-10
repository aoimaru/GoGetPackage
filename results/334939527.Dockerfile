[app/sources/334939527.Dockerfile]
digraph {
  "sha256:26c8b9bf8709797d90fe82aa425c6d821bb19dfbbb3d144edc9675725eddd6b9" [label="docker-image://docker.io/appsvcorg/alpine-php-mysql:0.32" shape="ellipse"];
  "sha256:be22a2caf98bf7837cf028403d2d1c4667600681de8e05939f7308db39b50846" [label="mkdir{path=/dockerbuild}" shape="note"];
  "sha256:314a22894b33ea641c6c78c3c98981149f4c02a70241b0de5bf2a3e0a2073725" [label="/bin/sh -c set -ex     && apk add --update git tcpdump tcptraceroute net-tools\t&& cd /usr/bin \t&& wget http://www.vdberg.org/~richard/tcpping \t&& chmod 777 tcpping     && apk add --update redis     && apk add --update php7-redis \t&& mkdir -p $WORDPRESS_SOURCE \t&& apk update \t&& apk upgrade \t&& rm -rf /var/cache/apk/*" shape="box"];
  "sha256:ce532c71f2b39726865208a7917a9edd49eb077e72cf4d5539ff14ea959f7675" [label="local://context" shape="ellipse"];
  "sha256:35da11c1973867f6b5033f892b8243da5b5731ade7c7af828ea6a0b0e5482741" [label="copy{src=/httpd-wordpress.conf, dest=/}" shape="note"];
  "sha256:1bae1e1841b7d49fd3ef1c5d45efe637ed175dc18f639a6a4dd74fc158cf0436" [label="copy{src=/httpd-modules.conf, dest=/}" shape="note"];
  "sha256:02c3377369eccfe621b9bcf89bf95e8a8cff9d707f03cc268f0479b25efd4cc3" [label="/bin/sh -c set -ex \t&& ln -s $WORDPRESS_HOME /var/www/wordpress     && test -e /usr/local/bin/entrypoint.sh && mv /usr/local/bin/entrypoint.sh /usr/local/bin/entrypoint.bak" shape="box"];
  "sha256:638ab26c30e33e0a0a7540dc15725f517a6dba8b703d57879c64879114409345" [label="copy{src=/wp-config.php, dest=/usr/src/wordpress/}" shape="note"];
  "sha256:6e416e2497cc529011e1254eb08e7d54c8880903b48e04fa7664d0f6a61a36b8" [label="copy{src=/entrypoint.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:9241eddae72d22eb6cd74a5d4f978b38cbd79b0f0db16a08a32d690b57e8e666" [label="/bin/sh -c chmod +x /usr/local/bin/entrypoint.sh" shape="box"];
  "sha256:34ff73c3008a44e7af9fc265716a3c650e44626b6301c1377354780c830801d0" [label="sha256:34ff73c3008a44e7af9fc265716a3c650e44626b6301c1377354780c830801d0" shape="plaintext"];
  "sha256:26c8b9bf8709797d90fe82aa425c6d821bb19dfbbb3d144edc9675725eddd6b9" -> "sha256:be22a2caf98bf7837cf028403d2d1c4667600681de8e05939f7308db39b50846" [label=""];
  "sha256:be22a2caf98bf7837cf028403d2d1c4667600681de8e05939f7308db39b50846" -> "sha256:314a22894b33ea641c6c78c3c98981149f4c02a70241b0de5bf2a3e0a2073725" [label=""];
  "sha256:314a22894b33ea641c6c78c3c98981149f4c02a70241b0de5bf2a3e0a2073725" -> "sha256:35da11c1973867f6b5033f892b8243da5b5731ade7c7af828ea6a0b0e5482741" [label=""];
  "sha256:ce532c71f2b39726865208a7917a9edd49eb077e72cf4d5539ff14ea959f7675" -> "sha256:35da11c1973867f6b5033f892b8243da5b5731ade7c7af828ea6a0b0e5482741" [label=""];
  "sha256:35da11c1973867f6b5033f892b8243da5b5731ade7c7af828ea6a0b0e5482741" -> "sha256:1bae1e1841b7d49fd3ef1c5d45efe637ed175dc18f639a6a4dd74fc158cf0436" [label=""];
  "sha256:ce532c71f2b39726865208a7917a9edd49eb077e72cf4d5539ff14ea959f7675" -> "sha256:1bae1e1841b7d49fd3ef1c5d45efe637ed175dc18f639a6a4dd74fc158cf0436" [label=""];
  "sha256:1bae1e1841b7d49fd3ef1c5d45efe637ed175dc18f639a6a4dd74fc158cf0436" -> "sha256:02c3377369eccfe621b9bcf89bf95e8a8cff9d707f03cc268f0479b25efd4cc3" [label=""];
  "sha256:02c3377369eccfe621b9bcf89bf95e8a8cff9d707f03cc268f0479b25efd4cc3" -> "sha256:638ab26c30e33e0a0a7540dc15725f517a6dba8b703d57879c64879114409345" [label=""];
  "sha256:ce532c71f2b39726865208a7917a9edd49eb077e72cf4d5539ff14ea959f7675" -> "sha256:638ab26c30e33e0a0a7540dc15725f517a6dba8b703d57879c64879114409345" [label=""];
  "sha256:638ab26c30e33e0a0a7540dc15725f517a6dba8b703d57879c64879114409345" -> "sha256:6e416e2497cc529011e1254eb08e7d54c8880903b48e04fa7664d0f6a61a36b8" [label=""];
  "sha256:ce532c71f2b39726865208a7917a9edd49eb077e72cf4d5539ff14ea959f7675" -> "sha256:6e416e2497cc529011e1254eb08e7d54c8880903b48e04fa7664d0f6a61a36b8" [label=""];
  "sha256:6e416e2497cc529011e1254eb08e7d54c8880903b48e04fa7664d0f6a61a36b8" -> "sha256:9241eddae72d22eb6cd74a5d4f978b38cbd79b0f0db16a08a32d690b57e8e666" [label=""];
  "sha256:9241eddae72d22eb6cd74a5d4f978b38cbd79b0f0db16a08a32d690b57e8e666" -> "sha256:34ff73c3008a44e7af9fc265716a3c650e44626b6301c1377354780c830801d0" [label=""];
}

