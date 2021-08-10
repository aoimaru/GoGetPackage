[app/sources/360008995.Dockerfile]
digraph {
  "sha256:6608712bb2c53bf37821ea91093eba5cc8d0593c87453f800b53d692ceeb667c" [label="local://context" shape="ellipse"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:5a093eebb692532128654b6bd155ef9b45ac337a805b61f81bad9a07b904b6af" [label="/bin/sh -c apt-get update -y &&    apt-get install --fix-missing -y curl git vim wget build-essential python-dev bzip2 libsm6      locales nodejs-legacy npm python-virtualenv python-pip gcc gfortran libglib2.0-0 python-qt4 &&    apt-get clean &&    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*tmp" shape="box"];
  "sha256:94ea88f5a2ab9017f66d732a5f8fd0d2c6ddb578a20292c36acc9bc10ad857de" [label="/bin/sh -c echo \"en_US.UTF-8 UTF-8\" > /etc/locale.gen && locale-gen" shape="box"];
  "sha256:c0ca47123380007d54ed30e9619a086a61e897857d756e6f21564a52167c767f" [label="/bin/sh -c useradd -m -s /bin/bash main" shape="box"];
  "sha256:6cd8b1cba20d46b4e20115c21baa8e0b2558346e64e50b949b64c11c7d071d83" [label="mkdir{path=/home/main}" shape="note"];
  "sha256:29d7a0d55cfa881c32424637839e5df93e1a1265c727450d662b8353649dc4f6" [label="copy{src=/start-notebook.sh, dest=/home/main/}" shape="note"];
  "sha256:dc9afc179cb722975c1b1c4c187789e97703c2112b57e4da3fd280a9180f2060" [label="/bin/sh -c wget https://3230d63b5fc54e62148e-c95ac804525aac4b6dba79b00b39d1d3.ssl.cf1.rackcdn.com/Anaconda3-4.0.0-Linux-x86_64.sh" shape="box"];
  "sha256:0b3d22ca101991bd9ddf35552bf10fc321face9cf35864c214683318d97c3661" [label="/bin/sh -c bash Anaconda3-4.0.0-Linux-x86_64.sh -b &&    rm Anaconda3-4.0.0-Linux-x86_64.sh" shape="box"];
  "sha256:f44a9146122795d90c2cec9ee25d67d04bb540b2f853f720599bc35ed817e5a8" [label="/bin/sh -c /home/main/anaconda3/bin/pip install --upgrade pip" shape="box"];
  "sha256:5770d2fd15e65af2d73d37d02cf4c02355349fd9b93bcf8f784c514bb432b28a" [label="sha256:5770d2fd15e65af2d73d37d02cf4c02355349fd9b93bcf8f784c514bb432b28a" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:5a093eebb692532128654b6bd155ef9b45ac337a805b61f81bad9a07b904b6af" [label=""];
  "sha256:5a093eebb692532128654b6bd155ef9b45ac337a805b61f81bad9a07b904b6af" -> "sha256:94ea88f5a2ab9017f66d732a5f8fd0d2c6ddb578a20292c36acc9bc10ad857de" [label=""];
  "sha256:94ea88f5a2ab9017f66d732a5f8fd0d2c6ddb578a20292c36acc9bc10ad857de" -> "sha256:c0ca47123380007d54ed30e9619a086a61e897857d756e6f21564a52167c767f" [label=""];
  "sha256:c0ca47123380007d54ed30e9619a086a61e897857d756e6f21564a52167c767f" -> "sha256:6cd8b1cba20d46b4e20115c21baa8e0b2558346e64e50b949b64c11c7d071d83" [label=""];
  "sha256:6cd8b1cba20d46b4e20115c21baa8e0b2558346e64e50b949b64c11c7d071d83" -> "sha256:29d7a0d55cfa881c32424637839e5df93e1a1265c727450d662b8353649dc4f6" [label=""];
  "sha256:6608712bb2c53bf37821ea91093eba5cc8d0593c87453f800b53d692ceeb667c" -> "sha256:29d7a0d55cfa881c32424637839e5df93e1a1265c727450d662b8353649dc4f6" [label=""];
  "sha256:29d7a0d55cfa881c32424637839e5df93e1a1265c727450d662b8353649dc4f6" -> "sha256:dc9afc179cb722975c1b1c4c187789e97703c2112b57e4da3fd280a9180f2060" [label=""];
  "sha256:dc9afc179cb722975c1b1c4c187789e97703c2112b57e4da3fd280a9180f2060" -> "sha256:0b3d22ca101991bd9ddf35552bf10fc321face9cf35864c214683318d97c3661" [label=""];
  "sha256:0b3d22ca101991bd9ddf35552bf10fc321face9cf35864c214683318d97c3661" -> "sha256:f44a9146122795d90c2cec9ee25d67d04bb540b2f853f720599bc35ed817e5a8" [label=""];
  "sha256:f44a9146122795d90c2cec9ee25d67d04bb540b2f853f720599bc35ed817e5a8" -> "sha256:5770d2fd15e65af2d73d37d02cf4c02355349fd9b93bcf8f784c514bb432b28a" [label=""];
}

