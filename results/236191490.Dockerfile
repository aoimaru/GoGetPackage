[app/sources/236191490.Dockerfile]
digraph {
  "sha256:440438d4beef4599891f4749744cd488137d7f644526ae73919261d6137d9abf" [label="local://context" shape="ellipse"];
  "sha256:b7a2fcf3d384900ae10ece741db79fd11811b8ed2ce5270bb981c50c2ea2670b" [label="docker-image://docker.io/lambci/lambda:build@sha256:0e340e47485de84b58328d6ff3b934b4f992c6517b4b2fd0aa3cafa1a58710f6" shape="ellipse"];
  "sha256:b83baea5b9a2f27af2168a96648e18a9fd98aea4a2f50377da412e35cd30c56c" [label="copy{src=/yum.conf, dest=/etc/yum.conf}" shape="note"];
  "sha256:e1237c861dabd4da3aa378612eec4a8e9a016887f7f6a315f3ec52c10bcb1093" [label="/bin/sh -c yum clean all &&     yum -y install python27-devel python27-virtualenv vim postgresql postgresql-devel mysql mysql-devel gcc lapack-devel blas-devel libyaml-devel &&     yum --enablerepo=epel -y install hdf5-devel &&     pip install -U pip &&     pip install -U zappa mysql-python" shape="box"];
  "sha256:d06a5e76efe21c751febb8fe69a3505e92b1f6cffe8b119d061a9040919b0c07" [label="mkdir{path=/var/task}" shape="note"];
  "sha256:421cda839d632082c97cea1e146464731217dfc068d024a44cb0c6349548307e" [label="/bin/sh -c virtualenv /var/venv &&     source /var/venv/bin/activate &&     pip install -U pip &&     deactivate" shape="box"];
  "sha256:2674a4bfc1afbfe36be1f30013bf1e5096b34ac160ebda71b164e3ec3dc02390" [label="copy{src=/bashrc, dest=/root/.bashrc}" shape="note"];
  "sha256:387fa45d59a8bcc7ddcbd5a3a49c283ad0b8b1f017c33d857192358a9a9eaced" [label="sha256:387fa45d59a8bcc7ddcbd5a3a49c283ad0b8b1f017c33d857192358a9a9eaced" shape="plaintext"];
  "sha256:b7a2fcf3d384900ae10ece741db79fd11811b8ed2ce5270bb981c50c2ea2670b" -> "sha256:b83baea5b9a2f27af2168a96648e18a9fd98aea4a2f50377da412e35cd30c56c" [label=""];
  "sha256:440438d4beef4599891f4749744cd488137d7f644526ae73919261d6137d9abf" -> "sha256:b83baea5b9a2f27af2168a96648e18a9fd98aea4a2f50377da412e35cd30c56c" [label=""];
  "sha256:b83baea5b9a2f27af2168a96648e18a9fd98aea4a2f50377da412e35cd30c56c" -> "sha256:e1237c861dabd4da3aa378612eec4a8e9a016887f7f6a315f3ec52c10bcb1093" [label=""];
  "sha256:e1237c861dabd4da3aa378612eec4a8e9a016887f7f6a315f3ec52c10bcb1093" -> "sha256:d06a5e76efe21c751febb8fe69a3505e92b1f6cffe8b119d061a9040919b0c07" [label=""];
  "sha256:d06a5e76efe21c751febb8fe69a3505e92b1f6cffe8b119d061a9040919b0c07" -> "sha256:421cda839d632082c97cea1e146464731217dfc068d024a44cb0c6349548307e" [label=""];
  "sha256:421cda839d632082c97cea1e146464731217dfc068d024a44cb0c6349548307e" -> "sha256:2674a4bfc1afbfe36be1f30013bf1e5096b34ac160ebda71b164e3ec3dc02390" [label=""];
  "sha256:440438d4beef4599891f4749744cd488137d7f644526ae73919261d6137d9abf" -> "sha256:2674a4bfc1afbfe36be1f30013bf1e5096b34ac160ebda71b164e3ec3dc02390" [label=""];
  "sha256:2674a4bfc1afbfe36be1f30013bf1e5096b34ac160ebda71b164e3ec3dc02390" -> "sha256:387fa45d59a8bcc7ddcbd5a3a49c283ad0b8b1f017c33d857192358a9a9eaced" [label=""];
}

