[app/sources/272252894.Dockerfile]
digraph {
  "sha256:02f91ee3a2e210f91252413301d83945c17cce575dab9d957f103923c814622e" [label="local://context" shape="ellipse"];
  "sha256:d52c413b6740f28a580dbf21322ab2de1ada002452504bf1a2bea672de9f73fc" [label="docker-image://docker.io/binhex/arch-base:2017102800" shape="ellipse"];
  "sha256:8bdf1a8e80b1db08573e79723c6bd7cd44afc038565d79355fc7120e9e8b9bbf" [label="copy{src=/build/*.conf, dest=/etc/supervisor/conf.d/}" shape="note"];
  "sha256:b277f5f2f917f23acaa1a019eb84a222dc54fa0387dc8a9113040f15545b06f6" [label="copy{src=/build/root/*.sh, dest=/root/}" shape="note"];
  "sha256:2fff5b39044ae4f90a494dabf06b9ba8d81b0cc33fb7a715edfd3c69ca899bd3" [label="copy{src=/run/nobody/*.sh, dest=/home/nobody/}" shape="note"];
  "sha256:71125b7a6f8475ef1dd5465dc9cd5586fb3b8a5b94541011e99792fd8c93f844" [label="/bin/sh -c chmod +x /root/*.sh /home/nobody/*.sh && \t/bin/bash /root/install.sh" shape="box"];
  "sha256:cdca31041a40ba354ab72348de4f075554b6c8dc43f3df7fe640f3e7b7cf67ee" [label="sha256:cdca31041a40ba354ab72348de4f075554b6c8dc43f3df7fe640f3e7b7cf67ee" shape="plaintext"];
  "sha256:d52c413b6740f28a580dbf21322ab2de1ada002452504bf1a2bea672de9f73fc" -> "sha256:8bdf1a8e80b1db08573e79723c6bd7cd44afc038565d79355fc7120e9e8b9bbf" [label=""];
  "sha256:02f91ee3a2e210f91252413301d83945c17cce575dab9d957f103923c814622e" -> "sha256:8bdf1a8e80b1db08573e79723c6bd7cd44afc038565d79355fc7120e9e8b9bbf" [label=""];
  "sha256:8bdf1a8e80b1db08573e79723c6bd7cd44afc038565d79355fc7120e9e8b9bbf" -> "sha256:b277f5f2f917f23acaa1a019eb84a222dc54fa0387dc8a9113040f15545b06f6" [label=""];
  "sha256:02f91ee3a2e210f91252413301d83945c17cce575dab9d957f103923c814622e" -> "sha256:b277f5f2f917f23acaa1a019eb84a222dc54fa0387dc8a9113040f15545b06f6" [label=""];
  "sha256:b277f5f2f917f23acaa1a019eb84a222dc54fa0387dc8a9113040f15545b06f6" -> "sha256:2fff5b39044ae4f90a494dabf06b9ba8d81b0cc33fb7a715edfd3c69ca899bd3" [label=""];
  "sha256:02f91ee3a2e210f91252413301d83945c17cce575dab9d957f103923c814622e" -> "sha256:2fff5b39044ae4f90a494dabf06b9ba8d81b0cc33fb7a715edfd3c69ca899bd3" [label=""];
  "sha256:2fff5b39044ae4f90a494dabf06b9ba8d81b0cc33fb7a715edfd3c69ca899bd3" -> "sha256:71125b7a6f8475ef1dd5465dc9cd5586fb3b8a5b94541011e99792fd8c93f844" [label=""];
  "sha256:71125b7a6f8475ef1dd5465dc9cd5586fb3b8a5b94541011e99792fd8c93f844" -> "sha256:cdca31041a40ba354ab72348de4f075554b6c8dc43f3df7fe640f3e7b7cf67ee" [label=""];
}

