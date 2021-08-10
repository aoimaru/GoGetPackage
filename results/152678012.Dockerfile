[app/sources/152678012.Dockerfile]
digraph {
  "sha256:a4342d2e768e01af3e371943d999e0d798633aa170ff9c40eaa7527fbff4ba2d" [label="docker-image://docker.io/library/nginx:1.14.1@sha256:32fdf92b4e986e109e4db0865758020cb0c3b70d6ba80d02fe87bad5cc3dc228" shape="ellipse"];
  "sha256:14054daa4010252dfc9cdfbc38cfcafa19f160290b6f7f8fa1b622c4a0c07087" [label="/bin/sh -c apt-get update  && apt-get install -y -q --no-install-recommends     ca-certificates     wget  && apt-get clean  && rm -r /var/lib/apt/lists/*" shape="box"];
  "sha256:fc310e2461329b8dc8063923710818840d35c4d33bb99aaabc591c28e8a6019c" [label="/bin/sh -c echo \"daemon off;\" >> /etc/nginx/nginx.conf  && sed -i 's/worker_processes  1/worker_processes  auto/' /etc/nginx/nginx.conf" shape="box"];
  "sha256:aa718c98add7acdfe41efcb53f740e5492a8b27396f178199600b4535b85d1b8" [label="https://github.com/jwilder/forego/releases/download/v0.16.1/forego" shape="ellipse"];
  "sha256:f30b46fe45855df505c378a6def590cdd0f01eae2c6dd4188cbe37e7a9fe349e" [label="copy{src=/forego, dest=/usr/local/bin/forego}" shape="note"];
  "sha256:04b608678651b975a03aa67472a0ab37c400eed4f8353cafdbb48f4a32d446ce" [label="/bin/sh -c chmod u+x /usr/local/bin/forego" shape="box"];
  "sha256:f27b3ea349fbaceb1409457569cb828a6525d445c7a4d6623f1819cb4baf66cc" [label="/bin/sh -c wget https://github.com/jwilder/docker-gen/releases/download/$DOCKER_GEN_VERSION/docker-gen-linux-amd64-$DOCKER_GEN_VERSION.tar.gz  && tar -C /usr/local/bin -xvzf docker-gen-linux-amd64-$DOCKER_GEN_VERSION.tar.gz  && rm /docker-gen-linux-amd64-$DOCKER_GEN_VERSION.tar.gz" shape="box"];
  "sha256:33314c9dd71f9549335673c22fc77d5f1dd6e2961965d31738d8af554e89ccd9" [label="local://context" shape="ellipse"];
  "sha256:ac21623fe58e4a128c9361e5d478c038de92c11c846b745ae3ee637e66efe21f" [label="copy{src=/network_internal.conf, dest=/etc/nginx/}" shape="note"];
  "sha256:de1f12b9e6b162aea02ba9a0c1a3578bebc4b27a2d3ce16dd7d5bbfef18ad0f0" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:a2b6961d622eda8a7dc8970bf37c2bc78957946e310dbf0d77ee68a31998372d" [label="mkdir{path=/app}" shape="note"];
  "sha256:f77103b31fc1878c95c3cb5333e15c13a651a3b3a281e1ef90f4ca7cb310f230" [label="sha256:f77103b31fc1878c95c3cb5333e15c13a651a3b3a281e1ef90f4ca7cb310f230" shape="plaintext"];
  "sha256:a4342d2e768e01af3e371943d999e0d798633aa170ff9c40eaa7527fbff4ba2d" -> "sha256:14054daa4010252dfc9cdfbc38cfcafa19f160290b6f7f8fa1b622c4a0c07087" [label=""];
  "sha256:14054daa4010252dfc9cdfbc38cfcafa19f160290b6f7f8fa1b622c4a0c07087" -> "sha256:fc310e2461329b8dc8063923710818840d35c4d33bb99aaabc591c28e8a6019c" [label=""];
  "sha256:fc310e2461329b8dc8063923710818840d35c4d33bb99aaabc591c28e8a6019c" -> "sha256:f30b46fe45855df505c378a6def590cdd0f01eae2c6dd4188cbe37e7a9fe349e" [label=""];
  "sha256:aa718c98add7acdfe41efcb53f740e5492a8b27396f178199600b4535b85d1b8" -> "sha256:f30b46fe45855df505c378a6def590cdd0f01eae2c6dd4188cbe37e7a9fe349e" [label=""];
  "sha256:f30b46fe45855df505c378a6def590cdd0f01eae2c6dd4188cbe37e7a9fe349e" -> "sha256:04b608678651b975a03aa67472a0ab37c400eed4f8353cafdbb48f4a32d446ce" [label=""];
  "sha256:04b608678651b975a03aa67472a0ab37c400eed4f8353cafdbb48f4a32d446ce" -> "sha256:f27b3ea349fbaceb1409457569cb828a6525d445c7a4d6623f1819cb4baf66cc" [label=""];
  "sha256:f27b3ea349fbaceb1409457569cb828a6525d445c7a4d6623f1819cb4baf66cc" -> "sha256:ac21623fe58e4a128c9361e5d478c038de92c11c846b745ae3ee637e66efe21f" [label=""];
  "sha256:33314c9dd71f9549335673c22fc77d5f1dd6e2961965d31738d8af554e89ccd9" -> "sha256:ac21623fe58e4a128c9361e5d478c038de92c11c846b745ae3ee637e66efe21f" [label=""];
  "sha256:ac21623fe58e4a128c9361e5d478c038de92c11c846b745ae3ee637e66efe21f" -> "sha256:de1f12b9e6b162aea02ba9a0c1a3578bebc4b27a2d3ce16dd7d5bbfef18ad0f0" [label=""];
  "sha256:33314c9dd71f9549335673c22fc77d5f1dd6e2961965d31738d8af554e89ccd9" -> "sha256:de1f12b9e6b162aea02ba9a0c1a3578bebc4b27a2d3ce16dd7d5bbfef18ad0f0" [label=""];
  "sha256:de1f12b9e6b162aea02ba9a0c1a3578bebc4b27a2d3ce16dd7d5bbfef18ad0f0" -> "sha256:a2b6961d622eda8a7dc8970bf37c2bc78957946e310dbf0d77ee68a31998372d" [label=""];
  "sha256:a2b6961d622eda8a7dc8970bf37c2bc78957946e310dbf0d77ee68a31998372d" -> "sha256:f77103b31fc1878c95c3cb5333e15c13a651a3b3a281e1ef90f4ca7cb310f230" [label=""];
}

