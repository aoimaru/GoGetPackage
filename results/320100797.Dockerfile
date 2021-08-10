[app/sources/320100797.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:a67523a1164c847bd591a36493922f8762fea916690f41d1cd6351aee99f0345" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:ca7a6ca426c775f8b3312cb6cfe7256c65647ad86566890aff42c4662e9bc4fd" [label="/bin/sh -c apt-get -y install software-properties-common" shape="box"];
  "sha256:ca7b32f6ecb79cdb251f41bb3751d40c5eb9d481a529a6327da9dc3370a95266" [label="/bin/sh -c add-apt-repository ppa:webupd8team/java" shape="box"];
  "sha256:9a63dff42f48c2113121babc4088dcaa8ee165102fec02141f64223310f6b704" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:cecd89b22e9ed0bc14f6a4adc69b5bed7b5e5235605d89803893d58c8a8ee53c" [label="/bin/sh -c echo oracle-java9-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections" shape="box"];
  "sha256:30a6430849f9589b986dc488d16f9d2b5d9c1d46e10cef3e7c18debebadbb04c" [label="/bin/sh -c apt-get -y install oracle-java9-installer" shape="box"];
  "sha256:7c9d95c757756851fa110fc6c4cf62f7d92d94f4bd243e6808b35ecc94354da5" [label="/bin/sh -c apt-get -y remove software-properties-common" shape="box"];
  "sha256:4076ae6eb2488b85c62ea4265303530b8b1c6700b175a3fe31bbd54d61d1a48f" [label="/bin/sh -c apt-get clean autoclean -y" shape="box"];
  "sha256:a0a505cf43f2b0f72ac64a7b469b71168b12ba58e79e13e847a7eec592afe5b9" [label="/bin/sh -c apt-get autoremove -y" shape="box"];
  "sha256:10a3a3f6d55229d24a087ce854f441f5e8a70ba78e59e2d560c93faf09562501" [label="sha256:10a3a3f6d55229d24a087ce854f441f5e8a70ba78e59e2d560c93faf09562501" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:a67523a1164c847bd591a36493922f8762fea916690f41d1cd6351aee99f0345" [label=""];
  "sha256:a67523a1164c847bd591a36493922f8762fea916690f41d1cd6351aee99f0345" -> "sha256:ca7a6ca426c775f8b3312cb6cfe7256c65647ad86566890aff42c4662e9bc4fd" [label=""];
  "sha256:ca7a6ca426c775f8b3312cb6cfe7256c65647ad86566890aff42c4662e9bc4fd" -> "sha256:ca7b32f6ecb79cdb251f41bb3751d40c5eb9d481a529a6327da9dc3370a95266" [label=""];
  "sha256:ca7b32f6ecb79cdb251f41bb3751d40c5eb9d481a529a6327da9dc3370a95266" -> "sha256:9a63dff42f48c2113121babc4088dcaa8ee165102fec02141f64223310f6b704" [label=""];
  "sha256:9a63dff42f48c2113121babc4088dcaa8ee165102fec02141f64223310f6b704" -> "sha256:cecd89b22e9ed0bc14f6a4adc69b5bed7b5e5235605d89803893d58c8a8ee53c" [label=""];
  "sha256:cecd89b22e9ed0bc14f6a4adc69b5bed7b5e5235605d89803893d58c8a8ee53c" -> "sha256:30a6430849f9589b986dc488d16f9d2b5d9c1d46e10cef3e7c18debebadbb04c" [label=""];
  "sha256:30a6430849f9589b986dc488d16f9d2b5d9c1d46e10cef3e7c18debebadbb04c" -> "sha256:7c9d95c757756851fa110fc6c4cf62f7d92d94f4bd243e6808b35ecc94354da5" [label=""];
  "sha256:7c9d95c757756851fa110fc6c4cf62f7d92d94f4bd243e6808b35ecc94354da5" -> "sha256:4076ae6eb2488b85c62ea4265303530b8b1c6700b175a3fe31bbd54d61d1a48f" [label=""];
  "sha256:4076ae6eb2488b85c62ea4265303530b8b1c6700b175a3fe31bbd54d61d1a48f" -> "sha256:a0a505cf43f2b0f72ac64a7b469b71168b12ba58e79e13e847a7eec592afe5b9" [label=""];
  "sha256:a0a505cf43f2b0f72ac64a7b469b71168b12ba58e79e13e847a7eec592afe5b9" -> "sha256:10a3a3f6d55229d24a087ce854f441f5e8a70ba78e59e2d560c93faf09562501" [label=""];
}

