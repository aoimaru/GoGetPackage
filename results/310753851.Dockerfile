[app/sources/310753851.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:d0a2bceb1aa32766ee7b1511d9412ab228955b1f750d1c339ba24c431c3536a9" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends         build-essential         curl         git         libcurl3-dev         libfreetype6-dev         libpng12-dev         libzmq3-dev         pkg-config         rsync         software-properties-common         unzip         zip         zlib1g-dev         openjdk-8-jdk         openjdk-8-jre-headless         python3         python3-numpy         python3-dev         python3-pip         python3-wheel         python3-setuptools         &&     apt-get clean &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:c5038ce9e052762d89f98bd393a68054c018b7be3292193b0c27ec2d4c3a58f5" [label="/bin/sh -c echo \"startup --batch\" >>/etc/bazel.bazelrc" shape="box"];
  "sha256:e9405b1009e93d63fe1e417f556ebf5725817a75c32df13526a309b73c326814" [label="/bin/sh -c echo \"build --spawn_strategy=standalone --genrule_strategy=standalone\"     >>/etc/bazel.bazelrc" shape="box"];
  "sha256:300790135559ed668597d9373cc7cc88c788d24a8e47bc85d063b81e7e0c05d9" [label="/bin/sh -c mkdir /bazel &&     cd /bazel &&     curl -H \"User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36\" -fSsL -O https://github.com/bazelbuild/bazel/releases/download/$BAZEL_VERSION/bazel-$BAZEL_VERSION-installer-linux-x86_64.sh &&     curl -H \"User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36\" -fSsL -o /bazel/LICENSE.txt https://raw.githubusercontent.com/bazelbuild/bazel/master/LICENSE &&     chmod +x bazel-*.sh &&     ./bazel-$BAZEL_VERSION-installer-linux-x86_64.sh &&     cd / &&     rm -f /bazel/bazel-$BAZEL_VERSION-installer-linux-x86_64.sh" shape="box"];
  "sha256:f4061e7eb8f3da11a397c6cc6cd5846bb4ec73b00e77d7f6a3131984f4f76206" [label="/bin/sh -c git clone https://github.com/tensorflow/tensorflow.git &&     cd tensorflow &&     git checkout r1.11" shape="box"];
  "sha256:974500f8820c32a225085a230524517143c23be47f36fde86593806389aec6ff" [label="mkdir{path=/tensorflow}" shape="note"];
  "sha256:7012f5eef532735a65ed6aabb0e65454483888137cb54b812ac35c47a330e875" [label="/bin/sh -c pip3 install --upgrade pip setuptools" shape="box"];
  "sha256:b7ffb98414f8fd3e9ec13c6b54dcdcd198b9babea1905fe7d96fcb74474b3e5f" [label="/bin/sh -c pip3 install keras" shape="box"];
  "sha256:50cf1132587fd387f067e8e67ee3f6cb3ac26e3db32853cb20c4f8004c71493c" [label="/bin/sh -c ln -s /usr/bin/python3 /usr/bin/python  && tensorflow/tools/ci_build/builds/configured CPU     bazel build -c opt --copt=-march=\"haswell\"         tensorflow/tools/pip_package:build_pip_package --verbose_failures &&     bazel-bin/tensorflow/tools/pip_package/build_pip_package /tmp/pip &&     pip3 --no-cache-dir install --upgrade /tmp/pip/tensorflow-*.whl &&     rm -rf /tmp/pip &&     rm -rf /root/.cache" shape="box"];
  "sha256:f5a0abb745811a406bb8361c65ae38bcf6bdc06afdd323a9007cd783938c1bf9" [label="local://context" shape="ellipse"];
  "sha256:c79178fde015fc6b28c1b221943e1cd3a5acddb1ca4730706d4b6a229b824ba1" [label="copy{src=/staging/requirements.txt, dest=/app/requirements.txt}" shape="note"];
  "sha256:e50ec3731a6423d774166ad9eea13b472e6a674eedc2343700ce637836ed10f5" [label="/bin/sh -c pip3 install -r /app/requirements.txt" shape="box"];
  "sha256:afb40153fcc778385309e16ad0da756360629f9a0b22a76dbccd54675d617c86" [label="copy{src=/staging, dest=/app}" shape="note"];
  "sha256:817ff29f003c3189c9b48de03886ab3ab63bd96e5dcc28b6e4a8cf1a3b2ef592" [label="mkdir{path=/app}" shape="note"];
  "sha256:35aecc3f47c46e1758fa3d5d373ec68795651da250f75b325b14a0213de53f37" [label="sha256:35aecc3f47c46e1758fa3d5d373ec68795651da250f75b325b14a0213de53f37" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:d0a2bceb1aa32766ee7b1511d9412ab228955b1f750d1c339ba24c431c3536a9" [label=""];
  "sha256:d0a2bceb1aa32766ee7b1511d9412ab228955b1f750d1c339ba24c431c3536a9" -> "sha256:c5038ce9e052762d89f98bd393a68054c018b7be3292193b0c27ec2d4c3a58f5" [label=""];
  "sha256:c5038ce9e052762d89f98bd393a68054c018b7be3292193b0c27ec2d4c3a58f5" -> "sha256:e9405b1009e93d63fe1e417f556ebf5725817a75c32df13526a309b73c326814" [label=""];
  "sha256:e9405b1009e93d63fe1e417f556ebf5725817a75c32df13526a309b73c326814" -> "sha256:300790135559ed668597d9373cc7cc88c788d24a8e47bc85d063b81e7e0c05d9" [label=""];
  "sha256:300790135559ed668597d9373cc7cc88c788d24a8e47bc85d063b81e7e0c05d9" -> "sha256:f4061e7eb8f3da11a397c6cc6cd5846bb4ec73b00e77d7f6a3131984f4f76206" [label=""];
  "sha256:f4061e7eb8f3da11a397c6cc6cd5846bb4ec73b00e77d7f6a3131984f4f76206" -> "sha256:974500f8820c32a225085a230524517143c23be47f36fde86593806389aec6ff" [label=""];
  "sha256:974500f8820c32a225085a230524517143c23be47f36fde86593806389aec6ff" -> "sha256:7012f5eef532735a65ed6aabb0e65454483888137cb54b812ac35c47a330e875" [label=""];
  "sha256:7012f5eef532735a65ed6aabb0e65454483888137cb54b812ac35c47a330e875" -> "sha256:b7ffb98414f8fd3e9ec13c6b54dcdcd198b9babea1905fe7d96fcb74474b3e5f" [label=""];
  "sha256:b7ffb98414f8fd3e9ec13c6b54dcdcd198b9babea1905fe7d96fcb74474b3e5f" -> "sha256:50cf1132587fd387f067e8e67ee3f6cb3ac26e3db32853cb20c4f8004c71493c" [label=""];
  "sha256:50cf1132587fd387f067e8e67ee3f6cb3ac26e3db32853cb20c4f8004c71493c" -> "sha256:c79178fde015fc6b28c1b221943e1cd3a5acddb1ca4730706d4b6a229b824ba1" [label=""];
  "sha256:f5a0abb745811a406bb8361c65ae38bcf6bdc06afdd323a9007cd783938c1bf9" -> "sha256:c79178fde015fc6b28c1b221943e1cd3a5acddb1ca4730706d4b6a229b824ba1" [label=""];
  "sha256:c79178fde015fc6b28c1b221943e1cd3a5acddb1ca4730706d4b6a229b824ba1" -> "sha256:e50ec3731a6423d774166ad9eea13b472e6a674eedc2343700ce637836ed10f5" [label=""];
  "sha256:e50ec3731a6423d774166ad9eea13b472e6a674eedc2343700ce637836ed10f5" -> "sha256:afb40153fcc778385309e16ad0da756360629f9a0b22a76dbccd54675d617c86" [label=""];
  "sha256:f5a0abb745811a406bb8361c65ae38bcf6bdc06afdd323a9007cd783938c1bf9" -> "sha256:afb40153fcc778385309e16ad0da756360629f9a0b22a76dbccd54675d617c86" [label=""];
  "sha256:afb40153fcc778385309e16ad0da756360629f9a0b22a76dbccd54675d617c86" -> "sha256:817ff29f003c3189c9b48de03886ab3ab63bd96e5dcc28b6e4a8cf1a3b2ef592" [label=""];
  "sha256:817ff29f003c3189c9b48de03886ab3ab63bd96e5dcc28b6e4a8cf1a3b2ef592" -> "sha256:35aecc3f47c46e1758fa3d5d373ec68795651da250f75b325b14a0213de53f37" [label=""];
}

