[app/sources/423605350.Dockerfile]
digraph {
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:607ca3ddd1609b512562d8b55ca98255c3988755a4eca074106ef99488531c6d" [label="local://context" shape="ellipse"];
  "sha256:348abd48abfbe9cbb6065d67e43ad07a585d7eb1e7fc3fcc67f5e6ff7a0b2e1e" [label="copy{src=/flag, dest=/flag}" shape="note"];
  "sha256:cd9e847b6f3cbd1d9535676855f94d73328815f81f932225bfaec986bb9d190c" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:add929f3202690ed77dcb8eefc9c9419cddcf31ffb382a91ed52a708b2b357bf" [label="/bin/sh -c apt-get -y install tzdata" shape="box"];
  "sha256:b6869f162c73b613ef8549028c0407279e17b9ae127032b57a8a035996df6fe1" [label="/bin/sh -c apt-get -y install php" shape="box"];
  "sha256:662f055ad06c1cba89a9c9b2cc5b422cb4f07d4086e4eca8eb4c4edd66f64424" [label="/bin/sh -c apt-get -y install apache2" shape="box"];
  "sha256:a22a020f6a6ec7d3c3f5f1817ee4e80c0695776663f3b57c2eb2711e7a3b3df1" [label="/bin/sh -c apt-get -y install libapache2-mod-php" shape="box"];
  "sha256:633774c596beee0a97943330aa3f82f746dcb81974e2f37e1da0bf5a844c8a60" [label="/bin/sh -c rm /var/www/html/index.html" shape="box"];
  "sha256:de236da4a9b8c4e37711c30f71069455a05df004435ec10b14aeb6e72fdfce1f" [label="/bin/sh -c sed -i \"s/;session.upload_progress.enabled = On/session.upload_progress.enabled = Off/g\" /etc/php/7.2/apache2/php.ini" shape="box"];
  "sha256:77212fa127e96edc8f1c470c35b4ad37a90a8e299d071304b73fb9ca776184d2" [label="/bin/sh -c sed -i \"s/;session.upload_progress.enabled = On/session.upload_progress.enabled = Off/g\" /etc/php/7.2/cli/php.ini" shape="box"];
  "sha256:32d638ca88a3afa839cde7d1258d11a14773263204610f6a6e2486731aa2630d" [label="/bin/sh -c echo 'PD9waHAKICAoJF89QCRfR0VUWydvcmFuZ2UnXSkgJiYgQHN1YnN0cihmaWxlKCRfKVswXSwwLDYpID09PSAnQDw/cGhwJyA/IGluY2x1ZGUoJF8pIDogaGlnaGxpZ2h0X2ZpbGUoX19GSUxFX18pOw==' | base64 -d > /var/www/html/index.php" shape="box"];
  "sha256:6949228eef105104118c104da3edcb2bcc70cb483ed19820aa7753b1beb60b92" [label="/bin/sh -c chmod -R 755 /var/www/html" shape="box"];
  "sha256:6201f86a1a5d84c57adf12e2ded2c5181d185d320e789d8034e87b6343a2a393" [label="sha256:6201f86a1a5d84c57adf12e2ded2c5181d185d320e789d8034e87b6343a2a393" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:348abd48abfbe9cbb6065d67e43ad07a585d7eb1e7fc3fcc67f5e6ff7a0b2e1e" [label=""];
  "sha256:607ca3ddd1609b512562d8b55ca98255c3988755a4eca074106ef99488531c6d" -> "sha256:348abd48abfbe9cbb6065d67e43ad07a585d7eb1e7fc3fcc67f5e6ff7a0b2e1e" [label=""];
  "sha256:348abd48abfbe9cbb6065d67e43ad07a585d7eb1e7fc3fcc67f5e6ff7a0b2e1e" -> "sha256:cd9e847b6f3cbd1d9535676855f94d73328815f81f932225bfaec986bb9d190c" [label=""];
  "sha256:cd9e847b6f3cbd1d9535676855f94d73328815f81f932225bfaec986bb9d190c" -> "sha256:add929f3202690ed77dcb8eefc9c9419cddcf31ffb382a91ed52a708b2b357bf" [label=""];
  "sha256:add929f3202690ed77dcb8eefc9c9419cddcf31ffb382a91ed52a708b2b357bf" -> "sha256:b6869f162c73b613ef8549028c0407279e17b9ae127032b57a8a035996df6fe1" [label=""];
  "sha256:b6869f162c73b613ef8549028c0407279e17b9ae127032b57a8a035996df6fe1" -> "sha256:662f055ad06c1cba89a9c9b2cc5b422cb4f07d4086e4eca8eb4c4edd66f64424" [label=""];
  "sha256:662f055ad06c1cba89a9c9b2cc5b422cb4f07d4086e4eca8eb4c4edd66f64424" -> "sha256:a22a020f6a6ec7d3c3f5f1817ee4e80c0695776663f3b57c2eb2711e7a3b3df1" [label=""];
  "sha256:a22a020f6a6ec7d3c3f5f1817ee4e80c0695776663f3b57c2eb2711e7a3b3df1" -> "sha256:633774c596beee0a97943330aa3f82f746dcb81974e2f37e1da0bf5a844c8a60" [label=""];
  "sha256:633774c596beee0a97943330aa3f82f746dcb81974e2f37e1da0bf5a844c8a60" -> "sha256:de236da4a9b8c4e37711c30f71069455a05df004435ec10b14aeb6e72fdfce1f" [label=""];
  "sha256:de236da4a9b8c4e37711c30f71069455a05df004435ec10b14aeb6e72fdfce1f" -> "sha256:77212fa127e96edc8f1c470c35b4ad37a90a8e299d071304b73fb9ca776184d2" [label=""];
  "sha256:77212fa127e96edc8f1c470c35b4ad37a90a8e299d071304b73fb9ca776184d2" -> "sha256:32d638ca88a3afa839cde7d1258d11a14773263204610f6a6e2486731aa2630d" [label=""];
  "sha256:32d638ca88a3afa839cde7d1258d11a14773263204610f6a6e2486731aa2630d" -> "sha256:6949228eef105104118c104da3edcb2bcc70cb483ed19820aa7753b1beb60b92" [label=""];
  "sha256:6949228eef105104118c104da3edcb2bcc70cb483ed19820aa7753b1beb60b92" -> "sha256:6201f86a1a5d84c57adf12e2ded2c5181d185d320e789d8034e87b6343a2a393" [label=""];
}

