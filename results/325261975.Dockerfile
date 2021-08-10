[app/sources/325261975.Dockerfile]
digraph {
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" [label="docker-image://docker.io/library/debian:stretch" shape="ellipse"];
  "sha256:5dd093a166515c942c9c099893a7aec0e2586da3fb39f086a56ff43cc9eb7d5b" [label="/bin/sh -c mkdir -p \"$HTTPD_PREFIX\"     && chown www-data:www-data \"$HTTPD_PREFIX\"" shape="box"];
  "sha256:76b04182ec0f472c15a542cdff75dcebdd3a8d85208cb364a34d9f84fe7b268b" [label="mkdir{path=/usr/local/apache2}" shape="note"];
  "sha256:fb5caa5f43479d5cc0d6629cc7c9c2bef35214735895800c918a435c9b929f88" [label="/bin/sh -c apt-get update     && apt-get install -y --no-install-recommends     apache2 curl     && rm -r /var/lib/apt/lists/*" shape="box"];
  "sha256:35f9e69266c054082ceb5577ab82757145908466e945f93f954556e586181538" [label="/bin/sh -c a2enmod proxy_fcgi ssl rewrite proxy proxy_balancer proxy_http proxy_ajp" shape="box"];
  "sha256:4b6da261229a1e4d6bcafcfd39fc4a98ffa56c41084d352ece42c8f3bcef17be" [label="/bin/sh -c sed -i '/Global configuration/a ServerName localhost ' /etc/apache2/apache2.conf" shape="box"];
  "sha256:978ce97520a254e7af31f92ba09f11520e77aa796bf3226e614a4075054e3513" [label="/bin/sh -c rm -f /run/apache2/apache2.pid" shape="box"];
  "sha256:1ddbe4d0b48e867e8e37ee49181220c5a737329999bce6c80f81771d982fa0c1" [label="sha256:1ddbe4d0b48e867e8e37ee49181220c5a737329999bce6c80f81771d982fa0c1" shape="plaintext"];
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" -> "sha256:5dd093a166515c942c9c099893a7aec0e2586da3fb39f086a56ff43cc9eb7d5b" [label=""];
  "sha256:5dd093a166515c942c9c099893a7aec0e2586da3fb39f086a56ff43cc9eb7d5b" -> "sha256:76b04182ec0f472c15a542cdff75dcebdd3a8d85208cb364a34d9f84fe7b268b" [label=""];
  "sha256:76b04182ec0f472c15a542cdff75dcebdd3a8d85208cb364a34d9f84fe7b268b" -> "sha256:fb5caa5f43479d5cc0d6629cc7c9c2bef35214735895800c918a435c9b929f88" [label=""];
  "sha256:fb5caa5f43479d5cc0d6629cc7c9c2bef35214735895800c918a435c9b929f88" -> "sha256:35f9e69266c054082ceb5577ab82757145908466e945f93f954556e586181538" [label=""];
  "sha256:35f9e69266c054082ceb5577ab82757145908466e945f93f954556e586181538" -> "sha256:4b6da261229a1e4d6bcafcfd39fc4a98ffa56c41084d352ece42c8f3bcef17be" [label=""];
  "sha256:4b6da261229a1e4d6bcafcfd39fc4a98ffa56c41084d352ece42c8f3bcef17be" -> "sha256:978ce97520a254e7af31f92ba09f11520e77aa796bf3226e614a4075054e3513" [label=""];
  "sha256:978ce97520a254e7af31f92ba09f11520e77aa796bf3226e614a4075054e3513" -> "sha256:1ddbe4d0b48e867e8e37ee49181220c5a737329999bce6c80f81771d982fa0c1" [label=""];
}

