[app/sources/409542708.Dockerfile]
digraph {
  "sha256:9cc7051205c34ef6d212a59da4a63f982a0eabc2c5f39d733792316789443392" [label="docker-image://docker.io/stackbrew/ubuntu:12.04" shape="ellipse"];
  "sha256:133a2cc34ddde483edc45a13f527abacfb9dee5dc71a72d8670ecd049d92a02a" [label="/bin/sh -c apt-get update -qq && apt-get install -y mysql-server-5.5" shape="box"];
  "sha256:5bc2590e2526d716b4736442057f235eefc93b071cfd4a07585072ccfdd834da" [label="local://context" shape="ellipse"];
  "sha256:be9db23a7500994e3dc3624b8025d3d11ab987a1b9c741a01158f4ce0747b320" [label="copy{src=/my.cnf, dest=/etc/mysql/conf.d/my.cnf}" shape="note"];
  "sha256:45e544a88169d67c9fedbc4e18394747453bbaf437b787979c97da28733bda7b" [label="/bin/sh -c chmod 664 /etc/mysql/conf.d/my.cnf" shape="box"];
  "sha256:8c86625f1c34d792076f650d75095a2567161c1ba5702584d8c56dac20f3baeb" [label="copy{src=/run, dest=/usr/local/bin/run}" shape="note"];
  "sha256:a8d5f5d4bd2ec0c8337f7901f07f55a70f3e0f88233c0067a3a2787354928df4" [label="/bin/sh -c chmod +x /usr/local/bin/run" shape="box"];
  "sha256:4fa85c170f72bcb93b6ba8fabbba74f8b31aafbe742d34106abfb351cf0291a5" [label="sha256:4fa85c170f72bcb93b6ba8fabbba74f8b31aafbe742d34106abfb351cf0291a5" shape="plaintext"];
  "sha256:9cc7051205c34ef6d212a59da4a63f982a0eabc2c5f39d733792316789443392" -> "sha256:133a2cc34ddde483edc45a13f527abacfb9dee5dc71a72d8670ecd049d92a02a" [label=""];
  "sha256:133a2cc34ddde483edc45a13f527abacfb9dee5dc71a72d8670ecd049d92a02a" -> "sha256:be9db23a7500994e3dc3624b8025d3d11ab987a1b9c741a01158f4ce0747b320" [label=""];
  "sha256:5bc2590e2526d716b4736442057f235eefc93b071cfd4a07585072ccfdd834da" -> "sha256:be9db23a7500994e3dc3624b8025d3d11ab987a1b9c741a01158f4ce0747b320" [label=""];
  "sha256:be9db23a7500994e3dc3624b8025d3d11ab987a1b9c741a01158f4ce0747b320" -> "sha256:45e544a88169d67c9fedbc4e18394747453bbaf437b787979c97da28733bda7b" [label=""];
  "sha256:45e544a88169d67c9fedbc4e18394747453bbaf437b787979c97da28733bda7b" -> "sha256:8c86625f1c34d792076f650d75095a2567161c1ba5702584d8c56dac20f3baeb" [label=""];
  "sha256:5bc2590e2526d716b4736442057f235eefc93b071cfd4a07585072ccfdd834da" -> "sha256:8c86625f1c34d792076f650d75095a2567161c1ba5702584d8c56dac20f3baeb" [label=""];
  "sha256:8c86625f1c34d792076f650d75095a2567161c1ba5702584d8c56dac20f3baeb" -> "sha256:a8d5f5d4bd2ec0c8337f7901f07f55a70f3e0f88233c0067a3a2787354928df4" [label=""];
  "sha256:a8d5f5d4bd2ec0c8337f7901f07f55a70f3e0f88233c0067a3a2787354928df4" -> "sha256:4fa85c170f72bcb93b6ba8fabbba74f8b31aafbe742d34106abfb351cf0291a5" [label=""];
}

