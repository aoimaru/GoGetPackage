[app/sources/161408855.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:0f2c748e1375601bb4852b7328ad311f2e7ec25abfa3dd6a956c15d84caf59ca" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:6fc8248d86fde2c323ec0733fc20fb8b42a1c6014ed05fe423381763388279b8" [label="/bin/sh -c apt-get install -y python3-pip" shape="box"];
  "sha256:cddc5740a82303f7332340238897fa73a5e5b69c7bc2d6c318a80780485c6c72" [label="/bin/sh -c apt-get install -y nginx supervisor" shape="box"];
  "sha256:a19cdd6f3b8f52e1579c0c1cfd6129e8e5b137fb37aaff7426e2919a89b45a3a" [label="/bin/sh -c pip3 install uwsgi Flask" shape="box"];
  "sha256:16ab676fc8a47188e4c5ef4b9eed927bea48c2d36ec9e81e8f203e123edacb10" [label="local://context" shape="ellipse"];
  "sha256:a1b03195cb1da2a3c7efdcc089fe883bca4386c538316fa1385df0e2d5c3aa51" [label="copy{src=/app, dest=/app}" shape="note"];
  "sha256:badb0b20033cc1a178abf93466eb95a3d630f7b5e5106bb639b0e73a7331ee6c" [label="copy{src=/config, dest=/config}" shape="note"];
  "sha256:6602fdc98630cf4309fdb960a32213dd3f8a7a4843e3a8c49100c94e324ad809" [label="/bin/sh -c pip3 install -r /app/requirements.txt" shape="box"];
  "sha256:77266afb6e4c6abba6912f40686a2e1436a792a2553424a62827283ac9b9b571" [label="/bin/sh -c echo \"\\ndaemon off;\" >> /etc/nginx/nginx.conf" shape="box"];
  "sha256:f0ca09c61ede258a9f97aad45da778a80c8ee83609a9f8a366b15b7af6081f5b" [label="/bin/sh -c rm /etc/nginx/sites-enabled/default" shape="box"];
  "sha256:3051a04535f3a7bc6539ef89f2f23463907049cca2f77ca0e0f3d0786131c172" [label="/bin/sh -c ln -s /config/nginx.conf /etc/nginx/sites-enabled/" shape="box"];
  "sha256:536352850ebe2436cee9d003bec9c1bf681b7cae1862d802e873de3e3c546cd2" [label="/bin/sh -c ln -s /config/supervisor.conf /etc/supervisor/conf.d/" shape="box"];
  "sha256:f62a47cfb17e7426b43425c0fd822e285e29dcaf1349eed6bd95bd9170e2d306" [label="sha256:f62a47cfb17e7426b43425c0fd822e285e29dcaf1349eed6bd95bd9170e2d306" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:0f2c748e1375601bb4852b7328ad311f2e7ec25abfa3dd6a956c15d84caf59ca" [label=""];
  "sha256:0f2c748e1375601bb4852b7328ad311f2e7ec25abfa3dd6a956c15d84caf59ca" -> "sha256:6fc8248d86fde2c323ec0733fc20fb8b42a1c6014ed05fe423381763388279b8" [label=""];
  "sha256:6fc8248d86fde2c323ec0733fc20fb8b42a1c6014ed05fe423381763388279b8" -> "sha256:cddc5740a82303f7332340238897fa73a5e5b69c7bc2d6c318a80780485c6c72" [label=""];
  "sha256:cddc5740a82303f7332340238897fa73a5e5b69c7bc2d6c318a80780485c6c72" -> "sha256:a19cdd6f3b8f52e1579c0c1cfd6129e8e5b137fb37aaff7426e2919a89b45a3a" [label=""];
  "sha256:a19cdd6f3b8f52e1579c0c1cfd6129e8e5b137fb37aaff7426e2919a89b45a3a" -> "sha256:a1b03195cb1da2a3c7efdcc089fe883bca4386c538316fa1385df0e2d5c3aa51" [label=""];
  "sha256:16ab676fc8a47188e4c5ef4b9eed927bea48c2d36ec9e81e8f203e123edacb10" -> "sha256:a1b03195cb1da2a3c7efdcc089fe883bca4386c538316fa1385df0e2d5c3aa51" [label=""];
  "sha256:a1b03195cb1da2a3c7efdcc089fe883bca4386c538316fa1385df0e2d5c3aa51" -> "sha256:badb0b20033cc1a178abf93466eb95a3d630f7b5e5106bb639b0e73a7331ee6c" [label=""];
  "sha256:16ab676fc8a47188e4c5ef4b9eed927bea48c2d36ec9e81e8f203e123edacb10" -> "sha256:badb0b20033cc1a178abf93466eb95a3d630f7b5e5106bb639b0e73a7331ee6c" [label=""];
  "sha256:badb0b20033cc1a178abf93466eb95a3d630f7b5e5106bb639b0e73a7331ee6c" -> "sha256:6602fdc98630cf4309fdb960a32213dd3f8a7a4843e3a8c49100c94e324ad809" [label=""];
  "sha256:6602fdc98630cf4309fdb960a32213dd3f8a7a4843e3a8c49100c94e324ad809" -> "sha256:77266afb6e4c6abba6912f40686a2e1436a792a2553424a62827283ac9b9b571" [label=""];
  "sha256:77266afb6e4c6abba6912f40686a2e1436a792a2553424a62827283ac9b9b571" -> "sha256:f0ca09c61ede258a9f97aad45da778a80c8ee83609a9f8a366b15b7af6081f5b" [label=""];
  "sha256:f0ca09c61ede258a9f97aad45da778a80c8ee83609a9f8a366b15b7af6081f5b" -> "sha256:3051a04535f3a7bc6539ef89f2f23463907049cca2f77ca0e0f3d0786131c172" [label=""];
  "sha256:3051a04535f3a7bc6539ef89f2f23463907049cca2f77ca0e0f3d0786131c172" -> "sha256:536352850ebe2436cee9d003bec9c1bf681b7cae1862d802e873de3e3c546cd2" [label=""];
  "sha256:536352850ebe2436cee9d003bec9c1bf681b7cae1862d802e873de3e3c546cd2" -> "sha256:f62a47cfb17e7426b43425c0fd822e285e29dcaf1349eed6bd95bd9170e2d306" [label=""];
}

