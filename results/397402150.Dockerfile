[app/sources/397402150.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:5bef15cd9a37ede6f85706b8b7a4bdb4c45cc41e5e09abde55d26b6d7cfacd44" [label="/bin/sh -c apk add --no-cache python py-pip py-setuptools unzip wget &&  pip install --upgrade pip &&  pip install virtualenv paste" shape="box"];
  "sha256:cd98b96913efd00a2529b605c53b74bc6dfb4d4d11b1c7122c420206705e47b2" [label="/bin/sh -c addgroup -S web2py &&  adduser -D -S -G web2py web2py" shape="box"];
  "sha256:e3c1b9d4102c5157f11e0326b644d52df34c4e8fb91fbe2dd5cd8e0c56dea8f7" [label="/bin/sh -c virtualenv /home/web2py &&  rm -rf /home/web2py/web2py &&  cd /home/web2py/ &&  rm -f web2py_src.zip &&  wget -c http://web2py.com/examples/static/web2py_src.zip &&  unzip -o web2py_src.zip &&  rm -rf /home/web2py/web2py/applications/examples &&  chmod 755 -R /home/web2py/web2py" shape="box"];
  "sha256:28de02d4623cdcffd205a479a93d53c6efdccdc17a492a5f6019989f441d0f39" [label="mkdir{path=/home/web2py/web2py}" shape="note"];
  "sha256:1cf0e0c34b2974da926ba5fbc564671f292bae58281160023ac3fd09c7e506d6" [label="sha256:1cf0e0c34b2974da926ba5fbc564671f292bae58281160023ac3fd09c7e506d6" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:5bef15cd9a37ede6f85706b8b7a4bdb4c45cc41e5e09abde55d26b6d7cfacd44" [label=""];
  "sha256:5bef15cd9a37ede6f85706b8b7a4bdb4c45cc41e5e09abde55d26b6d7cfacd44" -> "sha256:cd98b96913efd00a2529b605c53b74bc6dfb4d4d11b1c7122c420206705e47b2" [label=""];
  "sha256:cd98b96913efd00a2529b605c53b74bc6dfb4d4d11b1c7122c420206705e47b2" -> "sha256:e3c1b9d4102c5157f11e0326b644d52df34c4e8fb91fbe2dd5cd8e0c56dea8f7" [label=""];
  "sha256:e3c1b9d4102c5157f11e0326b644d52df34c4e8fb91fbe2dd5cd8e0c56dea8f7" -> "sha256:28de02d4623cdcffd205a479a93d53c6efdccdc17a492a5f6019989f441d0f39" [label=""];
  "sha256:28de02d4623cdcffd205a479a93d53c6efdccdc17a492a5f6019989f441d0f39" -> "sha256:1cf0e0c34b2974da926ba5fbc564671f292bae58281160023ac3fd09c7e506d6" [label=""];
}

