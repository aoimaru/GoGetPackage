[app/sources/224008086.Dockerfile]
digraph {
  "sha256:588eb93efe7f4d9803f7464e6a2fdff3671d45c3c40cee06b9e9db2f586875f8" [label="docker-image://docker.io/library/php:5.6.25" shape="ellipse"];
  "sha256:c4c32d6cfee6b7a9db189124a8b67233559b9fc1ac6dbb0a07957319e23b415f" [label="/bin/sh -c apt-get update && apt-get install -y build-essential zip unzip" shape="box"];
  "sha256:b03090333267de351f2c7e8f5219a8cb64cf562fc17b541c9856ec7d95d5ad78" [label="/bin/sh -c mkdir $APP_HOME" shape="box"];
  "sha256:19ab99f418476d49842b1eeede1bf877576828ec6abf446b0e9b145929210b69" [label="mkdir{path=/braintree_slim_example}" shape="note"];
  "sha256:fb8a3e60dee7d891adeb2e8b66688e06ddd52d9382b85a6d4e8a1f83630ced9c" [label="local://context" shape="ellipse"];
  "sha256:d931a6787d69490debb0486c391ce2ed74a7d2911c8c82ee4e98fc768ec0de94" [label="copy{src=/composer.*, dest=/braintree_slim_example/}" shape="note"];
  "sha256:d01b4620ca2d8f167b20fd57e02cf6c0e4ba00bf95686447e504a8495e669963" [label="/bin/sh -c php -r \"copy('https://getcomposer.org/installer', 'composer-setup.php');\" && php composer-setup.php && php composer.phar install" shape="box"];
  "sha256:cfc0a8f8dcb833fc3da2c1844515fab090fd14dea4213da8509db4d099c600d5" [label="copy{src=/, dest=/braintree_slim_example}" shape="note"];
  "sha256:ac9e68ec3434dddea151e131684967526b2c69e7bc3c65067b9d838204da630b" [label="sha256:ac9e68ec3434dddea151e131684967526b2c69e7bc3c65067b9d838204da630b" shape="plaintext"];
  "sha256:588eb93efe7f4d9803f7464e6a2fdff3671d45c3c40cee06b9e9db2f586875f8" -> "sha256:c4c32d6cfee6b7a9db189124a8b67233559b9fc1ac6dbb0a07957319e23b415f" [label=""];
  "sha256:c4c32d6cfee6b7a9db189124a8b67233559b9fc1ac6dbb0a07957319e23b415f" -> "sha256:b03090333267de351f2c7e8f5219a8cb64cf562fc17b541c9856ec7d95d5ad78" [label=""];
  "sha256:b03090333267de351f2c7e8f5219a8cb64cf562fc17b541c9856ec7d95d5ad78" -> "sha256:19ab99f418476d49842b1eeede1bf877576828ec6abf446b0e9b145929210b69" [label=""];
  "sha256:19ab99f418476d49842b1eeede1bf877576828ec6abf446b0e9b145929210b69" -> "sha256:d931a6787d69490debb0486c391ce2ed74a7d2911c8c82ee4e98fc768ec0de94" [label=""];
  "sha256:fb8a3e60dee7d891adeb2e8b66688e06ddd52d9382b85a6d4e8a1f83630ced9c" -> "sha256:d931a6787d69490debb0486c391ce2ed74a7d2911c8c82ee4e98fc768ec0de94" [label=""];
  "sha256:d931a6787d69490debb0486c391ce2ed74a7d2911c8c82ee4e98fc768ec0de94" -> "sha256:d01b4620ca2d8f167b20fd57e02cf6c0e4ba00bf95686447e504a8495e669963" [label=""];
  "sha256:d01b4620ca2d8f167b20fd57e02cf6c0e4ba00bf95686447e504a8495e669963" -> "sha256:cfc0a8f8dcb833fc3da2c1844515fab090fd14dea4213da8509db4d099c600d5" [label=""];
  "sha256:fb8a3e60dee7d891adeb2e8b66688e06ddd52d9382b85a6d4e8a1f83630ced9c" -> "sha256:cfc0a8f8dcb833fc3da2c1844515fab090fd14dea4213da8509db4d099c600d5" [label=""];
  "sha256:cfc0a8f8dcb833fc3da2c1844515fab090fd14dea4213da8509db4d099c600d5" -> "sha256:ac9e68ec3434dddea151e131684967526b2c69e7bc3c65067b9d838204da630b" [label=""];
}

