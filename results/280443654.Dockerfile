[app/sources/280443654.Dockerfile]
digraph {
  "sha256:4beae2eb3c3a26d804408934640890266fd2002804131f4b1711041f22a7ca02" [label="docker-image://docker.io/nvidia/cuda:8.0-cudnn5-devel-ubuntu14.04" shape="ellipse"];
  "sha256:f3fb63907ed870f091c9072a66d7570501f555b2477a478496d6e1d506a712f5" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends         build-essential         cmake         git         wget         libatlas-base-dev         libboost-all-dev         libgflags-dev         libgoogle-glog-dev         libhdf5-serial-dev         libleveldb-dev         liblmdb-dev         libopencv-dev         libprotobuf-dev         libsnappy-dev         protobuf-compiler         python-dev         python-numpy         python-pip         python-scipy         build-essential         curl         libfreetype6-dev         libpng12-dev         libzmq3-dev         pkg-config         rsync         software-properties-common         unzip         libgtk2.0-0         git         tcl-dev         python-pydot         graphviz         libffi6           libffi-dev         tk-dev &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:10490fe5321b3e58ab88c85f88479458bc7a17592583ae7e4cd16a81eb8e8633" [label="https://repo.continuum.io/miniconda/Miniconda3-4.2.12-Linux-x86_64.sh" shape="ellipse"];
  "sha256:da826f0e41cb5dcc3b42b8c1ecda2349af63ea3299bee9c8e39e0f356ee489fe" [label="copy{src=/Miniconda3-4.2.12-Linux-x86_64.sh, dest=/tmp/Miniconda3-4.2.12-Linux-x86_64.sh}" shape="note"];
  "sha256:01984259ee54b9c9916af78c214d8e477cbf6dd6536e24bf2106f2c8df69b8ba" [label="/bin/sh -c bash tmp/Miniconda3-4.2.12-Linux-x86_64.sh -b" shape="box"];
  "sha256:4261446e4c6f07e3c2bde000780414a666d4000cfb2fcd071977e1afd14dc235" [label="local://context" shape="ellipse"];
  "sha256:32c36106070e79e1c4d5f64b40a798eb7f65c77805ecc2c5caf3be89475893a2" [label="copy{src=/environment_py2.yml, dest=/environment_py2.yml}" shape="note"];
  "sha256:7d5c58d379f356ed4f815ed0fe61f8251df8b543c557fa124f42eb4656026295" [label="copy{src=/environment_py3.yml, dest=/environment_py3.yml}" shape="note"];
  "sha256:b60a6de02e808587dc1d05a76b6096349ff8b21a7a2a762900ac9b4d480b7ab9" [label="/bin/sh -c conda env create -f=environment_py2.yml --name py2 --debug -v -v" shape="box"];
  "sha256:e045f46e5deb271d303c522b072ad4a87570a73546323773152234feb6892413" [label="/bin/sh -c conda env create -f=environment_py3.yml --name py3 --debug -v -v" shape="box"];
  "sha256:3ac8ea53090d7dcc2499fb64124ca755e407e32e55345773c35ff2c9970cd0e6" [label="mkdir{path=/root}" shape="note"];
  "sha256:d83a599f5d24fe53e48b5a5a9c75d128f15604999c5aded4585f5e37a2c0d6ee" [label="http://dl4img-1251985129.cosbj.myqcloud.com/cudnn-8.0-linux-x64-v6.0.tgz" shape="ellipse"];
  "sha256:b15f399e03ee43adf7bf7c65d0d7caece1849d6ea93e77399c871f4a9aaa90ae" [label="copy{src=/cudnn-8.0-linux-x64-v6.0.tgz, dest=/root/}" shape="note"];
  "sha256:545b946844a8383e2dd01f53e03148441c58a901a4007b9a281065ecb8e55c12" [label="/bin/sh -c tar -zxvf cudnn-8.0-linux-x64-v6.0.tgz" shape="box"];
  "sha256:2f6bdaf755e7f7449bb366933f4743e9f2068901118519b02a2c4a8151a674dc" [label="/bin/sh -c cp cuda/lib64/libcudnn.so.6.0.21 /usr/lib/libcudnn.so.6" shape="box"];
  "sha256:a6152433acd61f9225ee2438438f4dc7ae0e286fe4ab022041e9a8a99c2bcb2d" [label="/bin/sh -c mkdir -p .jupyter" shape="box"];
  "sha256:7e95a1f66293896957ec84f511a69e11399e5c0064a2d1a8789b9b2ea552cc31" [label="copy{src=/jupyter_notebook_config.py, dest=/root/.jupyter/jupyter_notebook_config.py}" shape="note"];
  "sha256:dc12f04e7261e2cd4e134ed044362295c8cef89deb46c1d75f5ce797afd61cc4" [label="mkdir{path=/srv}" shape="note"];
  "sha256:b54327451abbe8396f4f80fbad6c53be4474137e28c123c39dab8d7b8a556f7a" [label="copy{src=/run.sh, dest=/run.sh}" shape="note"];
  "sha256:d53a91ac1ed5c193a8300ef25d267f7eb396d07908184a45d95747210c7ea9de" [label="/bin/sh -c chmod +x /run.sh" shape="box"];
  "sha256:f8e479731354ae99253b2339ceaa63eb4d02690fa5bdd324ae4fcbbeb3c12809" [label="sha256:f8e479731354ae99253b2339ceaa63eb4d02690fa5bdd324ae4fcbbeb3c12809" shape="plaintext"];
  "sha256:4beae2eb3c3a26d804408934640890266fd2002804131f4b1711041f22a7ca02" -> "sha256:f3fb63907ed870f091c9072a66d7570501f555b2477a478496d6e1d506a712f5" [label=""];
  "sha256:f3fb63907ed870f091c9072a66d7570501f555b2477a478496d6e1d506a712f5" -> "sha256:da826f0e41cb5dcc3b42b8c1ecda2349af63ea3299bee9c8e39e0f356ee489fe" [label=""];
  "sha256:10490fe5321b3e58ab88c85f88479458bc7a17592583ae7e4cd16a81eb8e8633" -> "sha256:da826f0e41cb5dcc3b42b8c1ecda2349af63ea3299bee9c8e39e0f356ee489fe" [label=""];
  "sha256:da826f0e41cb5dcc3b42b8c1ecda2349af63ea3299bee9c8e39e0f356ee489fe" -> "sha256:01984259ee54b9c9916af78c214d8e477cbf6dd6536e24bf2106f2c8df69b8ba" [label=""];
  "sha256:01984259ee54b9c9916af78c214d8e477cbf6dd6536e24bf2106f2c8df69b8ba" -> "sha256:32c36106070e79e1c4d5f64b40a798eb7f65c77805ecc2c5caf3be89475893a2" [label=""];
  "sha256:4261446e4c6f07e3c2bde000780414a666d4000cfb2fcd071977e1afd14dc235" -> "sha256:32c36106070e79e1c4d5f64b40a798eb7f65c77805ecc2c5caf3be89475893a2" [label=""];
  "sha256:32c36106070e79e1c4d5f64b40a798eb7f65c77805ecc2c5caf3be89475893a2" -> "sha256:7d5c58d379f356ed4f815ed0fe61f8251df8b543c557fa124f42eb4656026295" [label=""];
  "sha256:4261446e4c6f07e3c2bde000780414a666d4000cfb2fcd071977e1afd14dc235" -> "sha256:7d5c58d379f356ed4f815ed0fe61f8251df8b543c557fa124f42eb4656026295" [label=""];
  "sha256:7d5c58d379f356ed4f815ed0fe61f8251df8b543c557fa124f42eb4656026295" -> "sha256:b60a6de02e808587dc1d05a76b6096349ff8b21a7a2a762900ac9b4d480b7ab9" [label=""];
  "sha256:b60a6de02e808587dc1d05a76b6096349ff8b21a7a2a762900ac9b4d480b7ab9" -> "sha256:e045f46e5deb271d303c522b072ad4a87570a73546323773152234feb6892413" [label=""];
  "sha256:e045f46e5deb271d303c522b072ad4a87570a73546323773152234feb6892413" -> "sha256:3ac8ea53090d7dcc2499fb64124ca755e407e32e55345773c35ff2c9970cd0e6" [label=""];
  "sha256:3ac8ea53090d7dcc2499fb64124ca755e407e32e55345773c35ff2c9970cd0e6" -> "sha256:b15f399e03ee43adf7bf7c65d0d7caece1849d6ea93e77399c871f4a9aaa90ae" [label=""];
  "sha256:d83a599f5d24fe53e48b5a5a9c75d128f15604999c5aded4585f5e37a2c0d6ee" -> "sha256:b15f399e03ee43adf7bf7c65d0d7caece1849d6ea93e77399c871f4a9aaa90ae" [label=""];
  "sha256:b15f399e03ee43adf7bf7c65d0d7caece1849d6ea93e77399c871f4a9aaa90ae" -> "sha256:545b946844a8383e2dd01f53e03148441c58a901a4007b9a281065ecb8e55c12" [label=""];
  "sha256:545b946844a8383e2dd01f53e03148441c58a901a4007b9a281065ecb8e55c12" -> "sha256:2f6bdaf755e7f7449bb366933f4743e9f2068901118519b02a2c4a8151a674dc" [label=""];
  "sha256:2f6bdaf755e7f7449bb366933f4743e9f2068901118519b02a2c4a8151a674dc" -> "sha256:a6152433acd61f9225ee2438438f4dc7ae0e286fe4ab022041e9a8a99c2bcb2d" [label=""];
  "sha256:a6152433acd61f9225ee2438438f4dc7ae0e286fe4ab022041e9a8a99c2bcb2d" -> "sha256:7e95a1f66293896957ec84f511a69e11399e5c0064a2d1a8789b9b2ea552cc31" [label=""];
  "sha256:4261446e4c6f07e3c2bde000780414a666d4000cfb2fcd071977e1afd14dc235" -> "sha256:7e95a1f66293896957ec84f511a69e11399e5c0064a2d1a8789b9b2ea552cc31" [label=""];
  "sha256:7e95a1f66293896957ec84f511a69e11399e5c0064a2d1a8789b9b2ea552cc31" -> "sha256:dc12f04e7261e2cd4e134ed044362295c8cef89deb46c1d75f5ce797afd61cc4" [label=""];
  "sha256:dc12f04e7261e2cd4e134ed044362295c8cef89deb46c1d75f5ce797afd61cc4" -> "sha256:b54327451abbe8396f4f80fbad6c53be4474137e28c123c39dab8d7b8a556f7a" [label=""];
  "sha256:4261446e4c6f07e3c2bde000780414a666d4000cfb2fcd071977e1afd14dc235" -> "sha256:b54327451abbe8396f4f80fbad6c53be4474137e28c123c39dab8d7b8a556f7a" [label=""];
  "sha256:b54327451abbe8396f4f80fbad6c53be4474137e28c123c39dab8d7b8a556f7a" -> "sha256:d53a91ac1ed5c193a8300ef25d267f7eb396d07908184a45d95747210c7ea9de" [label=""];
  "sha256:d53a91ac1ed5c193a8300ef25d267f7eb396d07908184a45d95747210c7ea9de" -> "sha256:f8e479731354ae99253b2339ceaa63eb4d02690fa5bdd324ae4fcbbeb3c12809" [label=""];
}

