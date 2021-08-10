[app/sources/356655275.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:4e9a51aa1bc5ca84f45a9493b877f5f54190bebaf45d1d60b1f99a42891fb2a6" [label="/bin/sh -c apt-get update &&     apt-get install -y openssh-server &&     apt-get install -y sudo" shape="box"];
  "sha256:0594eba7318cc0bbf084fc8f94bc88b5f5b257a2c681782be45911f3aad61acf" [label="/bin/sh -c mkdir /var/run/sshd" shape="box"];
  "sha256:f9080db2e941ff7767ec16fb47235c476b7609e294a155b81027c9a7505773d5" [label="/bin/sh -c adduser --disabled-password --gecos \"\" $USER" shape="box"];
  "sha256:af5295b0baa865ff9eb573a0e11fd7b4505527da634fe969b849fa89cc8ae172" [label="/bin/sh -c adduser $USER sudo" shape="box"];
  "sha256:14dfefa8a24bf09715440e4bf9d3f9200d5350bed0093fa61d8b36005731fa3c" [label="/bin/sh -c adduser $USER www-data" shape="box"];
  "sha256:9da9e400cea8cb1b3a5ffaf268c7321b4d05d7c1561adfcd22fa50e0503e9192" [label="local://context" shape="ellipse"];
  "sha256:9695d2487c96f2e7d81ca1d050b271137ada063ac1c375ca23fde2fb2276f94d" [label="copy{src=/authorized_keys, dest=/home/ubuntu/.ssh/authorized_keys}" shape="note"];
  "sha256:96c224650af55ecaf8ec319b3499508ded77203aadded09928d76b40074924b2" [label="/bin/sh -c chown -R $USER:$USER /home/$USER/.ssh" shape="box"];
  "sha256:dea00c9e0fb411ec8bf08a2dca991ea69b7f7671996372aaa1dd7107aee4f693" [label="/bin/sh -c chmod -R 700 /home/$USER/.ssh" shape="box"];
  "sha256:c4bbf7dccead4adba1fc3ab115e874b65e493ecd429584ecbdba7560f65a6307" [label="/bin/sh -c sed -i.bkp -e       's/%sudo\\s\\+ALL=(ALL\\(:ALL\\)\\?)\\s\\+ALL/%sudo ALL=NOPASSWD:ALL/g'       /etc/sudoers" shape="box"];
  "sha256:4a1004a6e8052e0704a0d0d13dfdf2d54b188964fdfa1636127826eb7028c5fd" [label="sha256:4a1004a6e8052e0704a0d0d13dfdf2d54b188964fdfa1636127826eb7028c5fd" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:4e9a51aa1bc5ca84f45a9493b877f5f54190bebaf45d1d60b1f99a42891fb2a6" [label=""];
  "sha256:4e9a51aa1bc5ca84f45a9493b877f5f54190bebaf45d1d60b1f99a42891fb2a6" -> "sha256:0594eba7318cc0bbf084fc8f94bc88b5f5b257a2c681782be45911f3aad61acf" [label=""];
  "sha256:0594eba7318cc0bbf084fc8f94bc88b5f5b257a2c681782be45911f3aad61acf" -> "sha256:f9080db2e941ff7767ec16fb47235c476b7609e294a155b81027c9a7505773d5" [label=""];
  "sha256:f9080db2e941ff7767ec16fb47235c476b7609e294a155b81027c9a7505773d5" -> "sha256:af5295b0baa865ff9eb573a0e11fd7b4505527da634fe969b849fa89cc8ae172" [label=""];
  "sha256:af5295b0baa865ff9eb573a0e11fd7b4505527da634fe969b849fa89cc8ae172" -> "sha256:14dfefa8a24bf09715440e4bf9d3f9200d5350bed0093fa61d8b36005731fa3c" [label=""];
  "sha256:14dfefa8a24bf09715440e4bf9d3f9200d5350bed0093fa61d8b36005731fa3c" -> "sha256:9695d2487c96f2e7d81ca1d050b271137ada063ac1c375ca23fde2fb2276f94d" [label=""];
  "sha256:9da9e400cea8cb1b3a5ffaf268c7321b4d05d7c1561adfcd22fa50e0503e9192" -> "sha256:9695d2487c96f2e7d81ca1d050b271137ada063ac1c375ca23fde2fb2276f94d" [label=""];
  "sha256:9695d2487c96f2e7d81ca1d050b271137ada063ac1c375ca23fde2fb2276f94d" -> "sha256:96c224650af55ecaf8ec319b3499508ded77203aadded09928d76b40074924b2" [label=""];
  "sha256:96c224650af55ecaf8ec319b3499508ded77203aadded09928d76b40074924b2" -> "sha256:dea00c9e0fb411ec8bf08a2dca991ea69b7f7671996372aaa1dd7107aee4f693" [label=""];
  "sha256:dea00c9e0fb411ec8bf08a2dca991ea69b7f7671996372aaa1dd7107aee4f693" -> "sha256:c4bbf7dccead4adba1fc3ab115e874b65e493ecd429584ecbdba7560f65a6307" [label=""];
  "sha256:c4bbf7dccead4adba1fc3ab115e874b65e493ecd429584ecbdba7560f65a6307" -> "sha256:4a1004a6e8052e0704a0d0d13dfdf2d54b188964fdfa1636127826eb7028c5fd" [label=""];
}

