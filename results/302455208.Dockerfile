[app/sources/302455208.Dockerfile]
digraph {
  "sha256:4a37f6d52d2cd28c7dbc81059275aa4dc8a01f2cdbeecc963605dbf05fb9c903" [label="docker-image://docker.io/mofesola/nginx-certbot@sha256:eb57343e42533e8969ae05158cc00e246d297a7eae95b93c301053338aa65482" shape="ellipse"];
  "sha256:2e775e74a28af03ae4d74723b2cd1d624a5b482afb94d6a23c5f05a8708628b0" [label="/bin/sh -c rm /etc/nginx/conf.d/default.conf" shape="box"];
  "sha256:e055d4c3b8d371373354f55be5728c60b823f12208c0da6da79bb66250af65d9" [label="local://context" shape="ellipse"];
  "sha256:794900040d479ed8d43d3e1f8cebff82608f2077279cf8baee0e9b542a0a382e" [label="copy{src=/conf, dest=/etc/nginx/conf.d/}" shape="note"];
  "sha256:7257bf480041f2e2c4776b445965a84e1a8939aaae7b42b92c07358d5f9bdfd8" [label="copy{src=/entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:e4d19a4aa1f85672ca7aba7503c7a727408936a656852f38cb42cd8aa97d236a" [label="mkdir{path=/var/www/html/handesk}" shape="note"];
  "sha256:f4a8a389d0e6424ea3a5f8453f62aa6461d4b502dc7176815207d6e7b6f6c6e7" [label="sha256:f4a8a389d0e6424ea3a5f8453f62aa6461d4b502dc7176815207d6e7b6f6c6e7" shape="plaintext"];
  "sha256:4a37f6d52d2cd28c7dbc81059275aa4dc8a01f2cdbeecc963605dbf05fb9c903" -> "sha256:2e775e74a28af03ae4d74723b2cd1d624a5b482afb94d6a23c5f05a8708628b0" [label=""];
  "sha256:2e775e74a28af03ae4d74723b2cd1d624a5b482afb94d6a23c5f05a8708628b0" -> "sha256:794900040d479ed8d43d3e1f8cebff82608f2077279cf8baee0e9b542a0a382e" [label=""];
  "sha256:e055d4c3b8d371373354f55be5728c60b823f12208c0da6da79bb66250af65d9" -> "sha256:794900040d479ed8d43d3e1f8cebff82608f2077279cf8baee0e9b542a0a382e" [label=""];
  "sha256:794900040d479ed8d43d3e1f8cebff82608f2077279cf8baee0e9b542a0a382e" -> "sha256:7257bf480041f2e2c4776b445965a84e1a8939aaae7b42b92c07358d5f9bdfd8" [label=""];
  "sha256:e055d4c3b8d371373354f55be5728c60b823f12208c0da6da79bb66250af65d9" -> "sha256:7257bf480041f2e2c4776b445965a84e1a8939aaae7b42b92c07358d5f9bdfd8" [label=""];
  "sha256:7257bf480041f2e2c4776b445965a84e1a8939aaae7b42b92c07358d5f9bdfd8" -> "sha256:e4d19a4aa1f85672ca7aba7503c7a727408936a656852f38cb42cd8aa97d236a" [label=""];
  "sha256:e4d19a4aa1f85672ca7aba7503c7a727408936a656852f38cb42cd8aa97d236a" -> "sha256:f4a8a389d0e6424ea3a5f8453f62aa6461d4b502dc7176815207d6e7b6f6c6e7" [label=""];
}

