[app/sources/169340252.Dockerfile]
digraph {
  "sha256:469de9dcd442ea5b60fda4bc05f7e9661858bf288796fb9783724187ded32870" [label="docker-image://docker.io/library/php:7.1-fpm" shape="ellipse"];
  "sha256:f09f57229fc26fc32f6a98d35d79d93b28f7149a89d48a85e1cf0fc17ef332de" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:f18607ae8516a9557828f380651405286811a0e9b7e08882683ef01a45d6b85f" [label="/bin/sh -c apt-get install -y --no-install-recommends git zlib1g-dev" shape="box"];
  "sha256:be2cd1d2bd37d07f1448ec668be70fca28104ac8b44d2f125244159b7d872579" [label="/bin/sh -c docker-php-ext-install zip" shape="box"];
  "sha256:4f445045d15eed076b0cfdfa0c80338aec4ba90433280e610b1386207044d63e" [label="/bin/sh -c git clone https://github.com/chenos/v8.git /opt/v8" shape="box"];
  "sha256:bf39840a1c539e743cef66972c73d4f35b95793359088aa5415180ea5afd07ad" [label="/bin/sh -c git clone https://github.com/phpv8/v8js.git /tmp/v8js" shape="box"];
  "sha256:143c0cb71ab645e69cd6fa4ea34dd69b16eaf2cee82902c59e12f3e7cc5723d4" [label="/bin/sh -c cd /opt/v8 && git checkout tags/v6.4.388.18" shape="box"];
  "sha256:21a91e4d40339bcfd6360c57b700da63d6b3e1d9226246591eee87d6d42e7c2b" [label="/bin/sh -c cd /tmp/v8js && phpize" shape="box"];
  "sha256:0895d126e38d5e35aadab8e76ab31e2325a4aad70d1f1fff4f9b789b0b93ef17" [label="/bin/sh -c cd /tmp/v8js && ./configure CXXFLAGS=\"-Wall -Wno-write-strings -Werror\"     LDFLAGS=\"-lstdc++\" --with-v8js=/opt/v8" shape="box"];
  "sha256:2ab4f1faecabf4903dfecb2584182d08a63f9d3906fac26ad384cb565a15e426" [label="/bin/sh -c cd /tmp/v8js && make" shape="box"];
  "sha256:253b01dfcbbde34e827411768e0c86185381860b2f4443104bfe2604257fe701" [label="/bin/sh -c cd /tmp/v8js && make test" shape="box"];
  "sha256:2d57db5033f7a19f47b584956e9c6033ea69744d3eb7cae995d3ac2e87dc825f" [label="/bin/sh -c cd /tmp/v8js && make install" shape="box"];
  "sha256:eefd607c51720123ad8a66ddf12ee2d172d6b5bebe34fc094892a30314c32a7b" [label="/bin/sh -c docker-php-ext-enable v8js" shape="box"];
  "sha256:281c08a99baf5c062ccd607ccd4acfd84673a798a2f37f80714e9d082927c25c" [label="/bin/sh -c curl -s http://getcomposer.org/installer | php &&     mv composer.phar /usr/local/bin/composer" shape="box"];
  "sha256:7e96182c4b77c5a54cbc6ef5f7b1747a9466a2d5cbf2342f7024c5449bbdd6fe" [label="/bin/sh -c pecl install xdebug && docker-php-ext-enable xdebug" shape="box"];
  "sha256:380118ae67181f2405762f81a1a2d761fe9f97c9d65927e894b9e83685d68a90" [label="sha256:380118ae67181f2405762f81a1a2d761fe9f97c9d65927e894b9e83685d68a90" shape="plaintext"];
  "sha256:469de9dcd442ea5b60fda4bc05f7e9661858bf288796fb9783724187ded32870" -> "sha256:f09f57229fc26fc32f6a98d35d79d93b28f7149a89d48a85e1cf0fc17ef332de" [label=""];
  "sha256:f09f57229fc26fc32f6a98d35d79d93b28f7149a89d48a85e1cf0fc17ef332de" -> "sha256:f18607ae8516a9557828f380651405286811a0e9b7e08882683ef01a45d6b85f" [label=""];
  "sha256:f18607ae8516a9557828f380651405286811a0e9b7e08882683ef01a45d6b85f" -> "sha256:be2cd1d2bd37d07f1448ec668be70fca28104ac8b44d2f125244159b7d872579" [label=""];
  "sha256:be2cd1d2bd37d07f1448ec668be70fca28104ac8b44d2f125244159b7d872579" -> "sha256:4f445045d15eed076b0cfdfa0c80338aec4ba90433280e610b1386207044d63e" [label=""];
  "sha256:4f445045d15eed076b0cfdfa0c80338aec4ba90433280e610b1386207044d63e" -> "sha256:bf39840a1c539e743cef66972c73d4f35b95793359088aa5415180ea5afd07ad" [label=""];
  "sha256:bf39840a1c539e743cef66972c73d4f35b95793359088aa5415180ea5afd07ad" -> "sha256:143c0cb71ab645e69cd6fa4ea34dd69b16eaf2cee82902c59e12f3e7cc5723d4" [label=""];
  "sha256:143c0cb71ab645e69cd6fa4ea34dd69b16eaf2cee82902c59e12f3e7cc5723d4" -> "sha256:21a91e4d40339bcfd6360c57b700da63d6b3e1d9226246591eee87d6d42e7c2b" [label=""];
  "sha256:21a91e4d40339bcfd6360c57b700da63d6b3e1d9226246591eee87d6d42e7c2b" -> "sha256:0895d126e38d5e35aadab8e76ab31e2325a4aad70d1f1fff4f9b789b0b93ef17" [label=""];
  "sha256:0895d126e38d5e35aadab8e76ab31e2325a4aad70d1f1fff4f9b789b0b93ef17" -> "sha256:2ab4f1faecabf4903dfecb2584182d08a63f9d3906fac26ad384cb565a15e426" [label=""];
  "sha256:2ab4f1faecabf4903dfecb2584182d08a63f9d3906fac26ad384cb565a15e426" -> "sha256:253b01dfcbbde34e827411768e0c86185381860b2f4443104bfe2604257fe701" [label=""];
  "sha256:253b01dfcbbde34e827411768e0c86185381860b2f4443104bfe2604257fe701" -> "sha256:2d57db5033f7a19f47b584956e9c6033ea69744d3eb7cae995d3ac2e87dc825f" [label=""];
  "sha256:2d57db5033f7a19f47b584956e9c6033ea69744d3eb7cae995d3ac2e87dc825f" -> "sha256:eefd607c51720123ad8a66ddf12ee2d172d6b5bebe34fc094892a30314c32a7b" [label=""];
  "sha256:eefd607c51720123ad8a66ddf12ee2d172d6b5bebe34fc094892a30314c32a7b" -> "sha256:281c08a99baf5c062ccd607ccd4acfd84673a798a2f37f80714e9d082927c25c" [label=""];
  "sha256:281c08a99baf5c062ccd607ccd4acfd84673a798a2f37f80714e9d082927c25c" -> "sha256:7e96182c4b77c5a54cbc6ef5f7b1747a9466a2d5cbf2342f7024c5449bbdd6fe" [label=""];
  "sha256:7e96182c4b77c5a54cbc6ef5f7b1747a9466a2d5cbf2342f7024c5449bbdd6fe" -> "sha256:380118ae67181f2405762f81a1a2d761fe9f97c9d65927e894b9e83685d68a90" [label=""];
}

