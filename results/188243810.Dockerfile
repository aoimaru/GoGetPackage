[app/sources/188243810.Dockerfile]
digraph {
  "sha256:5955683c707c864c7cc038b6c22c3c96da611d93493c389112fa2db86641adb3" [label="docker-image://docker.io/library/nginx:1.13" shape="ellipse"];
  "sha256:c85c4870794a88b4485bc093d7dd782813a7472d78c08316933872ae086c6b5d" [label="/bin/sh -c apt-get update     && apt-get install -qqy curl python apt-transport-https apt-utils gnupg1 procps     && echo 'deb https://packages.amplify.nginx.com/debian/ stretch amplify-agent' > /etc/apt/sources.list.d/nginx-amplify.list     && curl -fs https://nginx.org/keys/nginx_signing.key | apt-key add - > /dev/null 2>&1     && apt-get update     && apt-get install -qqy nginx-amplify-agent     && apt-get purge -qqy curl apt-transport-https apt-utils gnupg1     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:3f68c5c0702100a2206b8eefdc365b791d69befaa131414b67ef27c6a48b63f5" [label="/bin/sh -c unlink /var/log/nginx/access.log     && unlink /var/log/nginx/error.log     && touch /var/log/nginx/access.log     && touch /var/log/nginx/error.log     && chown nginx /var/log/nginx/*log     && chmod 644 /var/log/nginx/*log" shape="box"];
  "sha256:2299051868991470abbb083cae9284c3d9e863af64e38a74a6c5dac916646ece" [label="local://context" shape="ellipse"];
  "sha256:b371ee3b2d60af614a24b7a6597918be9b89371c52689970c7491536274f86b3" [label="copy{src=/config/deploy/nginx/stub_status.conf, dest=/etc/nginx/conf.d}" shape="note"];
  "sha256:83f3e28a9b80430a9407cb03ab9c43336f99a61d9ea56b789341c3d27b12f444" [label="/bin/sh -c rm -rf /usr/share/nginx/html" shape="box"];
  "sha256:2c62856f54fef63c208885755546f843953a6fdacbb84bc56bc9a75305c450a8" [label="copy{src=/public, dest=/usr/share/nginx/html}" shape="note"];
  "sha256:d6f655dbd6ab89111ca4ec90529c4476789d1610b24dce66f801c96c6ba0b802" [label="copy{src=/config/deploy/nginx/nginx.conf, dest=/etc/nginx/conf.d/default.conf}" shape="note"];
  "sha256:aabd6fb0c9bb51feba6ef08571d122013a441f10af07275bfacb62e6d03cdede" [label="copy{src=/config/deploy/nginx/entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:367c5035bac016997cef3391ddc33127bca19fa2bce1410ec62041cab6941965" [label="sha256:367c5035bac016997cef3391ddc33127bca19fa2bce1410ec62041cab6941965" shape="plaintext"];
  "sha256:5955683c707c864c7cc038b6c22c3c96da611d93493c389112fa2db86641adb3" -> "sha256:c85c4870794a88b4485bc093d7dd782813a7472d78c08316933872ae086c6b5d" [label=""];
  "sha256:c85c4870794a88b4485bc093d7dd782813a7472d78c08316933872ae086c6b5d" -> "sha256:3f68c5c0702100a2206b8eefdc365b791d69befaa131414b67ef27c6a48b63f5" [label=""];
  "sha256:3f68c5c0702100a2206b8eefdc365b791d69befaa131414b67ef27c6a48b63f5" -> "sha256:b371ee3b2d60af614a24b7a6597918be9b89371c52689970c7491536274f86b3" [label=""];
  "sha256:2299051868991470abbb083cae9284c3d9e863af64e38a74a6c5dac916646ece" -> "sha256:b371ee3b2d60af614a24b7a6597918be9b89371c52689970c7491536274f86b3" [label=""];
  "sha256:b371ee3b2d60af614a24b7a6597918be9b89371c52689970c7491536274f86b3" -> "sha256:83f3e28a9b80430a9407cb03ab9c43336f99a61d9ea56b789341c3d27b12f444" [label=""];
  "sha256:83f3e28a9b80430a9407cb03ab9c43336f99a61d9ea56b789341c3d27b12f444" -> "sha256:2c62856f54fef63c208885755546f843953a6fdacbb84bc56bc9a75305c450a8" [label=""];
  "sha256:2299051868991470abbb083cae9284c3d9e863af64e38a74a6c5dac916646ece" -> "sha256:2c62856f54fef63c208885755546f843953a6fdacbb84bc56bc9a75305c450a8" [label=""];
  "sha256:2c62856f54fef63c208885755546f843953a6fdacbb84bc56bc9a75305c450a8" -> "sha256:d6f655dbd6ab89111ca4ec90529c4476789d1610b24dce66f801c96c6ba0b802" [label=""];
  "sha256:2299051868991470abbb083cae9284c3d9e863af64e38a74a6c5dac916646ece" -> "sha256:d6f655dbd6ab89111ca4ec90529c4476789d1610b24dce66f801c96c6ba0b802" [label=""];
  "sha256:d6f655dbd6ab89111ca4ec90529c4476789d1610b24dce66f801c96c6ba0b802" -> "sha256:aabd6fb0c9bb51feba6ef08571d122013a441f10af07275bfacb62e6d03cdede" [label=""];
  "sha256:2299051868991470abbb083cae9284c3d9e863af64e38a74a6c5dac916646ece" -> "sha256:aabd6fb0c9bb51feba6ef08571d122013a441f10af07275bfacb62e6d03cdede" [label=""];
  "sha256:aabd6fb0c9bb51feba6ef08571d122013a441f10af07275bfacb62e6d03cdede" -> "sha256:367c5035bac016997cef3391ddc33127bca19fa2bce1410ec62041cab6941965" [label=""];
}

