[app/sources/299387083.Dockerfile]
digraph {
  "sha256:a91f2e817e9ac979421f9b4f86e7e94347e4bac56bf32d9cc961d34fae02d8a8" [label="local://context" shape="ellipse"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:8812b08667b1397abfd67f1b8a1fab8ad6837e9ed8b3400c3f5c4b845a0e0730" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends         build-essential         curl         git         libcurl3-dev         libfreetype6-dev         libhdf5-serial-dev         libpng-dev         libzmq3-dev         pkg-config         python-dev         rsync         software-properties-common         unzip         zip         zlib1g-dev         openjdk-8-jdk         openjdk-8-jre-headless         &&     apt-get clean &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:b3de508922d952ae52d149995a9f601d951e26afaaaee9dc9c2a3ef316684f24" [label="/bin/sh -c curl -fSsL -O https://bootstrap.pypa.io/get-pip.py &&     python get-pip.py &&     rm get-pip.py" shape="box"];
  "sha256:1fc67bf3461884b1c47ccd890208f11e4fb2be3b1ba9e3cec9ba4be1218c9bd7" [label="/bin/sh -c pip --no-cache-dir install         Pillow         h5py         ipykernel         jupyter         keras_applications         keras_preprocessing         matplotlib         mock         numpy         scipy         sklearn         pandas         &&     python -m ipykernel.kernelspec" shape="box"];
  "sha256:de38210286c6c8aeb3ec86a53bdd824834e671308b5739aee9b68ed03bc8c770" [label="copy{src=/jupyter_notebook_config.py, dest=/root/.jupyter/}" shape="note"];
  "sha256:4c0f48a37131df3100036e024e855e4837b99f7b2fd74efdf57bf42da524ff0f" [label="copy{src=/run_jupyter.sh, dest=/}" shape="note"];
  "sha256:54ab127cb765d0f42283a1f45c694ba9e80bbc191b749b0f2073bc66591840d3" [label="/bin/sh -c echo \"startup --batch\" >>/etc/bazel.bazelrc" shape="box"];
  "sha256:22d4a7801b326c7e6b1044798b89a3779df28fcf3512f7f4a3d31a5dbe2d570a" [label="/bin/sh -c echo \"build --spawn_strategy=standalone --genrule_strategy=standalone\"     >>/etc/bazel.bazelrc" shape="box"];
  "sha256:9d4c90cd7efd2b2dd84e9f5e96954632cb49c7c592c1be0a9269880041042628" [label="/bin/sh -c mkdir /bazel &&     cd /bazel &&     curl -H \"User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36\" -fSsL -O https://github.com/bazelbuild/bazel/releases/download/$BAZEL_VERSION/bazel-$BAZEL_VERSION-installer-linux-x86_64.sh &&     curl -H \"User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36\" -fSsL -o /bazel/LICENSE.txt https://raw.githubusercontent.com/bazelbuild/bazel/master/LICENSE &&     chmod +x bazel-*.sh &&     ./bazel-$BAZEL_VERSION-installer-linux-x86_64.sh &&     cd / &&     rm -f /bazel/bazel-$BAZEL_VERSION-installer-linux-x86_64.sh" shape="box"];
  "sha256:4b80f49b5f81f7a2005b8cbfd4ccdf2836a99dfd084f58c781151f043afe5252" [label="mkdir{path=/tensorflow}" shape="note"];
  "sha256:e670312ba664ce0ced15a86ed6441248a083d6949e97498be765bc65eb3a4197" [label="/bin/sh -c git clone --branch=r1.12 --depth=1 https://github.com/tensorflow/tensorflow.git ." shape="box"];
  "sha256:539a2869d7dba6d39544c6e926861cec8999716bdbdc2f70f7b0c2ca27e47af9" [label="/bin/sh -c tensorflow/tools/ci_build/builds/configured CPU     bazel build -c opt --copt=-mavx --cxxopt=\"-D_GLIBCXX_USE_CXX11_ABI=0\"         tensorflow/tools/pip_package:build_pip_package &&     bazel-bin/tensorflow/tools/pip_package/build_pip_package /tmp/pip &&     pip --no-cache-dir install --upgrade /tmp/pip/tensorflow-*.whl &&     rm -rf /tmp/pip &&     rm -rf /root/.cache" shape="box"];
  "sha256:240fb83645db27d10976d332bf24bbc4db56231e3a888394802ccd61c021e95c" [label="mkdir{path=/root}" shape="note"];
  "sha256:958b69b58c0ecd168a329591b0502868db9e9d781527c1ebbaac8e47b5b55746" [label="sha256:958b69b58c0ecd168a329591b0502868db9e9d781527c1ebbaac8e47b5b55746" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:8812b08667b1397abfd67f1b8a1fab8ad6837e9ed8b3400c3f5c4b845a0e0730" [label=""];
  "sha256:8812b08667b1397abfd67f1b8a1fab8ad6837e9ed8b3400c3f5c4b845a0e0730" -> "sha256:b3de508922d952ae52d149995a9f601d951e26afaaaee9dc9c2a3ef316684f24" [label=""];
  "sha256:b3de508922d952ae52d149995a9f601d951e26afaaaee9dc9c2a3ef316684f24" -> "sha256:1fc67bf3461884b1c47ccd890208f11e4fb2be3b1ba9e3cec9ba4be1218c9bd7" [label=""];
  "sha256:1fc67bf3461884b1c47ccd890208f11e4fb2be3b1ba9e3cec9ba4be1218c9bd7" -> "sha256:de38210286c6c8aeb3ec86a53bdd824834e671308b5739aee9b68ed03bc8c770" [label=""];
  "sha256:a91f2e817e9ac979421f9b4f86e7e94347e4bac56bf32d9cc961d34fae02d8a8" -> "sha256:de38210286c6c8aeb3ec86a53bdd824834e671308b5739aee9b68ed03bc8c770" [label=""];
  "sha256:de38210286c6c8aeb3ec86a53bdd824834e671308b5739aee9b68ed03bc8c770" -> "sha256:4c0f48a37131df3100036e024e855e4837b99f7b2fd74efdf57bf42da524ff0f" [label=""];
  "sha256:a91f2e817e9ac979421f9b4f86e7e94347e4bac56bf32d9cc961d34fae02d8a8" -> "sha256:4c0f48a37131df3100036e024e855e4837b99f7b2fd74efdf57bf42da524ff0f" [label=""];
  "sha256:4c0f48a37131df3100036e024e855e4837b99f7b2fd74efdf57bf42da524ff0f" -> "sha256:54ab127cb765d0f42283a1f45c694ba9e80bbc191b749b0f2073bc66591840d3" [label=""];
  "sha256:54ab127cb765d0f42283a1f45c694ba9e80bbc191b749b0f2073bc66591840d3" -> "sha256:22d4a7801b326c7e6b1044798b89a3779df28fcf3512f7f4a3d31a5dbe2d570a" [label=""];
  "sha256:22d4a7801b326c7e6b1044798b89a3779df28fcf3512f7f4a3d31a5dbe2d570a" -> "sha256:9d4c90cd7efd2b2dd84e9f5e96954632cb49c7c592c1be0a9269880041042628" [label=""];
  "sha256:9d4c90cd7efd2b2dd84e9f5e96954632cb49c7c592c1be0a9269880041042628" -> "sha256:4b80f49b5f81f7a2005b8cbfd4ccdf2836a99dfd084f58c781151f043afe5252" [label=""];
  "sha256:4b80f49b5f81f7a2005b8cbfd4ccdf2836a99dfd084f58c781151f043afe5252" -> "sha256:e670312ba664ce0ced15a86ed6441248a083d6949e97498be765bc65eb3a4197" [label=""];
  "sha256:e670312ba664ce0ced15a86ed6441248a083d6949e97498be765bc65eb3a4197" -> "sha256:539a2869d7dba6d39544c6e926861cec8999716bdbdc2f70f7b0c2ca27e47af9" [label=""];
  "sha256:539a2869d7dba6d39544c6e926861cec8999716bdbdc2f70f7b0c2ca27e47af9" -> "sha256:240fb83645db27d10976d332bf24bbc4db56231e3a888394802ccd61c021e95c" [label=""];
  "sha256:240fb83645db27d10976d332bf24bbc4db56231e3a888394802ccd61c021e95c" -> "sha256:958b69b58c0ecd168a329591b0502868db9e9d781527c1ebbaac8e47b5b55746" [label=""];
}

