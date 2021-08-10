[app/sources/128834086.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:65382eafc8d5de411fecbe1b865d6ce5b7261de03bee7e1dbd454e76c59fa82a" [label="/bin/bash -c apt-get update     && apt-get install -y     gdebi     git     libenchant1c2a     libkrb5-dev     libldap2-dev     libmysqlclient-dev     librrd-dev     librrd4     libsasl2-dev     libssl-dev     make     nullmailer     python-dev     python-pip     rrdtool     strace     vim     && curl -sL https://deb.nodesource.com/setup_12.x | bash -     && apt-get install -y nodejs     && apt-get install -y     $PACKAGES     && pip install --upgrade pip     && pip install --upgrade setuptools     && pip install git+https://github.com/svenpanne/pipenv.git@41f30d7ac848fdfe3eb548ddd19b731bfa8c331a     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:792081be4068d419b0b511f4674d48ce431c945d7284bd9efb71e364ee9c1f06" [label="/bin/bash -c pip uninstall -y pipenv     && pip install git+https://github.com/svenpanne/pipenv.git@41f30d7ac848fdfe3eb548ddd19b731bfa8c331a" shape="box"];
  "sha256:6313490df7b4e2d50a2a9ee8bac7308dd1fd5c0f80c03d9510b2d6a162dfcb8b" [label="/bin/bash -c rm -rf /bin/systemctl     && ln -s /bin/true /bin/systemctl" shape="box"];
  "sha256:33bc76314641ce6dec3a0485dc7deed5318715637425eac45b6cc7f665aa4bbd" [label="sha256:33bc76314641ce6dec3a0485dc7deed5318715637425eac45b6cc7f665aa4bbd" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:65382eafc8d5de411fecbe1b865d6ce5b7261de03bee7e1dbd454e76c59fa82a" [label=""];
  "sha256:65382eafc8d5de411fecbe1b865d6ce5b7261de03bee7e1dbd454e76c59fa82a" -> "sha256:792081be4068d419b0b511f4674d48ce431c945d7284bd9efb71e364ee9c1f06" [label=""];
  "sha256:792081be4068d419b0b511f4674d48ce431c945d7284bd9efb71e364ee9c1f06" -> "sha256:6313490df7b4e2d50a2a9ee8bac7308dd1fd5c0f80c03d9510b2d6a162dfcb8b" [label=""];
  "sha256:6313490df7b4e2d50a2a9ee8bac7308dd1fd5c0f80c03d9510b2d6a162dfcb8b" -> "sha256:33bc76314641ce6dec3a0485dc7deed5318715637425eac45b6cc7f665aa4bbd" [label=""];
}

