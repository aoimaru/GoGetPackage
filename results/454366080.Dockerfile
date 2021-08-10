[app/sources/454366080.Dockerfile]
digraph {
  "sha256:6224abdf4475a8bedf0b2fac503d72760777a817fab6f76ce8521dcde8b4c3a5" [label="docker-image://docker.io/circleci/node:dubnium-browsers@sha256:f6e04fb16889bc6c91eda5aeaa62bfa2c995bb1a6f7124db358a148fd05418b5" shape="ellipse"];
  "sha256:d7a6c3b4282ef40337f761d68657318c8f422eaf75d148b0adb71d3eccbd685d" [label="/bin/sh -c apt-get update   && apt-get -y install --no-install-recommends        python-all-dev python-pip rsync        python-yaml python-jinja2 python-httplib2 python-paramiko python-pkg-resources python-keyczar   && apt-get clean   && rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*" shape="box"];
  "sha256:d7c735204ebd49ea4aea2d7cf1444bd4d22307822a998bab9fb699bca1021f95" [label="/bin/sh -c pip install ansible &&     pip install passlib &&     pip install docker-compose" shape="box"];
  "sha256:cfdfe1f2268012b9285a2b85ac8ed14cadaf45a1d14f674f467bd0551a87987d" [label="/bin/sh -c ansible-galaxy install nickjj.docker &&     ansible-galaxy install geerlingguy.nodejs" shape="box"];
  "sha256:82a523bb26972cde8d91597af22b3fc15d620fe7e0dd192e7540aca5f156b8a2" [label="sha256:82a523bb26972cde8d91597af22b3fc15d620fe7e0dd192e7540aca5f156b8a2" shape="plaintext"];
  "sha256:6224abdf4475a8bedf0b2fac503d72760777a817fab6f76ce8521dcde8b4c3a5" -> "sha256:d7a6c3b4282ef40337f761d68657318c8f422eaf75d148b0adb71d3eccbd685d" [label=""];
  "sha256:d7a6c3b4282ef40337f761d68657318c8f422eaf75d148b0adb71d3eccbd685d" -> "sha256:d7c735204ebd49ea4aea2d7cf1444bd4d22307822a998bab9fb699bca1021f95" [label=""];
  "sha256:d7c735204ebd49ea4aea2d7cf1444bd4d22307822a998bab9fb699bca1021f95" -> "sha256:cfdfe1f2268012b9285a2b85ac8ed14cadaf45a1d14f674f467bd0551a87987d" [label=""];
  "sha256:cfdfe1f2268012b9285a2b85ac8ed14cadaf45a1d14f674f467bd0551a87987d" -> "sha256:82a523bb26972cde8d91597af22b3fc15d620fe7e0dd192e7540aca5f156b8a2" [label=""];
}

