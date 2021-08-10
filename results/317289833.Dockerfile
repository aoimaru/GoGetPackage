[app/sources/317289833.Dockerfile]
digraph {
  "sha256:8af7b7ce6a530a6cb62dbaa4bdddc700bba1c8f15b5018032ac591b1ab9c198c" [label="docker-image://docker.io/library/php:7.2-cli" shape="ellipse"];
  "sha256:8573911f8964b13462ab72bef9458b5540230305065265392317ca67bac2307c" [label="/bin/sh -c apt-get update -y &&   apt-get install -y libgmp-dev re2c libmhash-dev libmcrypt-dev file &&   apt-get clean -y" shape="box"];
  "sha256:e62c58959018a981279520814155be3cf230b932bb1826ae150691a395857774" [label="/bin/sh -c ln -s /usr/include/x86_64-linux-gnu/gmp.h /usr/local/include/" shape="box"];
  "sha256:b898867ed30f1d6b1081724f795953fd5225d7aa00567cad3481f10668595dc5" [label="/bin/sh -c docker-php-ext-install mysqli" shape="box"];
  "sha256:44096fa02c43e63323ff3c787bfe3d0c58628b28b8f5ca2f6d3363378507fc16" [label="/bin/sh -c docker-php-ext-configure gmp" shape="box"];
  "sha256:b6846e5386cc8263962d2f836b3cb8402c855df2c6c409b5acda839a7d6d0565" [label="/bin/sh -c docker-php-ext-install gmp" shape="box"];
  "sha256:6e864664eedf086b9efecf2db1f31eab3b4d758dd63c48c4b5316ab94e1a8754" [label="/bin/sh -c docker-php-ext-install pcntl" shape="box"];
  "sha256:25da3951a82fcd7a77c5f7fcdbac9b6da3f719dd275b3ad3b07035bb6d1b4b4c" [label="/bin/sh -c curl https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh -o wait-for-it.sh" shape="box"];
  "sha256:7bb7b63f263a73602aedfde914076f391e0a54d19c551c0cce98bd5b74c54cea" [label="/bin/sh -c chmod 755 wait-for-it.sh" shape="box"];
  "sha256:c3ecd11238c7068bc2d80e06f5d09d273824cf6d3515ad69822fbfa23012ae93" [label="/bin/sh -c echo \"memory_limit=1024M\" > $PHP_INI_DIR/conf.d/memory-limit.ini" shape="box"];
  "sha256:aaa8540bb1324b230036725a04b2ae04c9d9b1b98ae42feaae2ef255b1421cf9" [label="/bin/sh -c echo \"[MySQLi]\" > $PHP_INI_DIR/conf.d/mysqli-reconnect.ini" shape="box"];
  "sha256:47d5002e51683a70a819b328b991c094d4f7a209184bea24eb800015e2296559" [label="/bin/sh -c echo \"mysqli.reconnect=on\" >> $PHP_INI_DIR/conf.d/mysqli-reconnect.ini" shape="box"];
  "sha256:ca6e47e9c48a42fb1107540c7ce18336d4bd86b0705145374588addcd662f6ad" [label="sha256:ca6e47e9c48a42fb1107540c7ce18336d4bd86b0705145374588addcd662f6ad" shape="plaintext"];
  "sha256:8af7b7ce6a530a6cb62dbaa4bdddc700bba1c8f15b5018032ac591b1ab9c198c" -> "sha256:8573911f8964b13462ab72bef9458b5540230305065265392317ca67bac2307c" [label=""];
  "sha256:8573911f8964b13462ab72bef9458b5540230305065265392317ca67bac2307c" -> "sha256:e62c58959018a981279520814155be3cf230b932bb1826ae150691a395857774" [label=""];
  "sha256:e62c58959018a981279520814155be3cf230b932bb1826ae150691a395857774" -> "sha256:b898867ed30f1d6b1081724f795953fd5225d7aa00567cad3481f10668595dc5" [label=""];
  "sha256:b898867ed30f1d6b1081724f795953fd5225d7aa00567cad3481f10668595dc5" -> "sha256:44096fa02c43e63323ff3c787bfe3d0c58628b28b8f5ca2f6d3363378507fc16" [label=""];
  "sha256:44096fa02c43e63323ff3c787bfe3d0c58628b28b8f5ca2f6d3363378507fc16" -> "sha256:b6846e5386cc8263962d2f836b3cb8402c855df2c6c409b5acda839a7d6d0565" [label=""];
  "sha256:b6846e5386cc8263962d2f836b3cb8402c855df2c6c409b5acda839a7d6d0565" -> "sha256:6e864664eedf086b9efecf2db1f31eab3b4d758dd63c48c4b5316ab94e1a8754" [label=""];
  "sha256:6e864664eedf086b9efecf2db1f31eab3b4d758dd63c48c4b5316ab94e1a8754" -> "sha256:25da3951a82fcd7a77c5f7fcdbac9b6da3f719dd275b3ad3b07035bb6d1b4b4c" [label=""];
  "sha256:25da3951a82fcd7a77c5f7fcdbac9b6da3f719dd275b3ad3b07035bb6d1b4b4c" -> "sha256:7bb7b63f263a73602aedfde914076f391e0a54d19c551c0cce98bd5b74c54cea" [label=""];
  "sha256:7bb7b63f263a73602aedfde914076f391e0a54d19c551c0cce98bd5b74c54cea" -> "sha256:c3ecd11238c7068bc2d80e06f5d09d273824cf6d3515ad69822fbfa23012ae93" [label=""];
  "sha256:c3ecd11238c7068bc2d80e06f5d09d273824cf6d3515ad69822fbfa23012ae93" -> "sha256:aaa8540bb1324b230036725a04b2ae04c9d9b1b98ae42feaae2ef255b1421cf9" [label=""];
  "sha256:aaa8540bb1324b230036725a04b2ae04c9d9b1b98ae42feaae2ef255b1421cf9" -> "sha256:47d5002e51683a70a819b328b991c094d4f7a209184bea24eb800015e2296559" [label=""];
  "sha256:47d5002e51683a70a819b328b991c094d4f7a209184bea24eb800015e2296559" -> "sha256:ca6e47e9c48a42fb1107540c7ce18336d4bd86b0705145374588addcd662f6ad" [label=""];
}

