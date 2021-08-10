[app/sources/278321749.Dockerfile]
digraph {
  "sha256:469de9dcd442ea5b60fda4bc05f7e9661858bf288796fb9783724187ded32870" [label="docker-image://docker.io/library/php:7.1-fpm" shape="ellipse"];
  "sha256:374095a30aa5827b9c24698690b4248e50f2aa95c6b5bb43fb67ee3c78550286" [label="/bin/sh -c rm -f /etc/localtime  && ln -s /usr/share/zoneinfo/${CONTAINER_TIMEZONE} /etc/localtime" shape="box"];
  "sha256:8ea2487153cfb1eb82756ae451ff9e7eb2d6f5054a81643eb6b74506264aec21" [label="/bin/sh -c apt-get update && apt-get install -y curl git vim libfcgi0ldbl" shape="box"];
  "sha256:0a0479eae708ad13584a8e5f343180bec6c085edeec422df806c524aad5e346d" [label="/bin/sh -c set -ex \t&& buildDeps=' \t\tlibjpeg62-turbo-dev \t\tlibpng12-dev \t\tlibpq-dev     zlib1g-dev     libicu-dev     libmemcached-dev \t' \t&& apt-get install -y --no-install-recommends $buildDeps   && pecl install -o -f redis   && docker-php-ext-enable redis   && ls -la /usr/local/etc/php/conf.d/ \t&& docker-php-ext-configure gd \t\t--with-jpeg-dir=/usr \t\t--with-png-dir=/usr \t&& docker-php-ext-install -j \"$(nproc)\" gd mbstring opcache pdo pdo_mysql zip" shape="box"];
  "sha256:b695b3b3661778834d95b5014f383e8ba1fcf967fa4846405141a6943d9f3ee2" [label="/bin/sh -c cd /tmp \t&& git clone -b php7 https://github.com/php-memcached-dev/php-memcached \t&& cd php-memcached \t&& phpize \t&& ./configure \t&& make \t&& cp /tmp/php-memcached/modules/memcached.so /usr/local/lib/php/extensions/no-debug-non-zts-20160303/memcached.so \t&& docker-php-ext-enable memcached   && ls -la /usr/local/etc/php/conf.d/" shape="box"];
  "sha256:25c4e6307243b9283bda0e710d913d9b627ee8ad5e9494a02969c62504429102" [label="/bin/sh -c { \t\techo 'opcache.memory_consumption=128'; \t\techo 'opcache.interned_strings_buffer=8'; \t\techo 'opcache.max_accelerated_files=4000'; \t\techo 'opcache.revalidate_freq=60'; \t\techo 'opcache.fast_shutdown=1'; \t\techo 'opcache.enable_cli=1'; \t} > /usr/local/etc/php/conf.d/opcache-recommended.ini" shape="box"];
  "sha256:d73524369f4d6690b4d8b7464aac805e8b913b1c682303c8f43f52b02f5958ab" [label="local://context" shape="ellipse"];
  "sha256:0a7e712cacaa70663ddc404c515668c73160d79dc3ac290de0c46dfa6d6056ce" [label="copy{src=/config/etc, dest=/usr/local/etc}" shape="note"];
  "sha256:5be4067efb3e0e3da9dddcb4167dde48ec3b875f56d3aff241b53a7b7f935e65" [label="mkdir{path=/www}" shape="note"];
  "sha256:7777d1c39ee2fe1a6d54644871930808a46691c03675c642b4c32004f511518f" [label="sha256:7777d1c39ee2fe1a6d54644871930808a46691c03675c642b4c32004f511518f" shape="plaintext"];
  "sha256:469de9dcd442ea5b60fda4bc05f7e9661858bf288796fb9783724187ded32870" -> "sha256:374095a30aa5827b9c24698690b4248e50f2aa95c6b5bb43fb67ee3c78550286" [label=""];
  "sha256:374095a30aa5827b9c24698690b4248e50f2aa95c6b5bb43fb67ee3c78550286" -> "sha256:8ea2487153cfb1eb82756ae451ff9e7eb2d6f5054a81643eb6b74506264aec21" [label=""];
  "sha256:8ea2487153cfb1eb82756ae451ff9e7eb2d6f5054a81643eb6b74506264aec21" -> "sha256:0a0479eae708ad13584a8e5f343180bec6c085edeec422df806c524aad5e346d" [label=""];
  "sha256:0a0479eae708ad13584a8e5f343180bec6c085edeec422df806c524aad5e346d" -> "sha256:b695b3b3661778834d95b5014f383e8ba1fcf967fa4846405141a6943d9f3ee2" [label=""];
  "sha256:b695b3b3661778834d95b5014f383e8ba1fcf967fa4846405141a6943d9f3ee2" -> "sha256:25c4e6307243b9283bda0e710d913d9b627ee8ad5e9494a02969c62504429102" [label=""];
  "sha256:25c4e6307243b9283bda0e710d913d9b627ee8ad5e9494a02969c62504429102" -> "sha256:0a7e712cacaa70663ddc404c515668c73160d79dc3ac290de0c46dfa6d6056ce" [label=""];
  "sha256:d73524369f4d6690b4d8b7464aac805e8b913b1c682303c8f43f52b02f5958ab" -> "sha256:0a7e712cacaa70663ddc404c515668c73160d79dc3ac290de0c46dfa6d6056ce" [label=""];
  "sha256:0a7e712cacaa70663ddc404c515668c73160d79dc3ac290de0c46dfa6d6056ce" -> "sha256:5be4067efb3e0e3da9dddcb4167dde48ec3b875f56d3aff241b53a7b7f935e65" [label=""];
  "sha256:5be4067efb3e0e3da9dddcb4167dde48ec3b875f56d3aff241b53a7b7f935e65" -> "sha256:7777d1c39ee2fe1a6d54644871930808a46691c03675c642b4c32004f511518f" [label=""];
}

