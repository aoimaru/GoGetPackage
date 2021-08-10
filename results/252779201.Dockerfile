[app/sources/252779201.Dockerfile]
digraph {
  "sha256:3e382fc86fd8e1d98effe183e023b3d88def7fda607bb0c36c56545693baa2da" [label="docker-image://docker.io/bytepark/alpine-nginx:1.1" shape="ellipse"];
  "sha256:656a0d94c067117cf4c225a93442308c7b7c3c43c7b2366ee44079e66167e7a4" [label="/bin/sh -c apk upgrade -U && apk --update add php7 php7-zlib php7-dom php7-xml php7-xsl php7-pdo php7-pdo_mysql php7-mcrypt php7-curl php7-json php7-fpm php7-phar php7-openssl php7-mysqli php7-ctype php7-opcache php7-mbstring php7-xmlreader" shape="box"];
  "sha256:195e0506cbd6561c2a1e98ec335567a097332cbf47af64181aaf13be9c629b18" [label="local://context" shape="ellipse"];
  "sha256:28325d6e660a4a05669057eb4dd7022cd3f84daf2007d82968d8839216cbe4e0" [label="copy{src=/rootfs, dest=/}" shape="note"];
  "sha256:8debae371fe0423d5d26e476d8fafc112f66f178b7a08cb6933aa32ad9a22f6a" [label="/bin/sh -c ln -s /etc/php7 /etc/php && ln -s /usr/bin/php7 /usr/bin/php && ln -s /usr/sbin/php-fpm7 /usr/bin/php-fpm && ln -s /usr/lib/php7 /usr/lib/php && rm -fr /var/cache/apk/*" shape="box"];
  "sha256:c7cecf75eb74eec96bd208488a73ef6e320919eee2ad8f598703901f217a0660" [label="/bin/sh -c curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer" shape="box"];
  "sha256:b81c8f5582ee50a918c840d7023572541de512c23bdacfe87fdcd4c716c8e45e" [label="sha256:b81c8f5582ee50a918c840d7023572541de512c23bdacfe87fdcd4c716c8e45e" shape="plaintext"];
  "sha256:3e382fc86fd8e1d98effe183e023b3d88def7fda607bb0c36c56545693baa2da" -> "sha256:656a0d94c067117cf4c225a93442308c7b7c3c43c7b2366ee44079e66167e7a4" [label=""];
  "sha256:656a0d94c067117cf4c225a93442308c7b7c3c43c7b2366ee44079e66167e7a4" -> "sha256:28325d6e660a4a05669057eb4dd7022cd3f84daf2007d82968d8839216cbe4e0" [label=""];
  "sha256:195e0506cbd6561c2a1e98ec335567a097332cbf47af64181aaf13be9c629b18" -> "sha256:28325d6e660a4a05669057eb4dd7022cd3f84daf2007d82968d8839216cbe4e0" [label=""];
  "sha256:28325d6e660a4a05669057eb4dd7022cd3f84daf2007d82968d8839216cbe4e0" -> "sha256:8debae371fe0423d5d26e476d8fafc112f66f178b7a08cb6933aa32ad9a22f6a" [label=""];
  "sha256:8debae371fe0423d5d26e476d8fafc112f66f178b7a08cb6933aa32ad9a22f6a" -> "sha256:c7cecf75eb74eec96bd208488a73ef6e320919eee2ad8f598703901f217a0660" [label=""];
  "sha256:c7cecf75eb74eec96bd208488a73ef6e320919eee2ad8f598703901f217a0660" -> "sha256:b81c8f5582ee50a918c840d7023572541de512c23bdacfe87fdcd4c716c8e45e" [label=""];
}

