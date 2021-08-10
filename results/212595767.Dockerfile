[app/sources/212595767.Dockerfile]
digraph {
  "sha256:7c9f2d8952bfd78fc6b67343a80735183ebae5f5821fc69800becba62b066875" [label="docker-image://docker.io/library/centos:latest" shape="ellipse"];
  "sha256:e8ef5741b99d517732fa91566254f5e40c2689bf1415709ed3eed3505a922019" [label="/bin/sh -c rpm -iUvh http://www.nic.funet.fi/pub/mirrors/fedora.redhat.com/pub/epel/7/x86_64/e/epel-release-7-9.noarch.rpm && yum -y update && yum -y install git ansible python-pip gcc python-devel libffi-devel openssl-devel libxml2-devel libxslt1-devel nodejs libjpeg8-devel zlib1g-devel && yum -y clean all" shape="box"];
  "sha256:a065f956cd05040530099b6213501cec894bd243d6e2e4704aedd492324ef454" [label="/bin/sh -c pip install --upgrade pip && pip install msrest --upgrade && pip install msrestazure --upgrade && pip install azure==2.0.0rc5" shape="box"];
  "sha256:a3b69ef9d5f6c4c91703932dec0e977f94f6d25317ab47f65d570fb577d0f5be" [label="/bin/sh -c npm install -g azure-cli" shape="box"];
  "sha256:2665649de3896ae1b6efac7d9aac477b00407e733f52830cbf064542013ae459" [label="/bin/sh -c mkdir -p /ansible-azure/group_vars && mkdir /exports" shape="box"];
  "sha256:ac297f1eb73d59c5c5c5f7e9721050c478eba01d1d20efabba9827e6964ca91a" [label="local://context" shape="ellipse"];
  "sha256:de5b089596cadb9710ff3162985a1f93f17f2ce4809be920ea292327e06a15fe" [label="copy{src=/install.sh, dest=/ansible-azure/install.sh}" shape="note"];
  "sha256:521e8d4ce2bc2011c4ac1758c0ca4410e8e679de0c52c9d2b6f45fa085a24c88" [label="/bin/sh -c chmod +x /ansible-azure/install.sh" shape="box"];
  "sha256:efa734b7eb00c2718348be3905e4728d7ac5c5993cb562587ab91678171864bc" [label="mkdir{path=/ansible-azure}" shape="note"];
  "sha256:73c9f22922c77ed13c32bbd7f323602ec2a3d0b2ddf68c4d36e6a1f2a6734acd" [label="sha256:73c9f22922c77ed13c32bbd7f323602ec2a3d0b2ddf68c4d36e6a1f2a6734acd" shape="plaintext"];
  "sha256:7c9f2d8952bfd78fc6b67343a80735183ebae5f5821fc69800becba62b066875" -> "sha256:e8ef5741b99d517732fa91566254f5e40c2689bf1415709ed3eed3505a922019" [label=""];
  "sha256:e8ef5741b99d517732fa91566254f5e40c2689bf1415709ed3eed3505a922019" -> "sha256:a065f956cd05040530099b6213501cec894bd243d6e2e4704aedd492324ef454" [label=""];
  "sha256:a065f956cd05040530099b6213501cec894bd243d6e2e4704aedd492324ef454" -> "sha256:a3b69ef9d5f6c4c91703932dec0e977f94f6d25317ab47f65d570fb577d0f5be" [label=""];
  "sha256:a3b69ef9d5f6c4c91703932dec0e977f94f6d25317ab47f65d570fb577d0f5be" -> "sha256:2665649de3896ae1b6efac7d9aac477b00407e733f52830cbf064542013ae459" [label=""];
  "sha256:2665649de3896ae1b6efac7d9aac477b00407e733f52830cbf064542013ae459" -> "sha256:de5b089596cadb9710ff3162985a1f93f17f2ce4809be920ea292327e06a15fe" [label=""];
  "sha256:ac297f1eb73d59c5c5c5f7e9721050c478eba01d1d20efabba9827e6964ca91a" -> "sha256:de5b089596cadb9710ff3162985a1f93f17f2ce4809be920ea292327e06a15fe" [label=""];
  "sha256:de5b089596cadb9710ff3162985a1f93f17f2ce4809be920ea292327e06a15fe" -> "sha256:521e8d4ce2bc2011c4ac1758c0ca4410e8e679de0c52c9d2b6f45fa085a24c88" [label=""];
  "sha256:521e8d4ce2bc2011c4ac1758c0ca4410e8e679de0c52c9d2b6f45fa085a24c88" -> "sha256:efa734b7eb00c2718348be3905e4728d7ac5c5993cb562587ab91678171864bc" [label=""];
  "sha256:efa734b7eb00c2718348be3905e4728d7ac5c5993cb562587ab91678171864bc" -> "sha256:73c9f22922c77ed13c32bbd7f323602ec2a3d0b2ddf68c4d36e6a1f2a6734acd" [label=""];
}

