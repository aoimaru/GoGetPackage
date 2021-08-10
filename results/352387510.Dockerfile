[app/sources/352387510.Dockerfile]
digraph {
  "sha256:3f503d6190f7f15aefdf8663ed80f92bbdc553db0a5cb98cfa44e1abdd0e1520" [label="docker-image://docker.io/s390x/ubuntu:16.04" shape="ellipse"];
  "sha256:c1e2042a367a7336041140fcbb55968f1e6d6a278604e7b98390797655d6cc4b" [label="/bin/sh -c apt-get update && apt-get install -y     git     findutils     gcc     python-setuptools     python-dev     build-essential     libssl-dev     libffi-dev  && easy_install pip  && pip install pbr virtualenv cryptography  && git clone git://github.com/openstack/python-ceilometerclient.git  && cd python-ceilometerclient  && git checkout 2.9.0  && pip install -r requirements.txt  && python setup.py install  && rm -rf $SOURCE_DIR  && apt-get remove -y     python-dev     python-setuptools  && apt-get autoremove -y && apt autoremove -y  && apt-get clean && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:6e62ce6d6fdd3af69116fb428f4bcc69ef395b7d885aa7593c40b2e9a8270664" [label="sha256:6e62ce6d6fdd3af69116fb428f4bcc69ef395b7d885aa7593c40b2e9a8270664" shape="plaintext"];
  "sha256:3f503d6190f7f15aefdf8663ed80f92bbdc553db0a5cb98cfa44e1abdd0e1520" -> "sha256:c1e2042a367a7336041140fcbb55968f1e6d6a278604e7b98390797655d6cc4b" [label=""];
  "sha256:c1e2042a367a7336041140fcbb55968f1e6d6a278604e7b98390797655d6cc4b" -> "sha256:6e62ce6d6fdd3af69116fb428f4bcc69ef395b7d885aa7593c40b2e9a8270664" [label=""];
}

