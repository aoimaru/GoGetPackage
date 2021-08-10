[app/sources/330786682.Dockerfile]
digraph {
  "sha256:60dec20f0d86d56ad930889a46944ec899e9eab43979806fd3337b753d109493" [label="docker-image://docker.io/tensorflow/tensorflow:latest-devel" shape="ellipse"];
  "sha256:02a9f29cb95a6538f6bc3f202d90ec0b856de8633851df3dff51628f08241229" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends         golang         vim         emacs         &&     apt-get clean &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:ad9ce02d0f9afe9fae666381070b439fba25d77cbaf4171a48a656932435c415" [label="/bin/sh -c pip --no-cache-dir install --upgrade         pip setuptools" shape="box"];
  "sha256:b2b1c9ab2b6be2a32fdfed9a136855a39872efed3ef9119bb96f670220abd3ad" [label="/bin/sh -c pip --no-cache-dir install wheel" shape="box"];
  "sha256:a769fef9c6ed69492c054931cdcd9623fe2c42f85d1a8b9ca04c62ddae84af67" [label="/bin/sh -c rm -rf tensorflow &&     git clone https://github.com/tensorflow/tensorflow.git &&     cd tensorflow &&     git checkout ${TF_BRANCH}" shape="box"];
  "sha256:e89fe6540ad267d1ab2935f7988557ff9e2f51f0431614b963ab99e528010161" [label="mkdir{path=/tensorflow}" shape="note"];
  "sha256:6dcb781ca0290775688f90447e8b4cfebfc48ed429fc3bc4787d1a572e6cd1a9" [label="/bin/sh -c ./configure" shape="box"];
  "sha256:54eb335c7f46c67b16263163066998f1a118196097fea058f3b06aa58b8f20df" [label="/bin/sh -c LD_LIBRARY_PATH=${LD_LIBRARY_PATH}     bazel build --config=mkl                 --config=\"opt\"                 --copt=\"-march=broadwell\"                 --copt=\"-O3\"                 //tensorflow/tools/pip_package:build_pip_package &&     mkdir ${WHL_DIR} &&     bazel-bin/tensorflow/tools/pip_package/build_pip_package ${WHL_DIR}" shape="box"];
  "sha256:286bdf5c304aa8d9ff55d81d0bb3a3ea4f1dd297f816a3a80ae4d80551807e24" [label="/bin/sh -c pip --no-cache-dir install --upgrade ${WHL_DIR}/tensorflow-*.whl &&     rm -rf /root/.cache" shape="box"];
  "sha256:1b9f3bf9571bad6cfe24fe8bafe5edb42fa8f3d1120dc55f3425588db2b763f9" [label="mkdir{path=/root}" shape="note"];
  "sha256:048e14400dcf182297e2979140584a54cb08f7495e870e45d5d294de471cdf7f" [label="/bin/sh -c echo '[ ! -z \"$TERM\" -a -r /etc/motd ] && cat /etc/issue && cat /etc/motd' \t>> /etc/bash.bashrc \t; echo \"||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||\\n|\t\t\t\t\t\t\t\t\\n| Docker container running Ubuntu\t\t\t\t\\n| with TensorFlow ${TF_BRANCH} optimized for CPU\t\t\\n| with Intel(R) MKL\t\t\t\t\t\t\\n|\t\t\t\t\t\t\t\t\\n||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||\\n\\n \"\t> /etc/motd" shape="box"];
  "sha256:b965156335e1ee765f0540bdd68014c69b4c0e04cc1e54e8be91c0342c5d8b67" [label="sha256:b965156335e1ee765f0540bdd68014c69b4c0e04cc1e54e8be91c0342c5d8b67" shape="plaintext"];
  "sha256:60dec20f0d86d56ad930889a46944ec899e9eab43979806fd3337b753d109493" -> "sha256:02a9f29cb95a6538f6bc3f202d90ec0b856de8633851df3dff51628f08241229" [label=""];
  "sha256:02a9f29cb95a6538f6bc3f202d90ec0b856de8633851df3dff51628f08241229" -> "sha256:ad9ce02d0f9afe9fae666381070b439fba25d77cbaf4171a48a656932435c415" [label=""];
  "sha256:ad9ce02d0f9afe9fae666381070b439fba25d77cbaf4171a48a656932435c415" -> "sha256:b2b1c9ab2b6be2a32fdfed9a136855a39872efed3ef9119bb96f670220abd3ad" [label=""];
  "sha256:b2b1c9ab2b6be2a32fdfed9a136855a39872efed3ef9119bb96f670220abd3ad" -> "sha256:a769fef9c6ed69492c054931cdcd9623fe2c42f85d1a8b9ca04c62ddae84af67" [label=""];
  "sha256:a769fef9c6ed69492c054931cdcd9623fe2c42f85d1a8b9ca04c62ddae84af67" -> "sha256:e89fe6540ad267d1ab2935f7988557ff9e2f51f0431614b963ab99e528010161" [label=""];
  "sha256:e89fe6540ad267d1ab2935f7988557ff9e2f51f0431614b963ab99e528010161" -> "sha256:6dcb781ca0290775688f90447e8b4cfebfc48ed429fc3bc4787d1a572e6cd1a9" [label=""];
  "sha256:6dcb781ca0290775688f90447e8b4cfebfc48ed429fc3bc4787d1a572e6cd1a9" -> "sha256:54eb335c7f46c67b16263163066998f1a118196097fea058f3b06aa58b8f20df" [label=""];
  "sha256:54eb335c7f46c67b16263163066998f1a118196097fea058f3b06aa58b8f20df" -> "sha256:286bdf5c304aa8d9ff55d81d0bb3a3ea4f1dd297f816a3a80ae4d80551807e24" [label=""];
  "sha256:286bdf5c304aa8d9ff55d81d0bb3a3ea4f1dd297f816a3a80ae4d80551807e24" -> "sha256:1b9f3bf9571bad6cfe24fe8bafe5edb42fa8f3d1120dc55f3425588db2b763f9" [label=""];
  "sha256:1b9f3bf9571bad6cfe24fe8bafe5edb42fa8f3d1120dc55f3425588db2b763f9" -> "sha256:048e14400dcf182297e2979140584a54cb08f7495e870e45d5d294de471cdf7f" [label=""];
  "sha256:048e14400dcf182297e2979140584a54cb08f7495e870e45d5d294de471cdf7f" -> "sha256:b965156335e1ee765f0540bdd68014c69b4c0e04cc1e54e8be91c0342c5d8b67" [label=""];
}

