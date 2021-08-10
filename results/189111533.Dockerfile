[app/sources/189111533.Dockerfile]
digraph {
  "sha256:ca965182d83da4d30e9cae3de29108ed6dba3ee0a01d90c057c2734c0dd2cbde" [label="docker-image://docker.io/rounds/10m-build:latest" shape="ellipse"];
  "sha256:ee3c6282eb010e7cdc964375aec94713dbc740645242bfe70839d70b78ffd40b" [label="/bin/sh -c add-apt-repository ppa:nginx/stable &&   apt-get update &&   apt-get install -y nginx &&   rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:a6e589c8bb9103c71197e2f406e46f2eeef9f6a5e0e73e590f4827a3582074f2" [label="/bin/sh -c rm /etc/nginx/sites-enabled/default" shape="box"];
  "sha256:f3450d8bc1c4b89ae723f40c312ab0a20595d4ae61c0744d43908369597d7ad8" [label="/bin/sh -c echo \"daemon off;\" >> /etc/nginx/nginx.conf" shape="box"];
  "sha256:14cc8738511fba659d7f1e75d9d3d35c794e92ecb7d4a13f06c521094e4287ab" [label="sha256:14cc8738511fba659d7f1e75d9d3d35c794e92ecb7d4a13f06c521094e4287ab" shape="plaintext"];
  "sha256:ca965182d83da4d30e9cae3de29108ed6dba3ee0a01d90c057c2734c0dd2cbde" -> "sha256:ee3c6282eb010e7cdc964375aec94713dbc740645242bfe70839d70b78ffd40b" [label=""];
  "sha256:ee3c6282eb010e7cdc964375aec94713dbc740645242bfe70839d70b78ffd40b" -> "sha256:a6e589c8bb9103c71197e2f406e46f2eeef9f6a5e0e73e590f4827a3582074f2" [label=""];
  "sha256:a6e589c8bb9103c71197e2f406e46f2eeef9f6a5e0e73e590f4827a3582074f2" -> "sha256:f3450d8bc1c4b89ae723f40c312ab0a20595d4ae61c0744d43908369597d7ad8" [label=""];
  "sha256:f3450d8bc1c4b89ae723f40c312ab0a20595d4ae61c0744d43908369597d7ad8" -> "sha256:14cc8738511fba659d7f1e75d9d3d35c794e92ecb7d4a13f06c521094e4287ab" [label=""];
}

