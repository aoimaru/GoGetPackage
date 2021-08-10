[app/sources/199743213.Dockerfile]
digraph {
  "sha256:a587d3e16407b0bd81afc3fefd944d7d94761d5d7ef21a1c77c55fb35a7fc198" [label="docker-image://docker.io/library/debian:stable-slim" shape="ellipse"];
  "sha256:5465e6ead808364d2096fb68985c6121f200f423ee1acd58ae5d01add46c4bdf" [label="/bin/sh -c bash -c 'if [ -n \"$APTPROXY\" ]; then echo \"Acquire::HTTP::Proxy \\\"http://$APTPROXY\\\";\" > /etc/apt/apt.conf.d/01proxy; fi'" shape="box"];
  "sha256:d377a9663971f377118201f1d7140a654c28615cbddf8ffcfc6f009c12bf60e7" [label="/bin/sh -c apt-get update     && apt-get --no-install-recommends install -y vim-tiny     && apt-get --no-install-recommends install -y curl ca-certificates apt-transport-https lsb-release     && curl -sSL https://deb.nodesource.com/setup_7.x | bash -     && apt-get --no-install-recommends install -y nodejs     && npm install -g webpack     && apt-get --no-install-recommends install -y python python-pip python-dev     gcc libssl-dev     && pip install -U pip 3to2     && apt-get --no-install-recommends install -y nginx-extras     && npm cache clear     && rm -rf /tmp/npm-*     && apt-get clean -y     && apt-get autoclean -y     && apt-get autoremove -y     && rm -fr /var/lib/apt/lists/*     && mkdir -p /app/project/assets/ /app/logs /app/tmp/" shape="box"];
  "sha256:f017933df5dfa2f35c0ed02acb26a24d86e443db86b893559591abc317b1f44f" [label="mkdir{path=/app}" shape="note"];
  "sha256:1bd7973df41aa40d5bc7a82ce9da80879008c5ef1f4e0ec01a44ab83bc8eff05" [label="local://context" shape="ellipse"];
  "sha256:e49f880fb9ca09755edf14cd9b1102f7916c6a07e87ca89d7e5e1a4d0733e51c" [label="copy{src=/project/requirements.txt, dest=/app/requirements.txt}" shape="note"];
  "sha256:e638f3d0ca2a3e527740cafd21365bebc90003a77b5e82e1eefbb4cd192b43ae" [label="copy{src=/project/assets/package.json, dest=/app/project/assets/package.json}" shape="note"];
  "sha256:56ad9a3aeb63d06858d700a681d43881380b1203c2628fdaea8bd269498883d4" [label="/bin/sh -c pip install -U -r /app/requirements.txt --no-cache-dir" shape="box"];
  "sha256:f48ef2ee80c01195a1ce3bba6112fc49710d6756fbc531f2779c887fffff9903" [label="/bin/sh -c cd /app/project/assets/     && npm install     && npm cache clear" shape="box"];
  "sha256:a0c1906175545afaf41cc1048fb7d5c9eee12a5b1ed43252b50ad09f7860f83e" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:f5495b70d98d2f4bbdb401927ffa4f573a742be9ea94c8cddb8d3e9e237e94f4" [label="/bin/sh -c cd /app/project/assets/     && npm run build" shape="box"];
  "sha256:d3cf7691a268430a3a7d217b2086d8b2bbb68c8971f7941ff06897261b360a13" [label="/bin/sh -c python manage.py collectstatic --noinput -v0" shape="box"];
  "sha256:c0c08fc5afaad90840b66e2649d0bb3b73811a7b562979cbcf3c9fbdbd4a8264" [label="copy{src=/docker/production/nginx/nginx.conf, dest=/etc/nginx/sites-enabled/project}" shape="note"];
  "sha256:45ff0b2192688ccbd2cfa64b33f455abb2c0c3a073c897f6fd838575f7e73012" [label="copy{src=/docker/production/nginx/conf.d/*, dest=/etc/nginx/conf.d/}" shape="note"];
  "sha256:1c042970125e244c3b9a02adf509a10fa8da7a81cd4470a7d87084e288215fd5" [label="sha256:1c042970125e244c3b9a02adf509a10fa8da7a81cd4470a7d87084e288215fd5" shape="plaintext"];
  "sha256:a587d3e16407b0bd81afc3fefd944d7d94761d5d7ef21a1c77c55fb35a7fc198" -> "sha256:5465e6ead808364d2096fb68985c6121f200f423ee1acd58ae5d01add46c4bdf" [label=""];
  "sha256:5465e6ead808364d2096fb68985c6121f200f423ee1acd58ae5d01add46c4bdf" -> "sha256:d377a9663971f377118201f1d7140a654c28615cbddf8ffcfc6f009c12bf60e7" [label=""];
  "sha256:d377a9663971f377118201f1d7140a654c28615cbddf8ffcfc6f009c12bf60e7" -> "sha256:f017933df5dfa2f35c0ed02acb26a24d86e443db86b893559591abc317b1f44f" [label=""];
  "sha256:f017933df5dfa2f35c0ed02acb26a24d86e443db86b893559591abc317b1f44f" -> "sha256:e49f880fb9ca09755edf14cd9b1102f7916c6a07e87ca89d7e5e1a4d0733e51c" [label=""];
  "sha256:1bd7973df41aa40d5bc7a82ce9da80879008c5ef1f4e0ec01a44ab83bc8eff05" -> "sha256:e49f880fb9ca09755edf14cd9b1102f7916c6a07e87ca89d7e5e1a4d0733e51c" [label=""];
  "sha256:e49f880fb9ca09755edf14cd9b1102f7916c6a07e87ca89d7e5e1a4d0733e51c" -> "sha256:e638f3d0ca2a3e527740cafd21365bebc90003a77b5e82e1eefbb4cd192b43ae" [label=""];
  "sha256:1bd7973df41aa40d5bc7a82ce9da80879008c5ef1f4e0ec01a44ab83bc8eff05" -> "sha256:e638f3d0ca2a3e527740cafd21365bebc90003a77b5e82e1eefbb4cd192b43ae" [label=""];
  "sha256:e638f3d0ca2a3e527740cafd21365bebc90003a77b5e82e1eefbb4cd192b43ae" -> "sha256:56ad9a3aeb63d06858d700a681d43881380b1203c2628fdaea8bd269498883d4" [label=""];
  "sha256:56ad9a3aeb63d06858d700a681d43881380b1203c2628fdaea8bd269498883d4" -> "sha256:f48ef2ee80c01195a1ce3bba6112fc49710d6756fbc531f2779c887fffff9903" [label=""];
  "sha256:f48ef2ee80c01195a1ce3bba6112fc49710d6756fbc531f2779c887fffff9903" -> "sha256:a0c1906175545afaf41cc1048fb7d5c9eee12a5b1ed43252b50ad09f7860f83e" [label=""];
  "sha256:1bd7973df41aa40d5bc7a82ce9da80879008c5ef1f4e0ec01a44ab83bc8eff05" -> "sha256:a0c1906175545afaf41cc1048fb7d5c9eee12a5b1ed43252b50ad09f7860f83e" [label=""];
  "sha256:a0c1906175545afaf41cc1048fb7d5c9eee12a5b1ed43252b50ad09f7860f83e" -> "sha256:f5495b70d98d2f4bbdb401927ffa4f573a742be9ea94c8cddb8d3e9e237e94f4" [label=""];
  "sha256:f5495b70d98d2f4bbdb401927ffa4f573a742be9ea94c8cddb8d3e9e237e94f4" -> "sha256:d3cf7691a268430a3a7d217b2086d8b2bbb68c8971f7941ff06897261b360a13" [label=""];
  "sha256:d3cf7691a268430a3a7d217b2086d8b2bbb68c8971f7941ff06897261b360a13" -> "sha256:c0c08fc5afaad90840b66e2649d0bb3b73811a7b562979cbcf3c9fbdbd4a8264" [label=""];
  "sha256:1bd7973df41aa40d5bc7a82ce9da80879008c5ef1f4e0ec01a44ab83bc8eff05" -> "sha256:c0c08fc5afaad90840b66e2649d0bb3b73811a7b562979cbcf3c9fbdbd4a8264" [label=""];
  "sha256:c0c08fc5afaad90840b66e2649d0bb3b73811a7b562979cbcf3c9fbdbd4a8264" -> "sha256:45ff0b2192688ccbd2cfa64b33f455abb2c0c3a073c897f6fd838575f7e73012" [label=""];
  "sha256:1bd7973df41aa40d5bc7a82ce9da80879008c5ef1f4e0ec01a44ab83bc8eff05" -> "sha256:45ff0b2192688ccbd2cfa64b33f455abb2c0c3a073c897f6fd838575f7e73012" [label=""];
  "sha256:45ff0b2192688ccbd2cfa64b33f455abb2c0c3a073c897f6fd838575f7e73012" -> "sha256:1c042970125e244c3b9a02adf509a10fa8da7a81cd4470a7d87084e288215fd5" [label=""];
}

