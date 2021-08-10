[app/sources/213736258.Dockerfile]
digraph {
  "sha256:ef0b4c3e613b63c21d846442564668df219bfbcaa710a234c2852de7f6528b2e" [label="docker-image://docker.io/nodesource/trusty-base:latest" shape="ellipse"];
  "sha256:a03e3e7b3e62254c6da5971d54237ab620a5e79f6efbb832b665d20fdfa89403" [label="/bin/sh -c curl https://deb.nodesource.com/iojs_2.x/pool/main/i/iojs/iojs_2.3.3-1nodesource1~trusty1_amd64.deb > node.deb  && dpkg -i node.deb  && rm node.deb" shape="box"];
  "sha256:577d7f52462e33d4813f976c3e0dbca5bf7e40572ca0e83748c325272b0c1783" [label="/bin/sh -c npm install -g pangyp && ln -s $(which pangyp) $(dirname $(which pangyp))/node-gyp && npm cache clear && node-gyp configure || echo \"\"" shape="box"];
  "sha256:83f75745c18ab32bb7061125b160a8a3842c3087a69feebdebab6043baff632a" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:cae716615301a0611860a384b8a570dfff33493b706af80c198d84e732d83027" [label="/bin/sh -c apt-get update  && apt-get upgrade -y --force-yes  && rm -rf /var/lib/apt/lists/*;" shape="box"];
  "sha256:73cf41074a4286f103962375eb5f503b2855e743db0ac6726b8a2a3fb39fb4a4" [label="sha256:73cf41074a4286f103962375eb5f503b2855e743db0ac6726b8a2a3fb39fb4a4" shape="plaintext"];
  "sha256:ef0b4c3e613b63c21d846442564668df219bfbcaa710a234c2852de7f6528b2e" -> "sha256:a03e3e7b3e62254c6da5971d54237ab620a5e79f6efbb832b665d20fdfa89403" [label=""];
  "sha256:a03e3e7b3e62254c6da5971d54237ab620a5e79f6efbb832b665d20fdfa89403" -> "sha256:577d7f52462e33d4813f976c3e0dbca5bf7e40572ca0e83748c325272b0c1783" [label=""];
  "sha256:577d7f52462e33d4813f976c3e0dbca5bf7e40572ca0e83748c325272b0c1783" -> "sha256:83f75745c18ab32bb7061125b160a8a3842c3087a69feebdebab6043baff632a" [label=""];
  "sha256:83f75745c18ab32bb7061125b160a8a3842c3087a69feebdebab6043baff632a" -> "sha256:cae716615301a0611860a384b8a570dfff33493b706af80c198d84e732d83027" [label=""];
  "sha256:cae716615301a0611860a384b8a570dfff33493b706af80c198d84e732d83027" -> "sha256:73cf41074a4286f103962375eb5f503b2855e743db0ac6726b8a2a3fb39fb4a4" [label=""];
}

