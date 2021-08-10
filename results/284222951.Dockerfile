[app/sources/284222951.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:6873d82f8c4f610384a253eaccf2184f057c4c531fa82a5aad8f9a33264d3341" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends         build-essential         curl         git         libcurl3-dev         libfreetype6-dev         libpng12-dev         libzmq3-dev         pkg-config         python-dev         rsync         software-properties-common         unzip         zip         zlib1g-dev         openjdk-8-jdk         openjdk-8-jre-headless         &&     apt-get clean &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:249d61f9f2f210b04971e506b6347a144709d66fb10998ea32c950f7adeec322" [label="/bin/sh -c curl -fSsL -O https://bootstrap.pypa.io/get-pip.py &&     python get-pip.py &&     rm get-pip.py" shape="box"];
  "sha256:56e98a7bc1c8934ac82f049fff7cc269459ade53679de5f495cef3e853e58ad2" [label="/bin/sh -c pip --no-cache-dir install         ipykernel         jupyter         matplotlib         numpy         scipy         sklearn         pandas         &&     python -m ipykernel.kernelspec" shape="box"];
  "sha256:f904e28b241b6fea2284c830d7abe3e6bd8426294bf4bd8272c548d73ece39d6" [label="local://context" shape="ellipse"];
  "sha256:fb73ebb1faf510d1bbab5e42fe8b1899a48d31995dadba3942816909645d1ae0" [label="copy{src=/jupyter_notebook_config.py, dest=/root/.jupyter/}" shape="note"];
  "sha256:48e9ec7c5afd2b84f715e133d65cbaa1cc4ddf02ea1d33312ae82bdf7abf77b3" [label="copy{src=/run_jupyter.sh, dest=/}" shape="note"];
  "sha256:f9f4568435a26bcb4606d4580d91f84d102f1161faf8684d8fe7f3e3e0a55991" [label="/bin/sh -c echo \"startup --batch\" >>/etc/bazel.bazelrc" shape="box"];
  "sha256:d6ff18be4fb8f2f93d309c7169437fb0db1b624b2abf584e10f5bade55c14c7f" [label="/bin/sh -c echo \"build --spawn_strategy=standalone --genrule_strategy=standalone\"     >>/etc/bazel.bazelrc" shape="box"];
  "sha256:63ae0129a6ca0a62ecd91736cbaa7cefaa7740c79ed1113251b7de9330761ec1" [label="/bin/sh -c mkdir /bazel &&     cd /bazel &&     curl -H \"User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36\" -fSsL -O https://github.com/bazelbuild/bazel/releases/download/$BAZEL_VERSION/bazel-$BAZEL_VERSION-installer-linux-x86_64.sh &&     curl -H \"User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36\" -fSsL -o /bazel/LICENSE.txt https://raw.githubusercontent.com/bazelbuild/bazel/master/LICENSE &&     chmod +x bazel-*.sh &&     ./bazel-$BAZEL_VERSION-installer-linux-x86_64.sh &&     cd / &&     rm -f /bazel/bazel-$BAZEL_VERSION-installer-linux-x86_64.sh" shape="box"];
  "sha256:6369675822cece17971c6fc507ec57cbf3d7322e8e48b2840545affb0014495d" [label="/bin/sh -c git clone https://github.com/tensorflow/tensorflow.git &&     cd tensorflow &&     git checkout r1.3" shape="box"];
  "sha256:8486162d3a1652396122ae8bf31626939b46d75d7d71e653364ca420b29196e2" [label="mkdir{path=/tensorflow}" shape="note"];
  "sha256:6ecccec3980ad30b17d743f0d2062ee1e65eb370d62cb4fa7071f090cb307b1b" [label="/bin/sh -c tensorflow/tools/ci_build/builds/configured CPU     bazel build -c opt --cxxopt=\"-D_GLIBCXX_USE_CXX11_ABI=0\"         tensorflow/tools/pip_package:build_pip_package &&     bazel-bin/tensorflow/tools/pip_package/build_pip_package /tmp/pip &&     pip --no-cache-dir install --upgrade /tmp/pip/tensorflow-*.whl &&     rm -rf /tmp/pip &&     rm -rf /root/.cache" shape="box"];
  "sha256:7e89e09da2a198db5131d48ddcaf765f4b48f42bb5ce7247b37e2b26b20b8854" [label="mkdir{path=/root}" shape="note"];
  "sha256:ba75cccdf7aa9dd417751bdf96ffa8fcf78f13ab6e8fba5c844603ac8af74aea" [label="sha256:ba75cccdf7aa9dd417751bdf96ffa8fcf78f13ab6e8fba5c844603ac8af74aea" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:6873d82f8c4f610384a253eaccf2184f057c4c531fa82a5aad8f9a33264d3341" [label=""];
  "sha256:6873d82f8c4f610384a253eaccf2184f057c4c531fa82a5aad8f9a33264d3341" -> "sha256:249d61f9f2f210b04971e506b6347a144709d66fb10998ea32c950f7adeec322" [label=""];
  "sha256:249d61f9f2f210b04971e506b6347a144709d66fb10998ea32c950f7adeec322" -> "sha256:56e98a7bc1c8934ac82f049fff7cc269459ade53679de5f495cef3e853e58ad2" [label=""];
  "sha256:56e98a7bc1c8934ac82f049fff7cc269459ade53679de5f495cef3e853e58ad2" -> "sha256:fb73ebb1faf510d1bbab5e42fe8b1899a48d31995dadba3942816909645d1ae0" [label=""];
  "sha256:f904e28b241b6fea2284c830d7abe3e6bd8426294bf4bd8272c548d73ece39d6" -> "sha256:fb73ebb1faf510d1bbab5e42fe8b1899a48d31995dadba3942816909645d1ae0" [label=""];
  "sha256:fb73ebb1faf510d1bbab5e42fe8b1899a48d31995dadba3942816909645d1ae0" -> "sha256:48e9ec7c5afd2b84f715e133d65cbaa1cc4ddf02ea1d33312ae82bdf7abf77b3" [label=""];
  "sha256:f904e28b241b6fea2284c830d7abe3e6bd8426294bf4bd8272c548d73ece39d6" -> "sha256:48e9ec7c5afd2b84f715e133d65cbaa1cc4ddf02ea1d33312ae82bdf7abf77b3" [label=""];
  "sha256:48e9ec7c5afd2b84f715e133d65cbaa1cc4ddf02ea1d33312ae82bdf7abf77b3" -> "sha256:f9f4568435a26bcb4606d4580d91f84d102f1161faf8684d8fe7f3e3e0a55991" [label=""];
  "sha256:f9f4568435a26bcb4606d4580d91f84d102f1161faf8684d8fe7f3e3e0a55991" -> "sha256:d6ff18be4fb8f2f93d309c7169437fb0db1b624b2abf584e10f5bade55c14c7f" [label=""];
  "sha256:d6ff18be4fb8f2f93d309c7169437fb0db1b624b2abf584e10f5bade55c14c7f" -> "sha256:63ae0129a6ca0a62ecd91736cbaa7cefaa7740c79ed1113251b7de9330761ec1" [label=""];
  "sha256:63ae0129a6ca0a62ecd91736cbaa7cefaa7740c79ed1113251b7de9330761ec1" -> "sha256:6369675822cece17971c6fc507ec57cbf3d7322e8e48b2840545affb0014495d" [label=""];
  "sha256:6369675822cece17971c6fc507ec57cbf3d7322e8e48b2840545affb0014495d" -> "sha256:8486162d3a1652396122ae8bf31626939b46d75d7d71e653364ca420b29196e2" [label=""];
  "sha256:8486162d3a1652396122ae8bf31626939b46d75d7d71e653364ca420b29196e2" -> "sha256:6ecccec3980ad30b17d743f0d2062ee1e65eb370d62cb4fa7071f090cb307b1b" [label=""];
  "sha256:6ecccec3980ad30b17d743f0d2062ee1e65eb370d62cb4fa7071f090cb307b1b" -> "sha256:7e89e09da2a198db5131d48ddcaf765f4b48f42bb5ce7247b37e2b26b20b8854" [label=""];
  "sha256:7e89e09da2a198db5131d48ddcaf765f4b48f42bb5ce7247b37e2b26b20b8854" -> "sha256:ba75cccdf7aa9dd417751bdf96ffa8fcf78f13ab6e8fba5c844603ac8af74aea" [label=""];
}

