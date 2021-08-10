[app/sources/168271758.Dockerfile]
digraph {
  "sha256:2fc893a965a1889294ee9c7fcd3af04e80a51e1a82efa2146cb2f4742391c7a7" [label="docker-image://docker.io/library/rhel7:latest" shape="ellipse"];
  "sha256:a23e865e4266711cbc9035f2255f79a12a39df1f0adce4c5ad5512d2a11dbdf1" [label="/bin/sh -c yum install -y --setopt=tsflags=nodocs yum-utils &&     yum-config-manager --enable rhel-server-rhscl-7-rpms &&     yum-config-manager --enable rhel-7-server-optional-rpms &&     yum clean all" shape="box"];
  "sha256:479dabbf93a061fa9130dc88dd56b83f8768efdc0f65b956305d1b2d95882dbd" [label="/bin/sh -c yum install -y --setopt=tsflags=nodocs devtoolset-3-elfutils && yum clean all" shape="box"];
  "sha256:5a4b3875830b58703791df12b4f01c558dbf4104f1f679d3cc129a6b89c580ec" [label="local://context" shape="ellipse"];
  "sha256:0e80cd1483c9fbb816d578ad388968fb0b4883520a5cdcc8138df4a1df771b63" [label="copy{src=/enabledevtoolset-3.sh, dest=/usr/share/cont-layer/common/env/enabledevtoolset-3.sh}" shape="note"];
  "sha256:bc21d66a75b601f183152fd7331ad5b7ad59e487dad45b580776d0b14f31dbe1" [label="copy{src=/usr, dest=/usr}" shape="note"];
  "sha256:08c59c6698578d45d9b4427c9755d8ab277e38ee8be52b1f623b07cd110c218c" [label="copy{src=/etc, dest=/etc}" shape="note"];
  "sha256:f790c1230fa7b34f9eaf5cda88c30c4c7ae9bdc347211e7553487e246932fa9b" [label="copy{src=/root, dest=/root}" shape="note"];
  "sha256:ee7edc437b54cdd428fc50568bac1d4ce49f801f3c8bd6f35c0fdfc189694e2d" [label="/bin/sh -c groupadd -r default -f -g 1001 &&         useradd -u 1001 -r -g default -d ${HOME} -s /sbin/nologin                         -c \"Default Application User\" default" shape="box"];
  "sha256:50de11b93ee60845572bc036d280146c0950dea5eca1e0b6dbd79f4b7d8d647c" [label="sha256:50de11b93ee60845572bc036d280146c0950dea5eca1e0b6dbd79f4b7d8d647c" shape="plaintext"];
  "sha256:2fc893a965a1889294ee9c7fcd3af04e80a51e1a82efa2146cb2f4742391c7a7" -> "sha256:a23e865e4266711cbc9035f2255f79a12a39df1f0adce4c5ad5512d2a11dbdf1" [label=""];
  "sha256:a23e865e4266711cbc9035f2255f79a12a39df1f0adce4c5ad5512d2a11dbdf1" -> "sha256:479dabbf93a061fa9130dc88dd56b83f8768efdc0f65b956305d1b2d95882dbd" [label=""];
  "sha256:479dabbf93a061fa9130dc88dd56b83f8768efdc0f65b956305d1b2d95882dbd" -> "sha256:0e80cd1483c9fbb816d578ad388968fb0b4883520a5cdcc8138df4a1df771b63" [label=""];
  "sha256:5a4b3875830b58703791df12b4f01c558dbf4104f1f679d3cc129a6b89c580ec" -> "sha256:0e80cd1483c9fbb816d578ad388968fb0b4883520a5cdcc8138df4a1df771b63" [label=""];
  "sha256:0e80cd1483c9fbb816d578ad388968fb0b4883520a5cdcc8138df4a1df771b63" -> "sha256:bc21d66a75b601f183152fd7331ad5b7ad59e487dad45b580776d0b14f31dbe1" [label=""];
  "sha256:5a4b3875830b58703791df12b4f01c558dbf4104f1f679d3cc129a6b89c580ec" -> "sha256:bc21d66a75b601f183152fd7331ad5b7ad59e487dad45b580776d0b14f31dbe1" [label=""];
  "sha256:bc21d66a75b601f183152fd7331ad5b7ad59e487dad45b580776d0b14f31dbe1" -> "sha256:08c59c6698578d45d9b4427c9755d8ab277e38ee8be52b1f623b07cd110c218c" [label=""];
  "sha256:5a4b3875830b58703791df12b4f01c558dbf4104f1f679d3cc129a6b89c580ec" -> "sha256:08c59c6698578d45d9b4427c9755d8ab277e38ee8be52b1f623b07cd110c218c" [label=""];
  "sha256:08c59c6698578d45d9b4427c9755d8ab277e38ee8be52b1f623b07cd110c218c" -> "sha256:f790c1230fa7b34f9eaf5cda88c30c4c7ae9bdc347211e7553487e246932fa9b" [label=""];
  "sha256:5a4b3875830b58703791df12b4f01c558dbf4104f1f679d3cc129a6b89c580ec" -> "sha256:f790c1230fa7b34f9eaf5cda88c30c4c7ae9bdc347211e7553487e246932fa9b" [label=""];
  "sha256:f790c1230fa7b34f9eaf5cda88c30c4c7ae9bdc347211e7553487e246932fa9b" -> "sha256:ee7edc437b54cdd428fc50568bac1d4ce49f801f3c8bd6f35c0fdfc189694e2d" [label=""];
  "sha256:ee7edc437b54cdd428fc50568bac1d4ce49f801f3c8bd6f35c0fdfc189694e2d" -> "sha256:50de11b93ee60845572bc036d280146c0950dea5eca1e0b6dbd79f4b7d8d647c" [label=""];
}

