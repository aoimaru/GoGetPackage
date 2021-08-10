[app/sources/217405198.Dockerfile]
digraph {
  "sha256:f1f756b20af9e380a34a208c6becb3fed1f935545fe44f03c766e6a3378f4b8c" [label="local://context" shape="ellipse"];
  "sha256:98adb3423ea813dbf263089327f7196e7172d60024d5cf677100120aacdf43eb" [label="docker-image://docker.io/nvidia/cuda:8.0-cudnn6-devel-ubuntu16.04" shape="ellipse"];
  "sha256:d91a84cf5de63bb7f9d431545f23d92595f91c5fd97c096b37571e865d037c7c" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends         build-essential         curl         git         libcurl3-dev         libfreetype6-dev         libpng12-dev         libzmq3-dev         pkg-config         python-dev         rsync         software-properties-common         unzip         zip         zlib1g-dev         openjdk-8-jdk         openjdk-8-jre-headless         wget         &&     apt-get clean &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:8fbbf128c93051feab1a900cba7a50786168607bb13266b3b806d71d38a41769" [label="/bin/sh -c curl -fSsL -O https://bootstrap.pypa.io/get-pip.py &&     python get-pip.py &&     rm get-pip.py" shape="box"];
  "sha256:4a224c74cf3787e8888f7e470a97ae631a1dbbf4873426b8894e5dd9611cdf61" [label="/bin/sh -c pip --no-cache-dir install         ipykernel         jupyter         matplotlib         numpy         scipy         sklearn         pandas         &&     python -m ipykernel.kernelspec" shape="box"];
  "sha256:94b6f27a2fceb651a06bab7f4f6d0d48be656d976865acded3beddd05bfed0b0" [label="copy{src=/jupyter_notebook_config.py, dest=/root/.jupyter/}" shape="note"];
  "sha256:0425fe32ecf71e4dd653c09eff1851aa79d4300fe1d03feed95c4475ea224217" [label="copy{src=/run_jupyter.sh, dest=/}" shape="note"];
  "sha256:0b48d3c16a36905b58a600d5d263698142caa0885c8e0970b2b88038ccaad5ef" [label="/bin/sh -c echo \"startup --batch\" >>/etc/bazel.bazelrc" shape="box"];
  "sha256:cae83fc3f4a8876ce3d36dc8866388a0e5d6641c74b6582aa47944d3404fe067" [label="/bin/sh -c echo \"build --spawn_strategy=standalone --genrule_strategy=standalone\"     >>/etc/bazel.bazelrc" shape="box"];
  "sha256:8b1518686ed393904f7cdac66aa810343654d89ab59581d3db0182865140f775" [label="/bin/sh -c mkdir /bazel &&     cd /bazel &&     curl -H \"User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36\" -fSsL -O https://github.com/bazelbuild/bazel/releases/download/$BAZEL_VERSION/bazel-$BAZEL_VERSION-installer-linux-x86_64.sh &&     curl -H \"User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36\" -fSsL -o /bazel/LICENSE.txt https://raw.githubusercontent.com/bazelbuild/bazel/master/LICENSE &&     chmod +x bazel-*.sh &&     ./bazel-$BAZEL_VERSION-installer-linux-x86_64.sh &&     cd / &&     rm -f /bazel/bazel-$BAZEL_VERSION-installer-linux-x86_64.sh" shape="box"];
  "sha256:316a8dce01ebf8243efd5df483a739c776c499fb5f919a0237332729d323c9e6" [label="/bin/sh -c git clone https://github.com/tensorflow/tensorflow.git &&     cd tensorflow &&     git checkout r1.4" shape="box"];
  "sha256:a2bf2cd536158f0f4e0049c5278a25ace9dc0e246ee6f06c5dc3e974b72a08f4" [label="mkdir{path=/tensorflow}" shape="note"];
  "sha256:c4057dbec710c39f616d04ce84701b486299d49f00cbbbba301850fdbb4ccdac" [label="/bin/sh -c ln -s /usr/local/cuda/lib64/stubs/libcuda.so /usr/local/cuda/lib64/stubs/libcuda.so.1 &&     LD_LIBRARY_PATH=/usr/local/cuda/lib64/stubs:${LD_LIBRARY_PATH}     tensorflow/tools/ci_build/builds/configured GPU     bazel build -c opt --config=cuda \t--cxxopt=\"-D_GLIBCXX_USE_CXX11_ABI=0\"         tensorflow/tools/pip_package:build_pip_package &&     rm /usr/local/cuda/lib64/stubs/libcuda.so.1 &&     bazel-bin/tensorflow/tools/pip_package/build_pip_package /tmp/pip &&     pip --no-cache-dir install --upgrade /tmp/pip/tensorflow-*.whl &&     rm -rf /tmp/pip &&     rm -rf /root/.cache" shape="box"];
  "sha256:804dbb5ebefa7e87fc1e99242a0c7c469b28aac12476ea1a29439a244a28aac7" [label="mkdir{path=/root}" shape="note"];
  "sha256:31ef0c481e86838e8c4581f15468d049905529936eb8e92bcc6488099d333dff" [label="/bin/bash" shape="box"];
  "sha256:13e1497a7cf3c0e52d4a4f0a17147a675301911b2e23a1618d4c602bfe682f41" [label="sha256:13e1497a7cf3c0e52d4a4f0a17147a675301911b2e23a1618d4c602bfe682f41" shape="plaintext"];
  "sha256:98adb3423ea813dbf263089327f7196e7172d60024d5cf677100120aacdf43eb" -> "sha256:d91a84cf5de63bb7f9d431545f23d92595f91c5fd97c096b37571e865d037c7c" [label=""];
  "sha256:d91a84cf5de63bb7f9d431545f23d92595f91c5fd97c096b37571e865d037c7c" -> "sha256:8fbbf128c93051feab1a900cba7a50786168607bb13266b3b806d71d38a41769" [label=""];
  "sha256:8fbbf128c93051feab1a900cba7a50786168607bb13266b3b806d71d38a41769" -> "sha256:4a224c74cf3787e8888f7e470a97ae631a1dbbf4873426b8894e5dd9611cdf61" [label=""];
  "sha256:4a224c74cf3787e8888f7e470a97ae631a1dbbf4873426b8894e5dd9611cdf61" -> "sha256:94b6f27a2fceb651a06bab7f4f6d0d48be656d976865acded3beddd05bfed0b0" [label=""];
  "sha256:f1f756b20af9e380a34a208c6becb3fed1f935545fe44f03c766e6a3378f4b8c" -> "sha256:94b6f27a2fceb651a06bab7f4f6d0d48be656d976865acded3beddd05bfed0b0" [label=""];
  "sha256:94b6f27a2fceb651a06bab7f4f6d0d48be656d976865acded3beddd05bfed0b0" -> "sha256:0425fe32ecf71e4dd653c09eff1851aa79d4300fe1d03feed95c4475ea224217" [label=""];
  "sha256:f1f756b20af9e380a34a208c6becb3fed1f935545fe44f03c766e6a3378f4b8c" -> "sha256:0425fe32ecf71e4dd653c09eff1851aa79d4300fe1d03feed95c4475ea224217" [label=""];
  "sha256:0425fe32ecf71e4dd653c09eff1851aa79d4300fe1d03feed95c4475ea224217" -> "sha256:0b48d3c16a36905b58a600d5d263698142caa0885c8e0970b2b88038ccaad5ef" [label=""];
  "sha256:0b48d3c16a36905b58a600d5d263698142caa0885c8e0970b2b88038ccaad5ef" -> "sha256:cae83fc3f4a8876ce3d36dc8866388a0e5d6641c74b6582aa47944d3404fe067" [label=""];
  "sha256:cae83fc3f4a8876ce3d36dc8866388a0e5d6641c74b6582aa47944d3404fe067" -> "sha256:8b1518686ed393904f7cdac66aa810343654d89ab59581d3db0182865140f775" [label=""];
  "sha256:8b1518686ed393904f7cdac66aa810343654d89ab59581d3db0182865140f775" -> "sha256:316a8dce01ebf8243efd5df483a739c776c499fb5f919a0237332729d323c9e6" [label=""];
  "sha256:316a8dce01ebf8243efd5df483a739c776c499fb5f919a0237332729d323c9e6" -> "sha256:a2bf2cd536158f0f4e0049c5278a25ace9dc0e246ee6f06c5dc3e974b72a08f4" [label=""];
  "sha256:a2bf2cd536158f0f4e0049c5278a25ace9dc0e246ee6f06c5dc3e974b72a08f4" -> "sha256:c4057dbec710c39f616d04ce84701b486299d49f00cbbbba301850fdbb4ccdac" [label=""];
  "sha256:c4057dbec710c39f616d04ce84701b486299d49f00cbbbba301850fdbb4ccdac" -> "sha256:804dbb5ebefa7e87fc1e99242a0c7c469b28aac12476ea1a29439a244a28aac7" [label=""];
  "sha256:804dbb5ebefa7e87fc1e99242a0c7c469b28aac12476ea1a29439a244a28aac7" -> "sha256:31ef0c481e86838e8c4581f15468d049905529936eb8e92bcc6488099d333dff" [label=""];
  "sha256:31ef0c481e86838e8c4581f15468d049905529936eb8e92bcc6488099d333dff" -> "sha256:13e1497a7cf3c0e52d4a4f0a17147a675301911b2e23a1618d4c602bfe682f41" [label=""];
}

