[app/sources/244196708.Dockerfile]
digraph {
  "sha256:f3cb60e3eba17210474c48d14833867508948d864c41d0f8cb64c93c428b17fe" [label="local://context" shape="ellipse"];
  "sha256:8455fd2f143fc9177be46048b3de337929f685f6878e9a1e1091875855f4c2d2" [label="docker-image://docker.io/library/python:slim" shape="ellipse"];
  "sha256:7b583427f2d0d0ea06ab2523a90e0ca0234937eaf42f94166e1c496d16d734c1" [label="/bin/sh -c pip install --upgrade --no-cache-dir awsebcli" shape="box"];
  "sha256:dc723065636b1f28fbc0739c9c8694200d4ec1f78026c239b02184b35b8466a7" [label="/bin/sh -c apt-get -yqq update && apt-get -yqq install git-all" shape="box"];
  "sha256:2ad42f0828e4cfb21665a45d55fe931f136677d735541cac46ebaba78324304f" [label="/bin/sh -c mkdir root/tmp_ssh" shape="box"];
  "sha256:d4f6fa1fd740086fe175583e3182e727538606f5ffe9e61498e5089e34d41715" [label="copy{src=/ssh_keys, dest=/root/.ssh/}" shape="note"];
  "sha256:9bb51eca9c66897a37bb83ba4d9157bfb76d247b96318aa404a5de6f492a0a59" [label="/bin/sh -c cd /root/.ssh && chmod 600 * && chmod 644 *.pub" shape="box"];
  "sha256:339972f001a61d777308919f0c5300d9dd6c0ba9bc73fb1bd46ae86f568aa122" [label="mkdir{path=/var/www}" shape="note"];
  "sha256:1540bc4ceb6fbebdbe9bc5ce64595b07121393d3d12564544655af0246e32cad" [label="sha256:1540bc4ceb6fbebdbe9bc5ce64595b07121393d3d12564544655af0246e32cad" shape="plaintext"];
  "sha256:8455fd2f143fc9177be46048b3de337929f685f6878e9a1e1091875855f4c2d2" -> "sha256:7b583427f2d0d0ea06ab2523a90e0ca0234937eaf42f94166e1c496d16d734c1" [label=""];
  "sha256:7b583427f2d0d0ea06ab2523a90e0ca0234937eaf42f94166e1c496d16d734c1" -> "sha256:dc723065636b1f28fbc0739c9c8694200d4ec1f78026c239b02184b35b8466a7" [label=""];
  "sha256:dc723065636b1f28fbc0739c9c8694200d4ec1f78026c239b02184b35b8466a7" -> "sha256:2ad42f0828e4cfb21665a45d55fe931f136677d735541cac46ebaba78324304f" [label=""];
  "sha256:2ad42f0828e4cfb21665a45d55fe931f136677d735541cac46ebaba78324304f" -> "sha256:d4f6fa1fd740086fe175583e3182e727538606f5ffe9e61498e5089e34d41715" [label=""];
  "sha256:f3cb60e3eba17210474c48d14833867508948d864c41d0f8cb64c93c428b17fe" -> "sha256:d4f6fa1fd740086fe175583e3182e727538606f5ffe9e61498e5089e34d41715" [label=""];
  "sha256:d4f6fa1fd740086fe175583e3182e727538606f5ffe9e61498e5089e34d41715" -> "sha256:9bb51eca9c66897a37bb83ba4d9157bfb76d247b96318aa404a5de6f492a0a59" [label=""];
  "sha256:9bb51eca9c66897a37bb83ba4d9157bfb76d247b96318aa404a5de6f492a0a59" -> "sha256:339972f001a61d777308919f0c5300d9dd6c0ba9bc73fb1bd46ae86f568aa122" [label=""];
  "sha256:339972f001a61d777308919f0c5300d9dd6c0ba9bc73fb1bd46ae86f568aa122" -> "sha256:1540bc4ceb6fbebdbe9bc5ce64595b07121393d3d12564544655af0246e32cad" [label=""];
}

