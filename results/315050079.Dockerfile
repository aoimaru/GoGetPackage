[app/sources/315050079.Dockerfile]
digraph {
  "sha256:4332bd8e625736db718ce6e7890e46c0e3df4fe21712e478373779cd10597423" [label="local://context" shape="ellipse"];
  "sha256:f64d4a83486b304343e8de0d7e7b1839790c56b7cd76739707e98bbc871f9b3f" [label="docker-image://docker.io/library/ubuntu:12.04" shape="ellipse"];
  "sha256:4e0a9ddbf8049114eb346ebe311d526b5df47e6c62d6639cf8cfb6149ee2c278" [label="/bin/sh -c apt-get update && apt-get install -y build-essential apache2 apache2-dev libxml2 libxml2-dev htop" shape="box"];
  "sha256:e73e8f09074a743f31da18db8bbeed1059501c581d249b19b370e3043975f1c0" [label="http://museum.php.net/php5/php-5.3.8.tar.gz" shape="ellipse"];
  "sha256:6a917a405045ee1620bff04971344df1eeea42156a2ddb1457e879549144497a" [label="copy{src=/php-5.3.8.tar.gz, dest=/home/}" shape="note"];
  "sha256:d239422317e1bb2f5f0802bc5006134bc1d44a2381e823e6595d61191b68aa9f" [label="mkdir{path=/home}" shape="note"];
  "sha256:ae0f807ded66aef45b89bef02d8b586341dda4246c979da7a6c93f6ff4bf81a9" [label="/bin/sh -c tar -xzf php-5.3.8.tar.gz" shape="box"];
  "sha256:1df4be9ea5ce2809f6708d7e8cdc72b0b22f0083019a6c8764717554e4b066a3" [label="mkdir{path=/home/php-5.3.8}" shape="note"];
  "sha256:cb9f86b9e27a5abd58f203e812fe3fec22a4f660ffa55333fb704835a01a8d54" [label="/bin/sh -c ./configure --with-apxs2=/usr/bin/apxs2" shape="box"];
  "sha256:5d035e1ac7967181ac6d275e68a2fd53f6752948af835b0ada37bbea166df9fe" [label="/bin/sh -c make" shape="box"];
  "sha256:02d6bba50d6b83d840c063e9b5dd444b17c3a55dfe51b85e14fc0963486bf698" [label="/bin/sh -c make install" shape="box"];
  "sha256:fc29722cf4eac931e16767470a1d1a31247979073dd6534622bfc3310abf4534" [label="copy{src=/post.php, dest=/var/www/post.php}" shape="note"];
  "sha256:b9c72665b06fa0181e7ae29f8ea50e239f7334f8e73d5f57eb6987bc10283fb2" [label="/bin/sh -c service apache2 restart" shape="box"];
  "sha256:e4496f50411981f4e5704ef7dd8ac12b01e3ebec4e456d1ccb2b1c0aaf333286" [label="sha256:e4496f50411981f4e5704ef7dd8ac12b01e3ebec4e456d1ccb2b1c0aaf333286" shape="plaintext"];
  "sha256:f64d4a83486b304343e8de0d7e7b1839790c56b7cd76739707e98bbc871f9b3f" -> "sha256:4e0a9ddbf8049114eb346ebe311d526b5df47e6c62d6639cf8cfb6149ee2c278" [label=""];
  "sha256:4e0a9ddbf8049114eb346ebe311d526b5df47e6c62d6639cf8cfb6149ee2c278" -> "sha256:6a917a405045ee1620bff04971344df1eeea42156a2ddb1457e879549144497a" [label=""];
  "sha256:e73e8f09074a743f31da18db8bbeed1059501c581d249b19b370e3043975f1c0" -> "sha256:6a917a405045ee1620bff04971344df1eeea42156a2ddb1457e879549144497a" [label=""];
  "sha256:6a917a405045ee1620bff04971344df1eeea42156a2ddb1457e879549144497a" -> "sha256:d239422317e1bb2f5f0802bc5006134bc1d44a2381e823e6595d61191b68aa9f" [label=""];
  "sha256:d239422317e1bb2f5f0802bc5006134bc1d44a2381e823e6595d61191b68aa9f" -> "sha256:ae0f807ded66aef45b89bef02d8b586341dda4246c979da7a6c93f6ff4bf81a9" [label=""];
  "sha256:ae0f807ded66aef45b89bef02d8b586341dda4246c979da7a6c93f6ff4bf81a9" -> "sha256:1df4be9ea5ce2809f6708d7e8cdc72b0b22f0083019a6c8764717554e4b066a3" [label=""];
  "sha256:1df4be9ea5ce2809f6708d7e8cdc72b0b22f0083019a6c8764717554e4b066a3" -> "sha256:cb9f86b9e27a5abd58f203e812fe3fec22a4f660ffa55333fb704835a01a8d54" [label=""];
  "sha256:cb9f86b9e27a5abd58f203e812fe3fec22a4f660ffa55333fb704835a01a8d54" -> "sha256:5d035e1ac7967181ac6d275e68a2fd53f6752948af835b0ada37bbea166df9fe" [label=""];
  "sha256:5d035e1ac7967181ac6d275e68a2fd53f6752948af835b0ada37bbea166df9fe" -> "sha256:02d6bba50d6b83d840c063e9b5dd444b17c3a55dfe51b85e14fc0963486bf698" [label=""];
  "sha256:02d6bba50d6b83d840c063e9b5dd444b17c3a55dfe51b85e14fc0963486bf698" -> "sha256:fc29722cf4eac931e16767470a1d1a31247979073dd6534622bfc3310abf4534" [label=""];
  "sha256:4332bd8e625736db718ce6e7890e46c0e3df4fe21712e478373779cd10597423" -> "sha256:fc29722cf4eac931e16767470a1d1a31247979073dd6534622bfc3310abf4534" [label=""];
  "sha256:fc29722cf4eac931e16767470a1d1a31247979073dd6534622bfc3310abf4534" -> "sha256:b9c72665b06fa0181e7ae29f8ea50e239f7334f8e73d5f57eb6987bc10283fb2" [label=""];
  "sha256:b9c72665b06fa0181e7ae29f8ea50e239f7334f8e73d5f57eb6987bc10283fb2" -> "sha256:e4496f50411981f4e5704ef7dd8ac12b01e3ebec4e456d1ccb2b1c0aaf333286" [label=""];
}

