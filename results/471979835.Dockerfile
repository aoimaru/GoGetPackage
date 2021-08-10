[app/sources/471979835.Dockerfile]
digraph {
  "sha256:395aa1d4278cb4a8970f9dfeda97490b9bd915c1676be073de085a081a0a9026" [label="docker-image://docker.io/flowminder/flowdb:latest" shape="ellipse"];
  "sha256:73a09c8786a100ab7447ab2dbe7b6dce632f1f36a4c4597b75330d2e1a80733a" [label="/bin/sh -c echo \"deb http://ftp.de.debian.org/debian testing main\" > /etc/apt/sources.list         && apt-get -y update         && apt-get -y install python3.7 python3.7-distutils python3-psutil         && pip3 install --no-cache-dir pipenv         && apt-get clean --yes         && apt-get autoclean --yes         && apt-get autoremove --yes         && rm -rf /var/cache/debconf/*-old         && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:433e3be9fbb84802caea5424f4424f8f1ef8df5ba6cc73ce3fd7a6ef3c9a8e44" [label="local://context" shape="ellipse"];
  "sha256:692e9dad3c465f1a305c814ab9ff9eab42890679cbccc293f3c0b1825781880b" [label="copy{src=/synthetic_data/Pipfile*, dest=/tmp/}" shape="note"];
  "sha256:32a8f448a096687476d855f5dce23743ecae909d5aee42f8d2c516cafd7de801" [label="/bin/sh -c PIPENV_PIPFILE=/tmp/Pipfile pipenv install --clear --system --deploy --three     && rm /tmp/Pipfile*" shape="box"];
  "sha256:3b99cbe2ee0e6a2e0068a6ad412d6c7f50483d6ee40850eed8858a0958472510" [label="/bin/sh -c mkdir -p /docker-entrypoint-initdb.d/sql/syntheticdata/ &&     mkdir -p /opt/synthetic_data/" shape="box"];
  "sha256:69c8d03075b9b1f4b782138e74a8a5bdab3796ed7fb5daf601126c959e7291a6" [label="copy{src=/bin/z_ingest_synthetic_data.sh, dest=/docker-entrypoint-initdb.d/}" shape="note"];
  "sha256:0c8e5c454b83386cc310ac906f0c3a18bedde5deb67e30f515dc9c68c4a369b1" [label="copy{src=/bin/generate_synthetic_data*.py, dest=/opt/synthetic_data/}" shape="note"];
  "sha256:41ba235bf5e69fe95eba53fef2c75783fd25e4a29693f55d29ddd178abbd6875" [label="copy{src=/test_data/sql/admin*.sql, dest=/docker-entrypoint-initdb.d/sql/syntheticdata/}" shape="note"];
  "sha256:7624d86bfd9a3238a2f8a9ca66a7c2eba2df84a6ba73b673191a5cf109008874" [label="copy{src=/synthetic_data/data/NPL_admbnda_adm3_Districts_simplified.geojson, dest=/opt/synthetic_data/}" shape="note"];
  "sha256:976740ef3910670776ef37b9a7565da7faba4c50a79782604fb7f3659b6197de" [label="/bin/sh -c mkdir docker-entrypoint-initdb.d/sql/syntheticdata/sql &&  chown -R postgres /docker-entrypoint-initdb.d" shape="box"];
  "sha256:2d2aca233da33595e1a73723d907855f1eb58a923863ef2341ea1019237c95cc" [label="/bin/sh -c chmod -R 777 /docker-entrypoint-initdb.d" shape="box"];
  "sha256:bd0cd6f7d0ccde48bb0a75c135d179029afb65cdae3a08d735b6d01f2ce1da8b" [label="sha256:bd0cd6f7d0ccde48bb0a75c135d179029afb65cdae3a08d735b6d01f2ce1da8b" shape="plaintext"];
  "sha256:395aa1d4278cb4a8970f9dfeda97490b9bd915c1676be073de085a081a0a9026" -> "sha256:73a09c8786a100ab7447ab2dbe7b6dce632f1f36a4c4597b75330d2e1a80733a" [label=""];
  "sha256:73a09c8786a100ab7447ab2dbe7b6dce632f1f36a4c4597b75330d2e1a80733a" -> "sha256:692e9dad3c465f1a305c814ab9ff9eab42890679cbccc293f3c0b1825781880b" [label=""];
  "sha256:433e3be9fbb84802caea5424f4424f8f1ef8df5ba6cc73ce3fd7a6ef3c9a8e44" -> "sha256:692e9dad3c465f1a305c814ab9ff9eab42890679cbccc293f3c0b1825781880b" [label=""];
  "sha256:692e9dad3c465f1a305c814ab9ff9eab42890679cbccc293f3c0b1825781880b" -> "sha256:32a8f448a096687476d855f5dce23743ecae909d5aee42f8d2c516cafd7de801" [label=""];
  "sha256:32a8f448a096687476d855f5dce23743ecae909d5aee42f8d2c516cafd7de801" -> "sha256:3b99cbe2ee0e6a2e0068a6ad412d6c7f50483d6ee40850eed8858a0958472510" [label=""];
  "sha256:3b99cbe2ee0e6a2e0068a6ad412d6c7f50483d6ee40850eed8858a0958472510" -> "sha256:69c8d03075b9b1f4b782138e74a8a5bdab3796ed7fb5daf601126c959e7291a6" [label=""];
  "sha256:433e3be9fbb84802caea5424f4424f8f1ef8df5ba6cc73ce3fd7a6ef3c9a8e44" -> "sha256:69c8d03075b9b1f4b782138e74a8a5bdab3796ed7fb5daf601126c959e7291a6" [label=""];
  "sha256:69c8d03075b9b1f4b782138e74a8a5bdab3796ed7fb5daf601126c959e7291a6" -> "sha256:0c8e5c454b83386cc310ac906f0c3a18bedde5deb67e30f515dc9c68c4a369b1" [label=""];
  "sha256:433e3be9fbb84802caea5424f4424f8f1ef8df5ba6cc73ce3fd7a6ef3c9a8e44" -> "sha256:0c8e5c454b83386cc310ac906f0c3a18bedde5deb67e30f515dc9c68c4a369b1" [label=""];
  "sha256:0c8e5c454b83386cc310ac906f0c3a18bedde5deb67e30f515dc9c68c4a369b1" -> "sha256:41ba235bf5e69fe95eba53fef2c75783fd25e4a29693f55d29ddd178abbd6875" [label=""];
  "sha256:433e3be9fbb84802caea5424f4424f8f1ef8df5ba6cc73ce3fd7a6ef3c9a8e44" -> "sha256:41ba235bf5e69fe95eba53fef2c75783fd25e4a29693f55d29ddd178abbd6875" [label=""];
  "sha256:41ba235bf5e69fe95eba53fef2c75783fd25e4a29693f55d29ddd178abbd6875" -> "sha256:7624d86bfd9a3238a2f8a9ca66a7c2eba2df84a6ba73b673191a5cf109008874" [label=""];
  "sha256:433e3be9fbb84802caea5424f4424f8f1ef8df5ba6cc73ce3fd7a6ef3c9a8e44" -> "sha256:7624d86bfd9a3238a2f8a9ca66a7c2eba2df84a6ba73b673191a5cf109008874" [label=""];
  "sha256:7624d86bfd9a3238a2f8a9ca66a7c2eba2df84a6ba73b673191a5cf109008874" -> "sha256:976740ef3910670776ef37b9a7565da7faba4c50a79782604fb7f3659b6197de" [label=""];
  "sha256:976740ef3910670776ef37b9a7565da7faba4c50a79782604fb7f3659b6197de" -> "sha256:2d2aca233da33595e1a73723d907855f1eb58a923863ef2341ea1019237c95cc" [label=""];
  "sha256:2d2aca233da33595e1a73723d907855f1eb58a923863ef2341ea1019237c95cc" -> "sha256:bd0cd6f7d0ccde48bb0a75c135d179029afb65cdae3a08d735b6d01f2ce1da8b" [label=""];
}

