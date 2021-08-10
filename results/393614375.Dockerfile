[app/sources/393614375.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:8176c6516e1b94eceb748d5cb0dc3db2cad8a3e0f91827a205eb89c1d0c26c27" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:c1004304138d7304017ffd26766cae94c6c86a6c2d32d54c1bad28bed8393844" [label="/bin/sh -c apt-get upgrade -y" shape="box"];
  "sha256:ad96cef3f6c8e0d2849f675e35aaf658f105f512a2c2ede7274a189f5af7558b" [label="/bin/sh -c apt-get install -qy curl git python2.7 python-pip python-dev" shape="box"];
  "sha256:bffe0570ade771d54c87081dd967344679df2ceae982708bc9a60091a8159ca1" [label="https://api.github.com/repos/ethereum/pyethereum/git/refs/heads/develop" shape="ellipse"];
  "sha256:eb992906b5da55064045a2f22014cff9aeba860a12763f92ea85b8d1144db67d" [label="copy{src=/develop, dest=/unused.txt}" shape="note"];
  "sha256:80edf86710fd3a33eb91b5eb9eadaadc008fb25b20002fa71297ac11d4a4c087" [label="/bin/sh -c git clone --branch develop --recursive https://github.com/ethereum/pyethereum.git" shape="box"];
  "sha256:d74c195449a0ae4be3757449192f0b736f29efbf3f119e9f07872fb6509f058f" [label="/bin/sh -c cd pyethereum && curl https://bootstrap.pypa.io/bootstrap-buildout.py | python" shape="box"];
  "sha256:63f638d4111aed7e3689e5951aaf4fe75fbaaf62b7c7e5fbda7791f82d8efea3" [label="/bin/sh -c cd pyethereum && bin/buildout" shape="box"];
  "sha256:2b88e888f6916924b05055e5ea19a9c652c16bb5e96b4153dee53a4ed52b3fbc" [label="mkdir{path=/pyethereum}" shape="note"];
  "sha256:29b8d936bea9abb45138af14881ea3c0e0b2394ff47510de286072c404c8d8a1" [label="sha256:29b8d936bea9abb45138af14881ea3c0e0b2394ff47510de286072c404c8d8a1" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:8176c6516e1b94eceb748d5cb0dc3db2cad8a3e0f91827a205eb89c1d0c26c27" [label=""];
  "sha256:8176c6516e1b94eceb748d5cb0dc3db2cad8a3e0f91827a205eb89c1d0c26c27" -> "sha256:c1004304138d7304017ffd26766cae94c6c86a6c2d32d54c1bad28bed8393844" [label=""];
  "sha256:c1004304138d7304017ffd26766cae94c6c86a6c2d32d54c1bad28bed8393844" -> "sha256:ad96cef3f6c8e0d2849f675e35aaf658f105f512a2c2ede7274a189f5af7558b" [label=""];
  "sha256:ad96cef3f6c8e0d2849f675e35aaf658f105f512a2c2ede7274a189f5af7558b" -> "sha256:eb992906b5da55064045a2f22014cff9aeba860a12763f92ea85b8d1144db67d" [label=""];
  "sha256:bffe0570ade771d54c87081dd967344679df2ceae982708bc9a60091a8159ca1" -> "sha256:eb992906b5da55064045a2f22014cff9aeba860a12763f92ea85b8d1144db67d" [label=""];
  "sha256:eb992906b5da55064045a2f22014cff9aeba860a12763f92ea85b8d1144db67d" -> "sha256:80edf86710fd3a33eb91b5eb9eadaadc008fb25b20002fa71297ac11d4a4c087" [label=""];
  "sha256:80edf86710fd3a33eb91b5eb9eadaadc008fb25b20002fa71297ac11d4a4c087" -> "sha256:d74c195449a0ae4be3757449192f0b736f29efbf3f119e9f07872fb6509f058f" [label=""];
  "sha256:d74c195449a0ae4be3757449192f0b736f29efbf3f119e9f07872fb6509f058f" -> "sha256:63f638d4111aed7e3689e5951aaf4fe75fbaaf62b7c7e5fbda7791f82d8efea3" [label=""];
  "sha256:63f638d4111aed7e3689e5951aaf4fe75fbaaf62b7c7e5fbda7791f82d8efea3" -> "sha256:2b88e888f6916924b05055e5ea19a9c652c16bb5e96b4153dee53a4ed52b3fbc" [label=""];
  "sha256:2b88e888f6916924b05055e5ea19a9c652c16bb5e96b4153dee53a4ed52b3fbc" -> "sha256:29b8d936bea9abb45138af14881ea3c0e0b2394ff47510de286072c404c8d8a1" [label=""];
}

