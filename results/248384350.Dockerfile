[app/sources/248384350.Dockerfile]
digraph {
  "sha256:83549c194b8260db23900350822013a9bfe52ef9db213ddb24466bfe66ac76d5" [label="local://context" shape="ellipse"];
  "sha256:e54a31294c31c757fb7078b6ba08a5d498eb7588ecc40f8f8ea42fb55c2711af" [label="docker-image://docker.io/tensorflow/tensorflow:0.11.0" shape="ellipse"];
  "sha256:f7484ec69e05ea6fe49468f4bfffb9b80956130fb3c18cdc6522e8e69f98aa86" [label="/bin/sh -c apt update && apt install -yqq --no-install-recommends         wget         jq         curl         git &&     apt-get clean &&     rm -rf /var/lib/apt/lists/* &&     git clone https://github.com/tensorflow/models.git /models" shape="box"];
  "sha256:f7d6a345c120c733bb008e087c229d5a26ad75600ffc98189fdbd491610dc95c" [label="/bin/sh -c add-apt-repository -y ppa:openjdk-r/ppa &&     apt-get update &&     apt-get install -y openjdk-8-jdk openjdk-8-jre-headless &&     apt-get clean &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:e394a59f3b07926cbbc0fb98e36ae1b9247e6a386ae1181741c661736337cb2c" [label="/bin/sh -c echo \"build --spawn_strategy=standalone --genrule_strategy=standalone\"     >>/root/.bazelrc" shape="box"];
  "sha256:6aacf7275e84a7042875eecff8100dfffcf0ebaf85f825328838b6124ae87ec2" [label="copy{src=/bin/bazel, dest=/bin/bazel}" shape="note"];
  "sha256:21533632a9debb598e01d5f3f33909da04f04be3d628a5189949ac9ee5487596" [label="copy{src=/bin/bazel-real, dest=/bin/bazel-real}" shape="note"];
  "sha256:11b3d217d5f083c49a7a569c4301ada59a6f0a8edbb7a938653dd3693249e439" [label="copy{src=/download.sh, dest=/download.sh}" shape="note"];
  "sha256:ba6d5319e766b6f1ae097781684d481e330a23c223f4bb8f54254477008e8343" [label="copy{src=/worker.sh, dest=/worker.sh}" shape="note"];
  "sha256:4e9496bb0d7f3e2030718daead75d7335a7dd73a2353cc5f9368cd2628aca4e9" [label="copy{src=/ps.sh, dest=/ps.sh}" shape="note"];
  "sha256:88c243ed0e9f3f310fb6e9d388b7a624e75cd347281faa5d15642110e6f07b15" [label="sha256:88c243ed0e9f3f310fb6e9d388b7a624e75cd347281faa5d15642110e6f07b15" shape="plaintext"];
  "sha256:e54a31294c31c757fb7078b6ba08a5d498eb7588ecc40f8f8ea42fb55c2711af" -> "sha256:f7484ec69e05ea6fe49468f4bfffb9b80956130fb3c18cdc6522e8e69f98aa86" [label=""];
  "sha256:f7484ec69e05ea6fe49468f4bfffb9b80956130fb3c18cdc6522e8e69f98aa86" -> "sha256:f7d6a345c120c733bb008e087c229d5a26ad75600ffc98189fdbd491610dc95c" [label=""];
  "sha256:f7d6a345c120c733bb008e087c229d5a26ad75600ffc98189fdbd491610dc95c" -> "sha256:e394a59f3b07926cbbc0fb98e36ae1b9247e6a386ae1181741c661736337cb2c" [label=""];
  "sha256:e394a59f3b07926cbbc0fb98e36ae1b9247e6a386ae1181741c661736337cb2c" -> "sha256:6aacf7275e84a7042875eecff8100dfffcf0ebaf85f825328838b6124ae87ec2" [label=""];
  "sha256:83549c194b8260db23900350822013a9bfe52ef9db213ddb24466bfe66ac76d5" -> "sha256:6aacf7275e84a7042875eecff8100dfffcf0ebaf85f825328838b6124ae87ec2" [label=""];
  "sha256:6aacf7275e84a7042875eecff8100dfffcf0ebaf85f825328838b6124ae87ec2" -> "sha256:21533632a9debb598e01d5f3f33909da04f04be3d628a5189949ac9ee5487596" [label=""];
  "sha256:83549c194b8260db23900350822013a9bfe52ef9db213ddb24466bfe66ac76d5" -> "sha256:21533632a9debb598e01d5f3f33909da04f04be3d628a5189949ac9ee5487596" [label=""];
  "sha256:21533632a9debb598e01d5f3f33909da04f04be3d628a5189949ac9ee5487596" -> "sha256:11b3d217d5f083c49a7a569c4301ada59a6f0a8edbb7a938653dd3693249e439" [label=""];
  "sha256:83549c194b8260db23900350822013a9bfe52ef9db213ddb24466bfe66ac76d5" -> "sha256:11b3d217d5f083c49a7a569c4301ada59a6f0a8edbb7a938653dd3693249e439" [label=""];
  "sha256:11b3d217d5f083c49a7a569c4301ada59a6f0a8edbb7a938653dd3693249e439" -> "sha256:ba6d5319e766b6f1ae097781684d481e330a23c223f4bb8f54254477008e8343" [label=""];
  "sha256:83549c194b8260db23900350822013a9bfe52ef9db213ddb24466bfe66ac76d5" -> "sha256:ba6d5319e766b6f1ae097781684d481e330a23c223f4bb8f54254477008e8343" [label=""];
  "sha256:ba6d5319e766b6f1ae097781684d481e330a23c223f4bb8f54254477008e8343" -> "sha256:4e9496bb0d7f3e2030718daead75d7335a7dd73a2353cc5f9368cd2628aca4e9" [label=""];
  "sha256:83549c194b8260db23900350822013a9bfe52ef9db213ddb24466bfe66ac76d5" -> "sha256:4e9496bb0d7f3e2030718daead75d7335a7dd73a2353cc5f9368cd2628aca4e9" [label=""];
  "sha256:4e9496bb0d7f3e2030718daead75d7335a7dd73a2353cc5f9368cd2628aca4e9" -> "sha256:88c243ed0e9f3f310fb6e9d388b7a624e75cd347281faa5d15642110e6f07b15" [label=""];
}

