[app/sources/252772125.Dockerfile]
digraph {
  "sha256:c025c2da0d4d82d45d5f2a98b1f20c0a4531302b79db8d32af1dd6e94eee8fa3" [label="docker-image://docker.io/library/python:3" shape="ellipse"];
  "sha256:ef7e988eada0f1d68afc2569ea688007c5c6dc9536ba30a79dbe40c867f707c9" [label="/bin/sh -c mkdir /code" shape="box"];
  "sha256:410884b046638d9a5032b28e34c562e8b9ddfacadf0a45c92daf59695be4ae82" [label="mkdir{path=/code}" shape="note"];
  "sha256:d5fd96d0b74ae4b8c723898de15b6cb80fd132acd31db4017c2e857d30f4fa09" [label="/bin/sh -c git clone -b master https://github.com/RFS-0/ddpmfa.git ddpmfa_git" shape="box"];
  "sha256:01c3c310a3ec9d88928a5ffb1027cc5281aa136ebb5ee08d3869434a28097957" [label="/bin/sh -c mv ddpmfa_git/ddpmfa/* ." shape="box"];
  "sha256:325b86d9e45a7685e7d291716fcc6b5ce4b694d87e050e3bfeee4eb0669654b3" [label="/bin/sh -c cp ddpmfa_git/requirements.txt ." shape="box"];
  "sha256:581b1274c888dd2f3054199aa2a3859030e1e50762f39e25a0f4efe6e7505791" [label="/bin/sh -c rm -rf ddpmfa_git" shape="box"];
  "sha256:38956a79f7bf1d32999678feac5feb977b387115259016a0bbbf4a7c15e338ba" [label="/bin/sh -c pip install -r requirements.txt" shape="box"];
  "sha256:6899b50391771a1ec750b506bc4829d36d1864083d24219ede000064e27fe9b5" [label="local://context" shape="ellipse"];
  "sha256:d4b29eab7e44585321ace6fa811bd9f1b7e5a49a614d27f50d132eb80dd941a2" [label="copy{src=/, dest=/code/}" shape="note"];
  "sha256:d6381a661b0635f588f95d55302f5d18dec03e1e0301b76cbb1dd4a385d9a801" [label="/bin/sh -c python3 manage.py makemigrations" shape="box"];
  "sha256:d00d9319f1e8dad5f9253e73dae8a524d133966a6ed01f51cd685ad3e72420ee" [label="/bin/sh -c python3 manage.py migrate" shape="box"];
  "sha256:5e67c4e6dfdc5bb2d8b3fa616b8c79983c80e265e90bfe468c8545994532d35a" [label="sha256:5e67c4e6dfdc5bb2d8b3fa616b8c79983c80e265e90bfe468c8545994532d35a" shape="plaintext"];
  "sha256:c025c2da0d4d82d45d5f2a98b1f20c0a4531302b79db8d32af1dd6e94eee8fa3" -> "sha256:ef7e988eada0f1d68afc2569ea688007c5c6dc9536ba30a79dbe40c867f707c9" [label=""];
  "sha256:ef7e988eada0f1d68afc2569ea688007c5c6dc9536ba30a79dbe40c867f707c9" -> "sha256:410884b046638d9a5032b28e34c562e8b9ddfacadf0a45c92daf59695be4ae82" [label=""];
  "sha256:410884b046638d9a5032b28e34c562e8b9ddfacadf0a45c92daf59695be4ae82" -> "sha256:d5fd96d0b74ae4b8c723898de15b6cb80fd132acd31db4017c2e857d30f4fa09" [label=""];
  "sha256:d5fd96d0b74ae4b8c723898de15b6cb80fd132acd31db4017c2e857d30f4fa09" -> "sha256:01c3c310a3ec9d88928a5ffb1027cc5281aa136ebb5ee08d3869434a28097957" [label=""];
  "sha256:01c3c310a3ec9d88928a5ffb1027cc5281aa136ebb5ee08d3869434a28097957" -> "sha256:325b86d9e45a7685e7d291716fcc6b5ce4b694d87e050e3bfeee4eb0669654b3" [label=""];
  "sha256:325b86d9e45a7685e7d291716fcc6b5ce4b694d87e050e3bfeee4eb0669654b3" -> "sha256:581b1274c888dd2f3054199aa2a3859030e1e50762f39e25a0f4efe6e7505791" [label=""];
  "sha256:581b1274c888dd2f3054199aa2a3859030e1e50762f39e25a0f4efe6e7505791" -> "sha256:38956a79f7bf1d32999678feac5feb977b387115259016a0bbbf4a7c15e338ba" [label=""];
  "sha256:38956a79f7bf1d32999678feac5feb977b387115259016a0bbbf4a7c15e338ba" -> "sha256:d4b29eab7e44585321ace6fa811bd9f1b7e5a49a614d27f50d132eb80dd941a2" [label=""];
  "sha256:6899b50391771a1ec750b506bc4829d36d1864083d24219ede000064e27fe9b5" -> "sha256:d4b29eab7e44585321ace6fa811bd9f1b7e5a49a614d27f50d132eb80dd941a2" [label=""];
  "sha256:d4b29eab7e44585321ace6fa811bd9f1b7e5a49a614d27f50d132eb80dd941a2" -> "sha256:d6381a661b0635f588f95d55302f5d18dec03e1e0301b76cbb1dd4a385d9a801" [label=""];
  "sha256:d6381a661b0635f588f95d55302f5d18dec03e1e0301b76cbb1dd4a385d9a801" -> "sha256:d00d9319f1e8dad5f9253e73dae8a524d133966a6ed01f51cd685ad3e72420ee" [label=""];
  "sha256:d00d9319f1e8dad5f9253e73dae8a524d133966a6ed01f51cd685ad3e72420ee" -> "sha256:5e67c4e6dfdc5bb2d8b3fa616b8c79983c80e265e90bfe468c8545994532d35a" [label=""];
}

