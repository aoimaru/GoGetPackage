[app/sources/463230935.Dockerfile]
digraph {
  "sha256:775db878d6f3e9c9f59dc80a41095e013a6da69edeb2c488f8e438fa45c0f6f2" [label="local://context" shape="ellipse"];
  "sha256:4a92a13abf9f99ec1685954f64a61d22e1de5ebb63531b2235a4643a5437cdc2" [label="docker-image://docker.io/library/python:3.7-slim" shape="ellipse"];
  "sha256:317a0fa1b3ec7cc05193b5a720fe489714375507efd00a8eb923532569963f4d" [label="/bin/sh -c pip install --upgrade pip" shape="box"];
  "sha256:c297a53ba13f655b9e3316b28e378dc2b396ede459168c15ffdc1ae81ac8fcf5" [label="/bin/sh -c mkdir /app" shape="box"];
  "sha256:0f56070038c42df3ed34f43c33d5a9b3c7afcd43b719f0712f853d90516b9b61" [label="mkdir{path=/app}" shape="note"];
  "sha256:8d5ad9a2152c7d3ce9754466af33970e28d26a6d2cfe35ea0c9c1edefdf44872" [label="copy{src=/app, dest=/app}" shape="note"];
  "sha256:4e0d8a176f95e9b9e1c6d9e9dbe49b2197d619909df53d7b2293a429ce4af20e" [label="/bin/sh -c pip install Flask" shape="box"];
  "sha256:6184644315ab201df4fc0d8cc7875d45ac2ce4966b5bf69b7ee53c9d32f20f16" [label="/bin/sh -c pip install gunicorn" shape="box"];
  "sha256:5e76a50a7fb7c664290ab8698a24c2bceed49d687adf5f986bcd9d3a99d153a2" [label="/bin/sh -c pip install psycopg2" shape="box"];
  "sha256:80ebe007beccea24dfa63686d0ed67f9e9c4d4a79a57683fee59bc12af502956" [label="/bin/sh -c pip install pandas" shape="box"];
  "sha256:c0c3a652dfb0a97061541001088073b3fbc91b133f9345f4f037400aa76b9b2b" [label="sha256:c0c3a652dfb0a97061541001088073b3fbc91b133f9345f4f037400aa76b9b2b" shape="plaintext"];
  "sha256:4a92a13abf9f99ec1685954f64a61d22e1de5ebb63531b2235a4643a5437cdc2" -> "sha256:317a0fa1b3ec7cc05193b5a720fe489714375507efd00a8eb923532569963f4d" [label=""];
  "sha256:317a0fa1b3ec7cc05193b5a720fe489714375507efd00a8eb923532569963f4d" -> "sha256:c297a53ba13f655b9e3316b28e378dc2b396ede459168c15ffdc1ae81ac8fcf5" [label=""];
  "sha256:c297a53ba13f655b9e3316b28e378dc2b396ede459168c15ffdc1ae81ac8fcf5" -> "sha256:0f56070038c42df3ed34f43c33d5a9b3c7afcd43b719f0712f853d90516b9b61" [label=""];
  "sha256:0f56070038c42df3ed34f43c33d5a9b3c7afcd43b719f0712f853d90516b9b61" -> "sha256:8d5ad9a2152c7d3ce9754466af33970e28d26a6d2cfe35ea0c9c1edefdf44872" [label=""];
  "sha256:775db878d6f3e9c9f59dc80a41095e013a6da69edeb2c488f8e438fa45c0f6f2" -> "sha256:8d5ad9a2152c7d3ce9754466af33970e28d26a6d2cfe35ea0c9c1edefdf44872" [label=""];
  "sha256:8d5ad9a2152c7d3ce9754466af33970e28d26a6d2cfe35ea0c9c1edefdf44872" -> "sha256:4e0d8a176f95e9b9e1c6d9e9dbe49b2197d619909df53d7b2293a429ce4af20e" [label=""];
  "sha256:4e0d8a176f95e9b9e1c6d9e9dbe49b2197d619909df53d7b2293a429ce4af20e" -> "sha256:6184644315ab201df4fc0d8cc7875d45ac2ce4966b5bf69b7ee53c9d32f20f16" [label=""];
  "sha256:6184644315ab201df4fc0d8cc7875d45ac2ce4966b5bf69b7ee53c9d32f20f16" -> "sha256:5e76a50a7fb7c664290ab8698a24c2bceed49d687adf5f986bcd9d3a99d153a2" [label=""];
  "sha256:5e76a50a7fb7c664290ab8698a24c2bceed49d687adf5f986bcd9d3a99d153a2" -> "sha256:80ebe007beccea24dfa63686d0ed67f9e9c4d4a79a57683fee59bc12af502956" [label=""];
  "sha256:80ebe007beccea24dfa63686d0ed67f9e9c4d4a79a57683fee59bc12af502956" -> "sha256:c0c3a652dfb0a97061541001088073b3fbc91b133f9345f4f037400aa76b9b2b" [label=""];
}

