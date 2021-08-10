[app/sources/264508962.Dockerfile]
digraph {
  "sha256:720f1520467443082382b0d567a388511b6b11981da71bd9f902f9642f5aa46a" [label="local://context" shape="ellipse"];
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" [label="docker-image://docker.io/library/alpine:3.7" shape="ellipse"];
  "sha256:299ab3af293d69ba0824deebbe6533c1458dab78ccdaee35f0400277bd5cc8f4" [label="/bin/sh -c apk add --no-cache bash patch build-base maven=3.5.2-r0 grep bc libffi-dev openssl-dev cyrus-sasl-dev python2-dev py2-nose py2-pip linux-headers ca-certificates wget &&      ln -s /usr/bin/nosetests-2.7 /usr/bin/nosetests &&      pip install pylint==1.6.4 mock==2.0.0" shape="box"];
  "sha256:9bc458c59e54dd4566a9e4741e1a79a6745b0d5f3434c41e290f590a2efe4489" [label="/bin/sh -c wget -qO- https://github.com/pndaproject/platform-deployment-manager/archive/$VERSION.tar.gz | tar -xvz &&     mv platform-deployment-manager-$VERSION /src" shape="box"];
  "sha256:4621ba81dca861f54a129d97602392d6464ecb462cb240b578260e5fb48b4ed1" [label="/bin/sh -c find /src -name requirements.txt -exec pip install -r '{}' \\;" shape="box"];
  "sha256:148f57481b5bdda2d561fc3fd3281cb3365fce4cbddf7b87fff741a35fac81a7" [label="copy{src=/opentsdb_with_cli.diff, dest=/src/},copy{src=/add_env_config.diff, dest=/src/}" shape="note"];
  "sha256:2331bb19b9b1c81c100c17fccde25dc27c71d1a16e73a1daec6d0d9c5fc9a514" [label="/bin/sh -c sed -i 's/Apache Maven 3.0.5/Apache Maven 3.5/g' /src/build.sh" shape="box"];
  "sha256:aa82d76cb33b750e1547225c61bfccff008207dffae561da5e69ea63094f81d6" [label="/bin/sh -c cd /src && patch -p1 < add_env_config.diff &&     patch -p1 < opentsdb_with_cli.diff &&     ./build.sh $VERSION" shape="box"];
  "sha256:5a7ae1152f6de908adffc15f5f331185afb000fb4652d07e00feeb2085891b8a" [label="docker-image://docker.io/library/openjdk:8u171-jdk-alpine3.8" shape="ellipse"];
  "sha256:4cf3e43f376dce72fd7adbc01dbe33eecfc583bcf41f27861b8a579686efd692" [label="copy{src=/src/pnda-build/deployment-manager-.tar.gz, dest=/},copy{src=/src/api/src/main/resources/requirements.txt, dest=/}" shape="note"];
  "sha256:311e695fcf8053395a7bf3fab847c6413a772c2a2f73c10ff36b64d355098d13" [label="copy{src=/usr, dest=/},copy{src=/opt, dest=/},copy{src=/entrypoint.sh, dest=/},copy{src=/dm-config.json.tpl, dest=/}" shape="note"];
  "sha256:63666300f4fad5b0561efb33db8600bfff7ce5fef595c2570d678e950350dc92" [label="/bin/sh -c apk add --no-cache sudo tar bash py2-pip build-base python2-dev libffi-dev openssl-dev cyrus-sasl-dev linux-headers openssh-client && pip install j2cli && pip install -r /requirements.txt" shape="box"];
  "sha256:ff080995cdcd49d5aa058b8c562e503bf79509f4d478c24664a16a17009e23d1" [label="/bin/sh -c tar -xzf /deployment-manager-$VERSION.tar.gz && mv /deployment-manager-$VERSION /deployment-manager" shape="box"];
  "sha256:6be462e2b1d615b98a8d155f96c662ccc7edbf66a0dcba46bfb8ba06971d826a" [label="/bin/sh -c mkdir -p /opt &&     wget -O- https://archive.apache.org/dist/spark/spark-2.3.0/spark-2.3.0-bin-hadoop2.7.tgz | tar -xvz -C /tmp &&     mv /tmp/spark-2.3.0-bin-hadoop2.7 /opt/spark" shape="box"];
  "sha256:38808d6a68652d147551366e6840bc6a8a43ff5e06e91621b9018efbf2bdf3fe" [label="sha256:38808d6a68652d147551366e6840bc6a8a43ff5e06e91621b9018efbf2bdf3fe" shape="plaintext"];
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" -> "sha256:299ab3af293d69ba0824deebbe6533c1458dab78ccdaee35f0400277bd5cc8f4" [label=""];
  "sha256:299ab3af293d69ba0824deebbe6533c1458dab78ccdaee35f0400277bd5cc8f4" -> "sha256:9bc458c59e54dd4566a9e4741e1a79a6745b0d5f3434c41e290f590a2efe4489" [label=""];
  "sha256:9bc458c59e54dd4566a9e4741e1a79a6745b0d5f3434c41e290f590a2efe4489" -> "sha256:4621ba81dca861f54a129d97602392d6464ecb462cb240b578260e5fb48b4ed1" [label=""];
  "sha256:4621ba81dca861f54a129d97602392d6464ecb462cb240b578260e5fb48b4ed1" -> "sha256:148f57481b5bdda2d561fc3fd3281cb3365fce4cbddf7b87fff741a35fac81a7" [label=""];
  "sha256:720f1520467443082382b0d567a388511b6b11981da71bd9f902f9642f5aa46a" -> "sha256:148f57481b5bdda2d561fc3fd3281cb3365fce4cbddf7b87fff741a35fac81a7" [label=""];
  "sha256:148f57481b5bdda2d561fc3fd3281cb3365fce4cbddf7b87fff741a35fac81a7" -> "sha256:2331bb19b9b1c81c100c17fccde25dc27c71d1a16e73a1daec6d0d9c5fc9a514" [label=""];
  "sha256:2331bb19b9b1c81c100c17fccde25dc27c71d1a16e73a1daec6d0d9c5fc9a514" -> "sha256:aa82d76cb33b750e1547225c61bfccff008207dffae561da5e69ea63094f81d6" [label=""];
  "sha256:5a7ae1152f6de908adffc15f5f331185afb000fb4652d07e00feeb2085891b8a" -> "sha256:4cf3e43f376dce72fd7adbc01dbe33eecfc583bcf41f27861b8a579686efd692" [label=""];
  "sha256:aa82d76cb33b750e1547225c61bfccff008207dffae561da5e69ea63094f81d6" -> "sha256:4cf3e43f376dce72fd7adbc01dbe33eecfc583bcf41f27861b8a579686efd692" [label=""];
  "sha256:4cf3e43f376dce72fd7adbc01dbe33eecfc583bcf41f27861b8a579686efd692" -> "sha256:311e695fcf8053395a7bf3fab847c6413a772c2a2f73c10ff36b64d355098d13" [label=""];
  "sha256:720f1520467443082382b0d567a388511b6b11981da71bd9f902f9642f5aa46a" -> "sha256:311e695fcf8053395a7bf3fab847c6413a772c2a2f73c10ff36b64d355098d13" [label=""];
  "sha256:311e695fcf8053395a7bf3fab847c6413a772c2a2f73c10ff36b64d355098d13" -> "sha256:63666300f4fad5b0561efb33db8600bfff7ce5fef595c2570d678e950350dc92" [label=""];
  "sha256:63666300f4fad5b0561efb33db8600bfff7ce5fef595c2570d678e950350dc92" -> "sha256:ff080995cdcd49d5aa058b8c562e503bf79509f4d478c24664a16a17009e23d1" [label=""];
  "sha256:ff080995cdcd49d5aa058b8c562e503bf79509f4d478c24664a16a17009e23d1" -> "sha256:6be462e2b1d615b98a8d155f96c662ccc7edbf66a0dcba46bfb8ba06971d826a" [label=""];
  "sha256:6be462e2b1d615b98a8d155f96c662ccc7edbf66a0dcba46bfb8ba06971d826a" -> "sha256:38808d6a68652d147551366e6840bc6a8a43ff5e06e91621b9018efbf2bdf3fe" [label=""];
}

