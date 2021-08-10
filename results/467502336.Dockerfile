[app/sources/467502336.Dockerfile]
digraph {
  "sha256:c5c0c69a8942d7bd8f9d1f57a432a97de01ec40d6239b53e5c9b7eb5e81962ea" [label="local://context" shape="ellipse"];
  "sha256:3c435142fb95afbde409190799817338de0aa5fdc11162f1ceade49d4a0f1eb7" [label="docker-image://registry.fit2cloud.com/public/python:v3@sha256:e493bdfda0bcc41a01df57e30eb038f0608ba72b1e14e15f726099aa415e0a52" shape="ellipse"];
  "sha256:f2d675e9cd2235966ba490a5f0efc1617f45e63dd8f6574e1095fed803669a1c" [label="mkdir{path=/opt/kubeOperator-api}" shape="note"];
  "sha256:2075abeded6b942323ec67bbb55b37305f7e2accfa8f46fe55276c7beec91c86" [label="/bin/sh -c echo -e \"[mysql]\\nname=mysql\\nbaseurl=https://mirrors.tuna.tsinghua.edu.cn/mysql/yum/mysql57-community-el6/\\ngpgcheck=0\\nenabled=1\" > /etc/yum.repos.d/mysql.repo" shape="box"];
  "sha256:eef85f0eec8f1b07ec9b8109a333dda3cf198bb3febe98d346672fae2ce74e17" [label="copy{src=/requirements, dest=/tmp/requirements}" shape="note"];
  "sha256:a66e0ca81a4e17df15f374fdaacb87d4865d41da7740dfc8b08feb4d0e69ef61" [label="/bin/sh -c cd /tmp/requirements && yum -y install epel-release && yum -y install $(cat rpm_requirements.txt)" shape="box"];
  "sha256:a8f353b5ede769ddef6789ac662cb4b3f1b8ce65487466d9e8dd2e0498f32111" [label="/bin/sh -c cd /tmp/requirements &&      pip install --upgrade pip setuptools -i https://mirrors.aliyun.com/pypi/simple/ &&      pip install -r requirements.txt -i https://mirrors.aliyun.com/pypi/simple/ || pip install -r requirements.txt" shape="box"];
  "sha256:68a5747eee5d5864a3a41c03066cc3da486e766355eed2b8a363c50d58efb813" [label="/bin/sh -c test -f /root/.ssh/id_rsa || ssh-keygen -f /root/.ssh/id_rsa -t rsa -P ''" shape="box"];
  "sha256:1638bb9656ed8a9f6f4cabb65431f9cd8114598d4db20c061be3d6acd88965f3" [label="/bin/sh -c echo -e \"Host *\\n\\tStrictHostKeyChecking no\\n\\tUserKnownHostsFile /dev/null\" > /root/.ssh/config" shape="box"];
  "sha256:0c09aade05fbfbccbbb3851a6da11e9264c51b4ac7b95d3f39d31185e8a780f8" [label="copy{src=/requirements/instll_curl.sh, dest=/opt/kubeOperator-api}" shape="note"];
  "sha256:e1eb085e25bf893bdfd6c8dc8af876aaac049da8312dbd7ca4179068b04dab78" [label="/bin/sh -c bash /opt/kubeOperator-api/instll_curl.sh" shape="box"];
  "sha256:c17240129c11e53edb790bc842146de4c71203502ce5e890173e21253857ce6c" [label="copy{src=/, dest=/opt/kubeOperator-api}" shape="note"];
  "sha256:eaa8ab2d55628ef17e8cfa32c41c0d9b38fc686702bd735ccebe2d6b0080d00d" [label="/bin/sh -c echo > config.yml" shape="box"];
  "sha256:ae10262ed1d6d9ce0c3a40a56d059d85f815bedba5741283048bca4ea0d06eec" [label="sha256:ae10262ed1d6d9ce0c3a40a56d059d85f815bedba5741283048bca4ea0d06eec" shape="plaintext"];
  "sha256:3c435142fb95afbde409190799817338de0aa5fdc11162f1ceade49d4a0f1eb7" -> "sha256:f2d675e9cd2235966ba490a5f0efc1617f45e63dd8f6574e1095fed803669a1c" [label=""];
  "sha256:f2d675e9cd2235966ba490a5f0efc1617f45e63dd8f6574e1095fed803669a1c" -> "sha256:2075abeded6b942323ec67bbb55b37305f7e2accfa8f46fe55276c7beec91c86" [label=""];
  "sha256:2075abeded6b942323ec67bbb55b37305f7e2accfa8f46fe55276c7beec91c86" -> "sha256:eef85f0eec8f1b07ec9b8109a333dda3cf198bb3febe98d346672fae2ce74e17" [label=""];
  "sha256:c5c0c69a8942d7bd8f9d1f57a432a97de01ec40d6239b53e5c9b7eb5e81962ea" -> "sha256:eef85f0eec8f1b07ec9b8109a333dda3cf198bb3febe98d346672fae2ce74e17" [label=""];
  "sha256:eef85f0eec8f1b07ec9b8109a333dda3cf198bb3febe98d346672fae2ce74e17" -> "sha256:a66e0ca81a4e17df15f374fdaacb87d4865d41da7740dfc8b08feb4d0e69ef61" [label=""];
  "sha256:a66e0ca81a4e17df15f374fdaacb87d4865d41da7740dfc8b08feb4d0e69ef61" -> "sha256:a8f353b5ede769ddef6789ac662cb4b3f1b8ce65487466d9e8dd2e0498f32111" [label=""];
  "sha256:a8f353b5ede769ddef6789ac662cb4b3f1b8ce65487466d9e8dd2e0498f32111" -> "sha256:68a5747eee5d5864a3a41c03066cc3da486e766355eed2b8a363c50d58efb813" [label=""];
  "sha256:68a5747eee5d5864a3a41c03066cc3da486e766355eed2b8a363c50d58efb813" -> "sha256:1638bb9656ed8a9f6f4cabb65431f9cd8114598d4db20c061be3d6acd88965f3" [label=""];
  "sha256:1638bb9656ed8a9f6f4cabb65431f9cd8114598d4db20c061be3d6acd88965f3" -> "sha256:0c09aade05fbfbccbbb3851a6da11e9264c51b4ac7b95d3f39d31185e8a780f8" [label=""];
  "sha256:c5c0c69a8942d7bd8f9d1f57a432a97de01ec40d6239b53e5c9b7eb5e81962ea" -> "sha256:0c09aade05fbfbccbbb3851a6da11e9264c51b4ac7b95d3f39d31185e8a780f8" [label=""];
  "sha256:0c09aade05fbfbccbbb3851a6da11e9264c51b4ac7b95d3f39d31185e8a780f8" -> "sha256:e1eb085e25bf893bdfd6c8dc8af876aaac049da8312dbd7ca4179068b04dab78" [label=""];
  "sha256:e1eb085e25bf893bdfd6c8dc8af876aaac049da8312dbd7ca4179068b04dab78" -> "sha256:c17240129c11e53edb790bc842146de4c71203502ce5e890173e21253857ce6c" [label=""];
  "sha256:c5c0c69a8942d7bd8f9d1f57a432a97de01ec40d6239b53e5c9b7eb5e81962ea" -> "sha256:c17240129c11e53edb790bc842146de4c71203502ce5e890173e21253857ce6c" [label=""];
  "sha256:c17240129c11e53edb790bc842146de4c71203502ce5e890173e21253857ce6c" -> "sha256:eaa8ab2d55628ef17e8cfa32c41c0d9b38fc686702bd735ccebe2d6b0080d00d" [label=""];
  "sha256:eaa8ab2d55628ef17e8cfa32c41c0d9b38fc686702bd735ccebe2d6b0080d00d" -> "sha256:ae10262ed1d6d9ce0c3a40a56d059d85f815bedba5741283048bca4ea0d06eec" [label=""];
}

