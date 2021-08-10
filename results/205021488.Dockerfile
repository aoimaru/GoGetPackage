[app/sources/205021488.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:0f2c748e1375601bb4852b7328ad311f2e7ec25abfa3dd6a956c15d84caf59ca" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:2c2892041acfb3ef02d2fce3f323604413a029261a722f7f030fe3e29f1ee9db" [label="/bin/sh -c env DEBIAN_FRONTEND=noninteractive apt-get install -y software-properties-common git" shape="box"];
  "sha256:628f0c1aa87457259bfad0f5f8ca4b6379b1615dbd86ee759676774abd3ee2c2" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:2f6d0e910ea443591f7c069fc266faa5432e98668e2dae99a3b18bd2ead320d0" [label="/bin/sh -c apt-get install -y python-pip python-dev libffi-dev" shape="box"];
  "sha256:16f8c455d46166ff214356b13b74e763a79eeb412784836d62de0c63615e6179" [label="/bin/sh -c mkdir /etc/ansible" shape="box"];
  "sha256:22b744532a13c21da18c224f9bddc4fe310d178cb52c84805dc4d491d8dc2183" [label="/bin/sh -c echo \"[local]\\nlocalhost ansible_connection=local\" > /etc/ansible/hosts" shape="box"];
  "sha256:04b55ac29feea51bb32b6702e4420be9a86cbe826a7da8596aa9693a6c0befd8" [label="/bin/sh -c echo \"[defaults]\\ncallback_whitelist = profile_tasks, timer\" > /etc/ansible/ansible.cfg" shape="box"];
  "sha256:c505a3801a6fe7a6aa14dfd15efa74471398af778ffccff06b2e41c14380e467" [label="sha256:c505a3801a6fe7a6aa14dfd15efa74471398af778ffccff06b2e41c14380e467" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:0f2c748e1375601bb4852b7328ad311f2e7ec25abfa3dd6a956c15d84caf59ca" [label=""];
  "sha256:0f2c748e1375601bb4852b7328ad311f2e7ec25abfa3dd6a956c15d84caf59ca" -> "sha256:2c2892041acfb3ef02d2fce3f323604413a029261a722f7f030fe3e29f1ee9db" [label=""];
  "sha256:2c2892041acfb3ef02d2fce3f323604413a029261a722f7f030fe3e29f1ee9db" -> "sha256:628f0c1aa87457259bfad0f5f8ca4b6379b1615dbd86ee759676774abd3ee2c2" [label=""];
  "sha256:628f0c1aa87457259bfad0f5f8ca4b6379b1615dbd86ee759676774abd3ee2c2" -> "sha256:2f6d0e910ea443591f7c069fc266faa5432e98668e2dae99a3b18bd2ead320d0" [label=""];
  "sha256:2f6d0e910ea443591f7c069fc266faa5432e98668e2dae99a3b18bd2ead320d0" -> "sha256:16f8c455d46166ff214356b13b74e763a79eeb412784836d62de0c63615e6179" [label=""];
  "sha256:16f8c455d46166ff214356b13b74e763a79eeb412784836d62de0c63615e6179" -> "sha256:22b744532a13c21da18c224f9bddc4fe310d178cb52c84805dc4d491d8dc2183" [label=""];
  "sha256:22b744532a13c21da18c224f9bddc4fe310d178cb52c84805dc4d491d8dc2183" -> "sha256:04b55ac29feea51bb32b6702e4420be9a86cbe826a7da8596aa9693a6c0befd8" [label=""];
  "sha256:04b55ac29feea51bb32b6702e4420be9a86cbe826a7da8596aa9693a6c0befd8" -> "sha256:c505a3801a6fe7a6aa14dfd15efa74471398af778ffccff06b2e41c14380e467" [label=""];
}

