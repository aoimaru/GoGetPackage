[app/sources/322541857.Dockerfile]
digraph {
  "sha256:5a1ccd13281e58366e8aae86554b6cc24fc629d1fd6c3692b5f4ef07ec44e01b" [label="local://context" shape="ellipse"];
  "sha256:bf8ab9c3c47af0e810025efbbfae85a41c21db93df1f568d2ae1ba6f858f8ab6" [label="docker-image://docker.io/library/php:7.2-fpm@sha256:9c84ae47fddb97b94d1d2e289635b7306142a5336bc4ece0a393458c5e0d2cef" shape="ellipse"];
  "sha256:d933cf9496eb871467c5c131c52bbb9b86254583ca1990fa7f46d4c763a51080" [label="mkdir{path=/var/www}" shape="note"];
  "sha256:6d928221dbf285394f96626cc043967a4f7b0cbe7d7fc059fb9613599127700e" [label="/bin/sh -c set -x   && apt-get update -y   && apt-get install --no-install-recommends --no-install-suggests -y     nginx     nginx-extras     curl     git     unzip     zlib1g-dev     gnupg     libpng-dev     vim   && apt-get clean" shape="box"];
  "sha256:759eb1423a32ee3573bad055615229ca31cbb626d3e67735239eb5c7b051b742" [label="/bin/sh -c curl --silent --location https://deb.nodesource.com/setup_8.x | bash -" shape="box"];
  "sha256:54182954bfb58080be9c45ee29a44c27e5109c043a31c21f61e45b83dee891ea" [label="/bin/sh -c apt-get install --no-install-recommends --no-install-suggests -y     nodejs   && apt-get clean" shape="box"];
  "sha256:e3b630760952d7061ee2e2a93ec4ba7e99a987d24e99dac406d0d9b60fefa5bd" [label="/bin/sh -c docker-php-ext-install zip" shape="box"];
  "sha256:d1e88e1b9cf34eefb9b3debd7c0a33faf0b7abbfbe4e0697d9b179c7aa2c17ac" [label="/bin/sh -c ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone" shape="box"];
  "sha256:3019245ae6293839a477ae8ced21dfed918ef270caf1174d5ca957db7050a48c" [label="/bin/sh -c curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer" shape="box"];
  "sha256:ac8d42fec63a9f0da4ad599f0028c402444fd8e1296cdca0597e4c943ba804aa" [label="/bin/sh -c composer config -g repos.packagist composer https://packagist.jp" shape="box"];
  "sha256:e0e224737407f27a1899bc5e308c639fa876fad6589452367cb34da738b94478" [label="/bin/sh -c composer global require hirak/prestissimo" shape="box"];
  "sha256:295803dfb716a3bdc7d303680a1096289725b1a74d9f0b19f900b3d02df6d1fa" [label="copy{src=/deploy/web/site.conf, dest=/etc/nginx/sites-available/default}" shape="note"];
  "sha256:69efc95298027382c463c9e0f517a5abb3acfef3f286421f2af1f31723f8fb9c" [label="copy{src=/deploy/web/nginx.conf, dest=/etc/nginx/nginx.conf}" shape="note"];
  "sha256:773cb3db7633a3dd1d03471bfb424fcc517200aacdc21e6bcb8190904e2c0260" [label="copy{src=/deploy/web/mime.types, dest=/etc/nginx/mime.types}" shape="note"];
  "sha256:fb5262ff6806674d2ff3b7564eaadf9a1ee74fa541bcd000c0ad3c5e85505442" [label="copy{src=/deploy/web/php.ini, dest=/usr/local/etc/php/}" shape="note"];
  "sha256:cf1432be37f273c46e96ae68c57f926837ac1cce3bb81b63538afeabd707b1b4" [label="/bin/sh -c if [ ${FORCE_HTTPS} = true ]; then   sed -i 's/# fastcgi_param HTTPS/fastcgi_param HTTPS/' /etc/nginx/sites-available/default ;fi" shape="box"];
  "sha256:ae81431cc75334450375f62aa5f7d013fba7c59c8e322eff5f39d97bd3ec516b" [label="/bin/sh -c rm -rf /var/www/html/" shape="box"];
  "sha256:53adb2e3a16c576b6c74fe80005375f7ec893f127f7897cc4a1abbc5b6e6fb15" [label="sha256:53adb2e3a16c576b6c74fe80005375f7ec893f127f7897cc4a1abbc5b6e6fb15" shape="plaintext"];
  "sha256:bf8ab9c3c47af0e810025efbbfae85a41c21db93df1f568d2ae1ba6f858f8ab6" -> "sha256:d933cf9496eb871467c5c131c52bbb9b86254583ca1990fa7f46d4c763a51080" [label=""];
  "sha256:d933cf9496eb871467c5c131c52bbb9b86254583ca1990fa7f46d4c763a51080" -> "sha256:6d928221dbf285394f96626cc043967a4f7b0cbe7d7fc059fb9613599127700e" [label=""];
  "sha256:6d928221dbf285394f96626cc043967a4f7b0cbe7d7fc059fb9613599127700e" -> "sha256:759eb1423a32ee3573bad055615229ca31cbb626d3e67735239eb5c7b051b742" [label=""];
  "sha256:759eb1423a32ee3573bad055615229ca31cbb626d3e67735239eb5c7b051b742" -> "sha256:54182954bfb58080be9c45ee29a44c27e5109c043a31c21f61e45b83dee891ea" [label=""];
  "sha256:54182954bfb58080be9c45ee29a44c27e5109c043a31c21f61e45b83dee891ea" -> "sha256:e3b630760952d7061ee2e2a93ec4ba7e99a987d24e99dac406d0d9b60fefa5bd" [label=""];
  "sha256:e3b630760952d7061ee2e2a93ec4ba7e99a987d24e99dac406d0d9b60fefa5bd" -> "sha256:d1e88e1b9cf34eefb9b3debd7c0a33faf0b7abbfbe4e0697d9b179c7aa2c17ac" [label=""];
  "sha256:d1e88e1b9cf34eefb9b3debd7c0a33faf0b7abbfbe4e0697d9b179c7aa2c17ac" -> "sha256:3019245ae6293839a477ae8ced21dfed918ef270caf1174d5ca957db7050a48c" [label=""];
  "sha256:3019245ae6293839a477ae8ced21dfed918ef270caf1174d5ca957db7050a48c" -> "sha256:ac8d42fec63a9f0da4ad599f0028c402444fd8e1296cdca0597e4c943ba804aa" [label=""];
  "sha256:ac8d42fec63a9f0da4ad599f0028c402444fd8e1296cdca0597e4c943ba804aa" -> "sha256:e0e224737407f27a1899bc5e308c639fa876fad6589452367cb34da738b94478" [label=""];
  "sha256:e0e224737407f27a1899bc5e308c639fa876fad6589452367cb34da738b94478" -> "sha256:295803dfb716a3bdc7d303680a1096289725b1a74d9f0b19f900b3d02df6d1fa" [label=""];
  "sha256:5a1ccd13281e58366e8aae86554b6cc24fc629d1fd6c3692b5f4ef07ec44e01b" -> "sha256:295803dfb716a3bdc7d303680a1096289725b1a74d9f0b19f900b3d02df6d1fa" [label=""];
  "sha256:295803dfb716a3bdc7d303680a1096289725b1a74d9f0b19f900b3d02df6d1fa" -> "sha256:69efc95298027382c463c9e0f517a5abb3acfef3f286421f2af1f31723f8fb9c" [label=""];
  "sha256:5a1ccd13281e58366e8aae86554b6cc24fc629d1fd6c3692b5f4ef07ec44e01b" -> "sha256:69efc95298027382c463c9e0f517a5abb3acfef3f286421f2af1f31723f8fb9c" [label=""];
  "sha256:69efc95298027382c463c9e0f517a5abb3acfef3f286421f2af1f31723f8fb9c" -> "sha256:773cb3db7633a3dd1d03471bfb424fcc517200aacdc21e6bcb8190904e2c0260" [label=""];
  "sha256:5a1ccd13281e58366e8aae86554b6cc24fc629d1fd6c3692b5f4ef07ec44e01b" -> "sha256:773cb3db7633a3dd1d03471bfb424fcc517200aacdc21e6bcb8190904e2c0260" [label=""];
  "sha256:773cb3db7633a3dd1d03471bfb424fcc517200aacdc21e6bcb8190904e2c0260" -> "sha256:fb5262ff6806674d2ff3b7564eaadf9a1ee74fa541bcd000c0ad3c5e85505442" [label=""];
  "sha256:5a1ccd13281e58366e8aae86554b6cc24fc629d1fd6c3692b5f4ef07ec44e01b" -> "sha256:fb5262ff6806674d2ff3b7564eaadf9a1ee74fa541bcd000c0ad3c5e85505442" [label=""];
  "sha256:fb5262ff6806674d2ff3b7564eaadf9a1ee74fa541bcd000c0ad3c5e85505442" -> "sha256:cf1432be37f273c46e96ae68c57f926837ac1cce3bb81b63538afeabd707b1b4" [label=""];
  "sha256:cf1432be37f273c46e96ae68c57f926837ac1cce3bb81b63538afeabd707b1b4" -> "sha256:ae81431cc75334450375f62aa5f7d013fba7c59c8e322eff5f39d97bd3ec516b" [label=""];
  "sha256:ae81431cc75334450375f62aa5f7d013fba7c59c8e322eff5f39d97bd3ec516b" -> "sha256:53adb2e3a16c576b6c74fe80005375f7ec893f127f7897cc4a1abbc5b6e6fb15" [label=""];
}

