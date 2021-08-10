[app/sources/202654695.Dockerfile]
digraph {
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:9750f137e4e895ed4d32e10f0cfab84215595f0cd49c3aeb3ba076e321da10a6" [label="/bin/sh -c apt-get update && apt-get install -y   git   sudo   lsb-release   lsb-core   man   software-properties-common   wget   xvfb" shape="box"];
  "sha256:dfa9236630f08d704af6547d0ccbc75e5aded8ccc56601ed43360ce8be1bc0c0" [label="/bin/sh -c git config --system user.name \"Test User\" &&     git config --system user.email user@test.com" shape="box"];
  "sha256:872b2bbe62b4b71802d276c07bdfe04281c9c6f90eebf0239980f41d095ca565" [label="/bin/sh -c groupadd -g $HOST_GID testuser &&     useradd -u $HOST_UID -g $HOST_GID -m -c \"Testuser\" testuser &&     passwd --delete testuser &&     echo \"testuser ALL=(ALL) NOPASSWD: ALL\" >> /etc/sudoers" shape="box"];
  "sha256:0781af4a55fbec3e183a12398f52622597f9aa7eb5b5c688c06ae4e1966f3bb6" [label="/bin/sh -c echo \"Defaults env_keep += \\\"BDM_LOCAL_LFS\\\"\" | sudo tee -a /etc/sudoers" shape="box"];
  "sha256:caf45f6ac3029224b9bf2055039d580ab6983d45c91195bc7f2b799957de309b" [label="sha256:caf45f6ac3029224b9bf2055039d580ab6983d45c91195bc7f2b799957de309b" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:9750f137e4e895ed4d32e10f0cfab84215595f0cd49c3aeb3ba076e321da10a6" [label=""];
  "sha256:9750f137e4e895ed4d32e10f0cfab84215595f0cd49c3aeb3ba076e321da10a6" -> "sha256:dfa9236630f08d704af6547d0ccbc75e5aded8ccc56601ed43360ce8be1bc0c0" [label=""];
  "sha256:dfa9236630f08d704af6547d0ccbc75e5aded8ccc56601ed43360ce8be1bc0c0" -> "sha256:872b2bbe62b4b71802d276c07bdfe04281c9c6f90eebf0239980f41d095ca565" [label=""];
  "sha256:872b2bbe62b4b71802d276c07bdfe04281c9c6f90eebf0239980f41d095ca565" -> "sha256:0781af4a55fbec3e183a12398f52622597f9aa7eb5b5c688c06ae4e1966f3bb6" [label=""];
  "sha256:0781af4a55fbec3e183a12398f52622597f9aa7eb5b5c688c06ae4e1966f3bb6" -> "sha256:caf45f6ac3029224b9bf2055039d580ab6983d45c91195bc7f2b799957de309b" [label=""];
}

