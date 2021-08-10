[app/sources/482189895.Dockerfile]
digraph {
  "sha256:c4887a24c05e66b3154ab6ffd4c339bcaebfbbd749190fe265725f4658f3de7d" [label="docker-image://docker.io/library/ubuntu:17.04" shape="ellipse"];
  "sha256:5a116fc9a6d5f2e572956371de991655ea31c37f757abd83204d85db69abaeef" [label="/bin/sh -c apt-get update && apt-get install -y     python-all     git bzip2 sudo wget zip" shape="box"];
  "sha256:6e86dc50c0222043bc582184a6d196f3f86ee68130bea9095523651d068e7782" [label="/bin/sh -c apt-get install -y libjpeg8 libjpeg62-dev libfreetype6 libfreetype6-dev python-pillow build-essential" shape="box"];
  "sha256:6b44595848aeb95e8838d224082f9de00311ccedb6c8924e661a616b1999b997" [label="/bin/sh -c mkdir -p ${CK_ROOT} ${CK_REPOS} ${CK_TOOLS}" shape="box"];
  "sha256:81cd0c67c2567e00d6bee8bf5f4f8a6e6b6a63cace67c35ee7253063a6d582fc" [label="/bin/sh -c git clone https://github.com/ctuning/ck.git ${CK_ROOT}" shape="box"];
  "sha256:160627c565ae5590c707dd4f653e85b5b78dd9266606b8dbf691c553e1c4fb8e" [label="/bin/sh -c cd ${CK_ROOT} && python setup.py install && python -c \"import ck.kernel as ck\"" shape="box"];
  "sha256:760c8df319e874a9a51ccabf0e876b2e90b05e5865f9ba39ff88c397102aa5ef" [label="/bin/sh -c ck pull repo:ck-web" shape="box"];
  "sha256:55e22b6c07cad74f9aa9e90e9efa5845042afe7bd2e96ef58c3c5b85ef31605e" [label="sha256:55e22b6c07cad74f9aa9e90e9efa5845042afe7bd2e96ef58c3c5b85ef31605e" shape="plaintext"];
  "sha256:c4887a24c05e66b3154ab6ffd4c339bcaebfbbd749190fe265725f4658f3de7d" -> "sha256:5a116fc9a6d5f2e572956371de991655ea31c37f757abd83204d85db69abaeef" [label=""];
  "sha256:5a116fc9a6d5f2e572956371de991655ea31c37f757abd83204d85db69abaeef" -> "sha256:6e86dc50c0222043bc582184a6d196f3f86ee68130bea9095523651d068e7782" [label=""];
  "sha256:6e86dc50c0222043bc582184a6d196f3f86ee68130bea9095523651d068e7782" -> "sha256:6b44595848aeb95e8838d224082f9de00311ccedb6c8924e661a616b1999b997" [label=""];
  "sha256:6b44595848aeb95e8838d224082f9de00311ccedb6c8924e661a616b1999b997" -> "sha256:81cd0c67c2567e00d6bee8bf5f4f8a6e6b6a63cace67c35ee7253063a6d582fc" [label=""];
  "sha256:81cd0c67c2567e00d6bee8bf5f4f8a6e6b6a63cace67c35ee7253063a6d582fc" -> "sha256:160627c565ae5590c707dd4f653e85b5b78dd9266606b8dbf691c553e1c4fb8e" [label=""];
  "sha256:160627c565ae5590c707dd4f653e85b5b78dd9266606b8dbf691c553e1c4fb8e" -> "sha256:760c8df319e874a9a51ccabf0e876b2e90b05e5865f9ba39ff88c397102aa5ef" [label=""];
  "sha256:760c8df319e874a9a51ccabf0e876b2e90b05e5865f9ba39ff88c397102aa5ef" -> "sha256:55e22b6c07cad74f9aa9e90e9efa5845042afe7bd2e96ef58c3c5b85ef31605e" [label=""];
}

