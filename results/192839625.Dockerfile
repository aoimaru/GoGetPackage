[app/sources/192839625.Dockerfile]
digraph {
  "sha256:bf5afaa7b57110ec404017b7d3c06911ecf89574ac979586055a377dbf27b401" [label="docker-image://docker.io/datadoglt/base:latest" shape="ellipse"];
  "sha256:5297f55026fab97084db811af9b55e229fb03ade1f615557010257531d7f58f6" [label="local://context" shape="ellipse"];
  "sha256:31401c8ae6e1df7c17f0227922e6ce39b7e251173b2f2f93816c4ad5e2c0f010" [label="copy{src=/nginx.repo, dest=/etc/yum.repos.d/nginx.repo}" shape="note"];
  "sha256:cd164eb86934ebdd71d1c1066c1aacbd05f36ca19ce9bdf61fe8a41a4b8f0778" [label="/bin/sh -c yum -y install nginx --enablerepo=nginx &&     yum clean all" shape="box"];
  "sha256:e6df5dc8415d0e296ef45f6494cf6b115d3a46cd1c46af29e478504348674041" [label="/bin/sh -c curl -sLo /usr/local/bin/ep https://github.com/kreuzwerker/envplate/releases/download/v0.0.8/ep-linux &&     chmod +x /usr/local/bin/ep" shape="box"];
  "sha256:5b8e7537fac66f38b12a224c798f431d93a82a7e1e55b5b62eb64ee64e1c2794" [label="/bin/sh -c mkdir /etc/nginx/site-templates && mkdir /etc/nginx/sites-enabled" shape="box"];
  "sha256:83b4e9f042ee8d8076a92a9cacbc33c3b541b2db08934c95cfa313ab88f52fd1" [label="copy{src=/nginx.conf, dest=/etc/nginx/nginx.conf}" shape="note"];
  "sha256:d031d3c01d6bef085f397fd313e92513f599b959fcfa31c41325bc6876551b44" [label="copy{src=/entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:37f8c8f7e80059132f26130960d017030106f66e665341bcc055c0ce7643e82a" [label="sha256:37f8c8f7e80059132f26130960d017030106f66e665341bcc055c0ce7643e82a" shape="plaintext"];
  "sha256:bf5afaa7b57110ec404017b7d3c06911ecf89574ac979586055a377dbf27b401" -> "sha256:31401c8ae6e1df7c17f0227922e6ce39b7e251173b2f2f93816c4ad5e2c0f010" [label=""];
  "sha256:5297f55026fab97084db811af9b55e229fb03ade1f615557010257531d7f58f6" -> "sha256:31401c8ae6e1df7c17f0227922e6ce39b7e251173b2f2f93816c4ad5e2c0f010" [label=""];
  "sha256:31401c8ae6e1df7c17f0227922e6ce39b7e251173b2f2f93816c4ad5e2c0f010" -> "sha256:cd164eb86934ebdd71d1c1066c1aacbd05f36ca19ce9bdf61fe8a41a4b8f0778" [label=""];
  "sha256:cd164eb86934ebdd71d1c1066c1aacbd05f36ca19ce9bdf61fe8a41a4b8f0778" -> "sha256:e6df5dc8415d0e296ef45f6494cf6b115d3a46cd1c46af29e478504348674041" [label=""];
  "sha256:e6df5dc8415d0e296ef45f6494cf6b115d3a46cd1c46af29e478504348674041" -> "sha256:5b8e7537fac66f38b12a224c798f431d93a82a7e1e55b5b62eb64ee64e1c2794" [label=""];
  "sha256:5b8e7537fac66f38b12a224c798f431d93a82a7e1e55b5b62eb64ee64e1c2794" -> "sha256:83b4e9f042ee8d8076a92a9cacbc33c3b541b2db08934c95cfa313ab88f52fd1" [label=""];
  "sha256:5297f55026fab97084db811af9b55e229fb03ade1f615557010257531d7f58f6" -> "sha256:83b4e9f042ee8d8076a92a9cacbc33c3b541b2db08934c95cfa313ab88f52fd1" [label=""];
  "sha256:83b4e9f042ee8d8076a92a9cacbc33c3b541b2db08934c95cfa313ab88f52fd1" -> "sha256:d031d3c01d6bef085f397fd313e92513f599b959fcfa31c41325bc6876551b44" [label=""];
  "sha256:5297f55026fab97084db811af9b55e229fb03ade1f615557010257531d7f58f6" -> "sha256:d031d3c01d6bef085f397fd313e92513f599b959fcfa31c41325bc6876551b44" [label=""];
  "sha256:d031d3c01d6bef085f397fd313e92513f599b959fcfa31c41325bc6876551b44" -> "sha256:37f8c8f7e80059132f26130960d017030106f66e665341bcc055c0ce7643e82a" [label=""];
}

