[app/sources/435830109.Dockerfile]
digraph {
  "sha256:eccd49dcdaee9101f504d873dacdaf44fcd32e25f3b592aa1122094f5728f2c1" [label="local://context" shape="ellipse"];
  "sha256:d1800fe2850657bf17f308707f027e91516fbaa3c0d89a0803311ceeb61fa674" [label="docker-image://docker.io/library/node:10" shape="ellipse"];
  "sha256:2580e612d8968e881c0ec739ff09a24f67effd3d104f79ab1adeb46ac2e450f9" [label="mkdir{path=/opt/checker}" shape="note"];
  "sha256:b78f06f80ebe7afd61bdb840a7c740dd29b2a1ebfab6c77f25022d6b031680c9" [label="/bin/sh -c apt-get update     && apt-get -y install strace git sudo unzip" shape="box"];
  "sha256:5a5a6fb38ecc1d2658ee6f4831e849690557eda1e96e8aa919d728f5a457d9d1" [label="copy{src=/docker/checker/init.sh, dest=/opt/checker/init.sh}" shape="note"];
  "sha256:39601949e869b597541b0a96df69a2ec351311d05c58dabce714573936950f2f" [label="copy{src=/mitmproxy-ca-cert.crt, dest=/opt/checker/mitmproxy-ca-cert.crt}" shape="note"];
  "sha256:1ba00588309620958a1658f1e8d35a3a5cbe1e3aad8ea9b3d84fc78b5c290bd8" [label="copy{src=/mitmproxy-ca-cert.pem, dest=/opt/checker/mitmproxy-ca-cert.pem}" shape="note"];
  "sha256:47abf267309f9489bc0de600105b3de850cf86336f4f8a569dff9c4aa9e57ab0" [label="/bin/sh -c cp /opt/checker/mitmproxy-ca-cert.crt /usr/local/share/ca-certificates/mitmproxy-ca-cert.crt" shape="box"];
  "sha256:a8ca4b93c24ecb8ef6ecbc2c94e11aa23b9dec85a234b03d895d55064850fb50" [label="/bin/sh -c update-ca-certificates" shape="box"];
  "sha256:4ccf4f519d3484816e913edaefd2335b9da57c92526a514b2d777412c478bb24" [label="/bin/sh -c cat /dev/zero | ssh-keygen -q -N \"\"" shape="box"];
  "sha256:fa7e4c68dbfd4f2840ad4475243dc0423ee58794b023b1c8564936c2dd6793c2" [label="/bin/sh -c git init" shape="box"];
  "sha256:d7d52feaf9263389145bc011023ef33b67f0710591cd105fda2d723e64723276" [label="/bin/sh -c echo \"//registry.npmjs.org/:_authToken=MY_SUPER_SECRET_TOKEN\" > .npmrc" shape="box"];
  "sha256:6cbf395229a3cd580d152c700a173cb7258b48535352817c9ee85984cbecbebc" [label="/bin/sh -c echo \"NPM_AUTH_TOKEN=MY_SUPER_SECRET_TOKEN\" > .env" shape="box"];
  "sha256:e9afb7d7ecfa6131069998860a2046142fe92217069ad7e4cd20f10619329c38" [label="copy{src=/package.json, dest=/opt/checker/package.json}" shape="note"];
  "sha256:3b4d115c801e22f2171e28343f5f486856187fd0ca79bccd6e5dcf2d1f27c906" [label="copy{src=/node_modules, dest=/opt/checker/node_modules}" shape="note"];
  "sha256:1bc23008160dc53e189334b305d89bc5a81845b6d909cd90b76f905ae2a8a84b" [label="copy{src=/test_package, dest=/opt/checker/test_package}" shape="note"];
  "sha256:5ae969204b3c46ce9ee5239c3e7589eb8775c5a48f3832a25d16bc198e5cad77" [label="copy{src=/src, dest=/opt/checker/src}" shape="note"];
  "sha256:eb7ad2ae00c0a0f178ec7f050736da9590ebb5d49ba7a36840e3592037c614ef" [label="sha256:eb7ad2ae00c0a0f178ec7f050736da9590ebb5d49ba7a36840e3592037c614ef" shape="plaintext"];
  "sha256:d1800fe2850657bf17f308707f027e91516fbaa3c0d89a0803311ceeb61fa674" -> "sha256:2580e612d8968e881c0ec739ff09a24f67effd3d104f79ab1adeb46ac2e450f9" [label=""];
  "sha256:2580e612d8968e881c0ec739ff09a24f67effd3d104f79ab1adeb46ac2e450f9" -> "sha256:b78f06f80ebe7afd61bdb840a7c740dd29b2a1ebfab6c77f25022d6b031680c9" [label=""];
  "sha256:b78f06f80ebe7afd61bdb840a7c740dd29b2a1ebfab6c77f25022d6b031680c9" -> "sha256:5a5a6fb38ecc1d2658ee6f4831e849690557eda1e96e8aa919d728f5a457d9d1" [label=""];
  "sha256:eccd49dcdaee9101f504d873dacdaf44fcd32e25f3b592aa1122094f5728f2c1" -> "sha256:5a5a6fb38ecc1d2658ee6f4831e849690557eda1e96e8aa919d728f5a457d9d1" [label=""];
  "sha256:5a5a6fb38ecc1d2658ee6f4831e849690557eda1e96e8aa919d728f5a457d9d1" -> "sha256:39601949e869b597541b0a96df69a2ec351311d05c58dabce714573936950f2f" [label=""];
  "sha256:eccd49dcdaee9101f504d873dacdaf44fcd32e25f3b592aa1122094f5728f2c1" -> "sha256:39601949e869b597541b0a96df69a2ec351311d05c58dabce714573936950f2f" [label=""];
  "sha256:39601949e869b597541b0a96df69a2ec351311d05c58dabce714573936950f2f" -> "sha256:1ba00588309620958a1658f1e8d35a3a5cbe1e3aad8ea9b3d84fc78b5c290bd8" [label=""];
  "sha256:eccd49dcdaee9101f504d873dacdaf44fcd32e25f3b592aa1122094f5728f2c1" -> "sha256:1ba00588309620958a1658f1e8d35a3a5cbe1e3aad8ea9b3d84fc78b5c290bd8" [label=""];
  "sha256:1ba00588309620958a1658f1e8d35a3a5cbe1e3aad8ea9b3d84fc78b5c290bd8" -> "sha256:47abf267309f9489bc0de600105b3de850cf86336f4f8a569dff9c4aa9e57ab0" [label=""];
  "sha256:47abf267309f9489bc0de600105b3de850cf86336f4f8a569dff9c4aa9e57ab0" -> "sha256:a8ca4b93c24ecb8ef6ecbc2c94e11aa23b9dec85a234b03d895d55064850fb50" [label=""];
  "sha256:a8ca4b93c24ecb8ef6ecbc2c94e11aa23b9dec85a234b03d895d55064850fb50" -> "sha256:4ccf4f519d3484816e913edaefd2335b9da57c92526a514b2d777412c478bb24" [label=""];
  "sha256:4ccf4f519d3484816e913edaefd2335b9da57c92526a514b2d777412c478bb24" -> "sha256:fa7e4c68dbfd4f2840ad4475243dc0423ee58794b023b1c8564936c2dd6793c2" [label=""];
  "sha256:fa7e4c68dbfd4f2840ad4475243dc0423ee58794b023b1c8564936c2dd6793c2" -> "sha256:d7d52feaf9263389145bc011023ef33b67f0710591cd105fda2d723e64723276" [label=""];
  "sha256:d7d52feaf9263389145bc011023ef33b67f0710591cd105fda2d723e64723276" -> "sha256:6cbf395229a3cd580d152c700a173cb7258b48535352817c9ee85984cbecbebc" [label=""];
  "sha256:6cbf395229a3cd580d152c700a173cb7258b48535352817c9ee85984cbecbebc" -> "sha256:e9afb7d7ecfa6131069998860a2046142fe92217069ad7e4cd20f10619329c38" [label=""];
  "sha256:eccd49dcdaee9101f504d873dacdaf44fcd32e25f3b592aa1122094f5728f2c1" -> "sha256:e9afb7d7ecfa6131069998860a2046142fe92217069ad7e4cd20f10619329c38" [label=""];
  "sha256:e9afb7d7ecfa6131069998860a2046142fe92217069ad7e4cd20f10619329c38" -> "sha256:3b4d115c801e22f2171e28343f5f486856187fd0ca79bccd6e5dcf2d1f27c906" [label=""];
  "sha256:eccd49dcdaee9101f504d873dacdaf44fcd32e25f3b592aa1122094f5728f2c1" -> "sha256:3b4d115c801e22f2171e28343f5f486856187fd0ca79bccd6e5dcf2d1f27c906" [label=""];
  "sha256:3b4d115c801e22f2171e28343f5f486856187fd0ca79bccd6e5dcf2d1f27c906" -> "sha256:1bc23008160dc53e189334b305d89bc5a81845b6d909cd90b76f905ae2a8a84b" [label=""];
  "sha256:eccd49dcdaee9101f504d873dacdaf44fcd32e25f3b592aa1122094f5728f2c1" -> "sha256:1bc23008160dc53e189334b305d89bc5a81845b6d909cd90b76f905ae2a8a84b" [label=""];
  "sha256:1bc23008160dc53e189334b305d89bc5a81845b6d909cd90b76f905ae2a8a84b" -> "sha256:5ae969204b3c46ce9ee5239c3e7589eb8775c5a48f3832a25d16bc198e5cad77" [label=""];
  "sha256:eccd49dcdaee9101f504d873dacdaf44fcd32e25f3b592aa1122094f5728f2c1" -> "sha256:5ae969204b3c46ce9ee5239c3e7589eb8775c5a48f3832a25d16bc198e5cad77" [label=""];
  "sha256:5ae969204b3c46ce9ee5239c3e7589eb8775c5a48f3832a25d16bc198e5cad77" -> "sha256:eb7ad2ae00c0a0f178ec7f050736da9590ebb5d49ba7a36840e3592037c614ef" [label=""];
}

