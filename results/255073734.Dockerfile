[app/sources/255073734.Dockerfile]
digraph {
  "sha256:28038ea35e83c39bb47e542fd6e0d7660dc0eb14ffd413e2f68ca4a33b9e5e86" [label="local://context" shape="ellipse"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:62c0fc3ba33cf16cb60d849e013e6bb29b3bb110222cf311d4d2a550d16492d5" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends         build-essential         curl         git         libcurl3-dev         libfreetype6-dev         libpng12-dev         libzmq3-dev         pkg-config         python-dev         rsync         software-properties-common         unzip         zip         zlib1g-dev         &&     apt-get clean &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:e47f4b4edcc4582e11454d719ed081d0db5fada75d37b44dd05ba1c60b23df92" [label="/bin/sh -c curl -fSsL -O https://bootstrap.pypa.io/get-pip.py &&     python get-pip.py &&     rm get-pip.py" shape="box"];
  "sha256:ddc89d1ca958a2f8666a2baa12437095cb27442c2f0e5cf9ac7c6f2a1559767f" [label="/bin/sh -c pip --no-cache-dir install         ipykernel         jupyter         matplotlib         numpy         scipy         sklearn         &&     python -m ipykernel.kernelspec" shape="box"];
  "sha256:2878a0943709b40b85d98368e7d5b45d2f998790f96faf6f3b72707c39d54623" [label="copy{src=/jupyter_notebook_config.py, dest=/root/.jupyter/}" shape="note"];
  "sha256:9d0a7d848ed120eaa354d6ba8aab063ec092bacdfa1c4ba2c61961867058981d" [label="copy{src=/run_jupyter.sh, dest=/}" shape="note"];
  "sha256:8aa04e9e0760f31bc5295023ce529d1393b95f191922564b8410cd42082a4b5f" [label="/bin/sh -c add-apt-repository -y ppa:openjdk-r/ppa &&     apt-get update &&     apt-get install -y --no-install-recommends openjdk-8-jdk openjdk-8-jre-headless &&     apt-get clean &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:bbe151d6a759e05614a905b2ae27c23ca58399ef307a5f4c41f359321ccc20e8" [label="/bin/sh -c echo \"startup --batch\" >>/root/.bazelrc" shape="box"];
  "sha256:48e531d92c366da9a15dafccc991633268c8733f429b3d7e19eb914f99861e29" [label="/bin/sh -c echo \"build --spawn_strategy=standalone --genrule_strategy=standalone\"     >>/root/.bazelrc" shape="box"];
  "sha256:80458fb227ff2452007eb0fff54a0f5721b335cabd0c35daa9fade1b8dfa580c" [label="/bin/sh -c mkdir /bazel &&     cd /bazel &&     curl -fSsL -O https://github.com/bazelbuild/bazel/releases/download/$BAZEL_VERSION/bazel-$BAZEL_VERSION-installer-linux-x86_64.sh &&     curl -fSsL -o /bazel/LICENSE.txt https://raw.githubusercontent.com/bazelbuild/bazel/master/LICENSE.txt &&     chmod +x bazel-*.sh &&     ./bazel-$BAZEL_VERSION-installer-linux-x86_64.sh &&     cd / &&     rm -f /bazel/bazel-$BAZEL_VERSION-installer-linux-x86_64.sh" shape="box"];
  "sha256:d7b6789fc5ee9b12fc8998d6826a9ca27894ebd92ecbe8bdf1f81e157c94abd8" [label="/bin/sh -c git clone https://github.com/tensorflow/tensorflow.git &&     cd tensorflow &&     git checkout r1.0" shape="box"];
  "sha256:b54fae6ee44955bc2d379fc018ffac6b7b029bdba58f7385a1afedd9dd6c0bee" [label="mkdir{path=/tensorflow}" shape="note"];
  "sha256:022203186383475c5118afc650d010626d87add7d4d57d9cf5a168cbb1388895" [label="/bin/sh -c tensorflow/tools/ci_build/builds/configured CPU     bazel build -c opt tensorflow/tools/pip_package:build_pip_package &&     bazel-bin/tensorflow/tools/pip_package/build_pip_package /tmp/pip &&     pip --no-cache-dir install --upgrade /tmp/pip/tensorflow-*.whl &&     rm -rf /tmp/pip &&     rm -rf /root/.cache" shape="box"];
  "sha256:b703afebaebc427bdbc64124e3586dca0f1c8892df09eda041012d0ab3ee4cb1" [label="mkdir{path=/root}" shape="note"];
  "sha256:c83d515cac0f3dad34008dd01e36f986bab68717f0f0585bbec0530c95f404ea" [label="sha256:c83d515cac0f3dad34008dd01e36f986bab68717f0f0585bbec0530c95f404ea" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:62c0fc3ba33cf16cb60d849e013e6bb29b3bb110222cf311d4d2a550d16492d5" [label=""];
  "sha256:62c0fc3ba33cf16cb60d849e013e6bb29b3bb110222cf311d4d2a550d16492d5" -> "sha256:e47f4b4edcc4582e11454d719ed081d0db5fada75d37b44dd05ba1c60b23df92" [label=""];
  "sha256:e47f4b4edcc4582e11454d719ed081d0db5fada75d37b44dd05ba1c60b23df92" -> "sha256:ddc89d1ca958a2f8666a2baa12437095cb27442c2f0e5cf9ac7c6f2a1559767f" [label=""];
  "sha256:ddc89d1ca958a2f8666a2baa12437095cb27442c2f0e5cf9ac7c6f2a1559767f" -> "sha256:2878a0943709b40b85d98368e7d5b45d2f998790f96faf6f3b72707c39d54623" [label=""];
  "sha256:28038ea35e83c39bb47e542fd6e0d7660dc0eb14ffd413e2f68ca4a33b9e5e86" -> "sha256:2878a0943709b40b85d98368e7d5b45d2f998790f96faf6f3b72707c39d54623" [label=""];
  "sha256:2878a0943709b40b85d98368e7d5b45d2f998790f96faf6f3b72707c39d54623" -> "sha256:9d0a7d848ed120eaa354d6ba8aab063ec092bacdfa1c4ba2c61961867058981d" [label=""];
  "sha256:28038ea35e83c39bb47e542fd6e0d7660dc0eb14ffd413e2f68ca4a33b9e5e86" -> "sha256:9d0a7d848ed120eaa354d6ba8aab063ec092bacdfa1c4ba2c61961867058981d" [label=""];
  "sha256:9d0a7d848ed120eaa354d6ba8aab063ec092bacdfa1c4ba2c61961867058981d" -> "sha256:8aa04e9e0760f31bc5295023ce529d1393b95f191922564b8410cd42082a4b5f" [label=""];
  "sha256:8aa04e9e0760f31bc5295023ce529d1393b95f191922564b8410cd42082a4b5f" -> "sha256:bbe151d6a759e05614a905b2ae27c23ca58399ef307a5f4c41f359321ccc20e8" [label=""];
  "sha256:bbe151d6a759e05614a905b2ae27c23ca58399ef307a5f4c41f359321ccc20e8" -> "sha256:48e531d92c366da9a15dafccc991633268c8733f429b3d7e19eb914f99861e29" [label=""];
  "sha256:48e531d92c366da9a15dafccc991633268c8733f429b3d7e19eb914f99861e29" -> "sha256:80458fb227ff2452007eb0fff54a0f5721b335cabd0c35daa9fade1b8dfa580c" [label=""];
  "sha256:80458fb227ff2452007eb0fff54a0f5721b335cabd0c35daa9fade1b8dfa580c" -> "sha256:d7b6789fc5ee9b12fc8998d6826a9ca27894ebd92ecbe8bdf1f81e157c94abd8" [label=""];
  "sha256:d7b6789fc5ee9b12fc8998d6826a9ca27894ebd92ecbe8bdf1f81e157c94abd8" -> "sha256:b54fae6ee44955bc2d379fc018ffac6b7b029bdba58f7385a1afedd9dd6c0bee" [label=""];
  "sha256:b54fae6ee44955bc2d379fc018ffac6b7b029bdba58f7385a1afedd9dd6c0bee" -> "sha256:022203186383475c5118afc650d010626d87add7d4d57d9cf5a168cbb1388895" [label=""];
  "sha256:022203186383475c5118afc650d010626d87add7d4d57d9cf5a168cbb1388895" -> "sha256:b703afebaebc427bdbc64124e3586dca0f1c8892df09eda041012d0ab3ee4cb1" [label=""];
  "sha256:b703afebaebc427bdbc64124e3586dca0f1c8892df09eda041012d0ab3ee4cb1" -> "sha256:c83d515cac0f3dad34008dd01e36f986bab68717f0f0585bbec0530c95f404ea" [label=""];
}

