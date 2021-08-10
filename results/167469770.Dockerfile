[app/sources/167469770.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:94b0b2f9c4274dc76b27763ebf1e3013009e312ef0f117de91ca3b548d553277" [label="/bin/sh -c apt-get update --fix-missing &&   apt-get upgrade -y &&   apt-get install -y python   python-dev   python-pip   python-virtualenv   wget   unzip   build-essential   libssl-dev   libffi-dev" shape="box"];
  "sha256:04f3ca96ea4033a845aa706deb55bf07bb7089de2c02677e333dc79a17042b3b" [label="/bin/sh -c rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:aacfa9667b1fb985682d5835b71e4a7e84157249e69fa4a1314f4c763bc732ef" [label="/bin/sh -c pip install honcho" shape="box"];
  "sha256:e3fed9276ebf4d2b27e844dc71b9435e3d0882284c928dab8a6ff403fcac1d32" [label="local://context" shape="ellipse"];
  "sha256:fc27419655909810bf8a39e018293993913a89c9d8548f942cbe8df0ef240a3e" [label="copy{src=/src, dest=/src}" shape="note"];
  "sha256:d416c6da738e855a7780cb7e6e0f54b1b0d34b727e3991eb5352e942edb1fd5d" [label="/bin/sh -c pip install -r /src/web/requirements.txt" shape="box"];
  "sha256:25ec3a402efc56cc1ff47431e3eb3c1a0534a3a2e9f24aaa855d6c79c5459bdb" [label="/bin/sh -c pip install -r /src/monitors/requirements.txt" shape="box"];
  "sha256:1f8eff8ffb98e0c9e47992e5ce5d3cf5d76a18534c4d3f7e452bb026b5b058b2" [label="/bin/sh -c pip install -r /src/actions/requirements.txt" shape="box"];
  "sha256:3661f572a18be9286ba74c292087c9fb0f37925759483515d80b25d829a7461c" [label="/bin/sh -c pip install -r /src/bridge/requirements.txt" shape="box"];
  "sha256:cd457a0e1368288e1e6139da4024dccff61c00d53566dbc4d191e34bf8d4e3bb" [label="/bin/sh -c find /src/ -name \"*.yml\" | xargs -n 1 sed -i 's/actionbroker/127.0.0.1/g'" shape="box"];
  "sha256:c4d56011bf9490ee34fa7c35c804916fa3b8c940049bb5622e33b24289145a7d" [label="/bin/sh -c find /src/ -name \"*.yml\" | xargs -n 1 sed -i 's/monitorbroker/127.0.0.1/g'" shape="box"];
  "sha256:bb52c5f46f1b3d78840d1a098c1572758ecdd114d7ff9c38b65adf5b6558069b" [label="copy{src=/Procfile, dest=/}" shape="note"];
  "sha256:314e917df2a5392adfd0b6a2435f35d288c266e67f49c7c714d4350171632cb5" [label="sha256:314e917df2a5392adfd0b6a2435f35d288c266e67f49c7c714d4350171632cb5" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:94b0b2f9c4274dc76b27763ebf1e3013009e312ef0f117de91ca3b548d553277" [label=""];
  "sha256:94b0b2f9c4274dc76b27763ebf1e3013009e312ef0f117de91ca3b548d553277" -> "sha256:04f3ca96ea4033a845aa706deb55bf07bb7089de2c02677e333dc79a17042b3b" [label=""];
  "sha256:04f3ca96ea4033a845aa706deb55bf07bb7089de2c02677e333dc79a17042b3b" -> "sha256:aacfa9667b1fb985682d5835b71e4a7e84157249e69fa4a1314f4c763bc732ef" [label=""];
  "sha256:aacfa9667b1fb985682d5835b71e4a7e84157249e69fa4a1314f4c763bc732ef" -> "sha256:fc27419655909810bf8a39e018293993913a89c9d8548f942cbe8df0ef240a3e" [label=""];
  "sha256:e3fed9276ebf4d2b27e844dc71b9435e3d0882284c928dab8a6ff403fcac1d32" -> "sha256:fc27419655909810bf8a39e018293993913a89c9d8548f942cbe8df0ef240a3e" [label=""];
  "sha256:fc27419655909810bf8a39e018293993913a89c9d8548f942cbe8df0ef240a3e" -> "sha256:d416c6da738e855a7780cb7e6e0f54b1b0d34b727e3991eb5352e942edb1fd5d" [label=""];
  "sha256:d416c6da738e855a7780cb7e6e0f54b1b0d34b727e3991eb5352e942edb1fd5d" -> "sha256:25ec3a402efc56cc1ff47431e3eb3c1a0534a3a2e9f24aaa855d6c79c5459bdb" [label=""];
  "sha256:25ec3a402efc56cc1ff47431e3eb3c1a0534a3a2e9f24aaa855d6c79c5459bdb" -> "sha256:1f8eff8ffb98e0c9e47992e5ce5d3cf5d76a18534c4d3f7e452bb026b5b058b2" [label=""];
  "sha256:1f8eff8ffb98e0c9e47992e5ce5d3cf5d76a18534c4d3f7e452bb026b5b058b2" -> "sha256:3661f572a18be9286ba74c292087c9fb0f37925759483515d80b25d829a7461c" [label=""];
  "sha256:3661f572a18be9286ba74c292087c9fb0f37925759483515d80b25d829a7461c" -> "sha256:cd457a0e1368288e1e6139da4024dccff61c00d53566dbc4d191e34bf8d4e3bb" [label=""];
  "sha256:cd457a0e1368288e1e6139da4024dccff61c00d53566dbc4d191e34bf8d4e3bb" -> "sha256:c4d56011bf9490ee34fa7c35c804916fa3b8c940049bb5622e33b24289145a7d" [label=""];
  "sha256:c4d56011bf9490ee34fa7c35c804916fa3b8c940049bb5622e33b24289145a7d" -> "sha256:bb52c5f46f1b3d78840d1a098c1572758ecdd114d7ff9c38b65adf5b6558069b" [label=""];
  "sha256:e3fed9276ebf4d2b27e844dc71b9435e3d0882284c928dab8a6ff403fcac1d32" -> "sha256:bb52c5f46f1b3d78840d1a098c1572758ecdd114d7ff9c38b65adf5b6558069b" [label=""];
  "sha256:bb52c5f46f1b3d78840d1a098c1572758ecdd114d7ff9c38b65adf5b6558069b" -> "sha256:314e917df2a5392adfd0b6a2435f35d288c266e67f49c7c714d4350171632cb5" [label=""];
}

