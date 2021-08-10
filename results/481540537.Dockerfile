[app/sources/481540537.Dockerfile]
digraph {
  "sha256:9b7e71416452419c9c8c2a46ddd831b86c727218844a71cdb36f8a101f44ed23" [label="docker-image://docker.io/library/ubuntu:15.10" shape="ellipse"];
  "sha256:5c98e7b1a82c9bef453e29ee95c294a2e9453a8ca5dafa4a9d5f84ce9d2a6001" [label="/bin/sh -c apt-get update && apt-get install -y         build-essential         curl         g++         git         libfreetype6-dev         libpng12-dev         libzmq3-dev         openjdk-8-jdk         pkg-config         python-dev         python-numpy         python-pip         software-properties-common         swig         unzip         zip         zlib1g-dev         &&     apt-get clean &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:a7af4fd6018258c98a52b3ea156fc82300627bfdd15cee695bcc4dc59dec1daf" [label="/bin/sh -c update-ca-certificates -f" shape="box"];
  "sha256:6c935c8d7def74962fe2f5a0512c1fd9240d1e016b0213c69c5f774060fe9db1" [label="/bin/sh -c echo \"startup --batch\" >>/root/.bazelrc" shape="box"];
  "sha256:1be469b91def844789f572ae795e034a5c071a56fa071f2017bebd1e38730a27" [label="/bin/sh -c echo \"build --spawn_strategy=standalone --genrule_strategy=standalone\"     >>/root/.bazelrc" shape="box"];
  "sha256:a955fd91cce6d2825fc78f7f1a670b05a885fd0790aff3cd31f510b987fcb9eb" [label="/bin/sh -c mkdir /bazel &&     cd /bazel &&     curl -fSsL -O https://github.com/bazelbuild/bazel/releases/download/$BAZEL_VERSION/bazel-$BAZEL_VERSION-installer-linux-x86_64.sh &&     curl -fSsL -o /bazel/LICENSE.txt https://raw.githubusercontent.com/bazelbuild/bazel/master/LICENSE.txt &&     chmod +x bazel-*.sh &&     ./bazel-$BAZEL_VERSION-installer-linux-x86_64.sh &&     cd / &&     rm -f /bazel/bazel-$BAZEL_VERSION-installer-linux-x86_64.sh" shape="box"];
  "sha256:26f0f5746e1601f8ef7a70a1e97c1dfc7f3369f30166b3885adc4d0130e11d6e" [label="/bin/sh -c pip install -U protobuf==3.0.0b2" shape="box"];
  "sha256:268a6fe9788fa8152b83dfd6189cd9cb7ba31e6bd25f49305d1c6777454db237" [label="/bin/sh -c pip install asciitree" shape="box"];
  "sha256:8c3e509964b82cafb1576871d43501c49f988c02bb52a81dfee012e73f312656" [label="/bin/sh -c git clone --recursive https://github.com/tensorflow/models.git /root/models" shape="box"];
  "sha256:70d3b0abe70dde3754e3c8d258091fe288dffce6b2401e907f4aea56db115f97" [label="/bin/sh -c cd /root/models/syntaxnet/tensorflow && echo | ./configure" shape="box"];
  "sha256:2a126feffb843931ce68fa303a2d55c771e657e17a79549c2ba8916d4c4a195a" [label="/bin/sh -c cd /root/models/syntaxnet && bazel test syntaxnet/... util/utf8/..." shape="box"];
  "sha256:634e174866d4dbe7cf0a23e37c625cebad985c1fad7c29a640b4d2b14415b734" [label="mkdir{path=/root/models/syntaxnet}" shape="note"];
  "sha256:241a7fa30a2a54ee92cb98d2398498f011eeec50c3339fdbf5bcba0606df4f0f" [label="sha256:241a7fa30a2a54ee92cb98d2398498f011eeec50c3339fdbf5bcba0606df4f0f" shape="plaintext"];
  "sha256:9b7e71416452419c9c8c2a46ddd831b86c727218844a71cdb36f8a101f44ed23" -> "sha256:5c98e7b1a82c9bef453e29ee95c294a2e9453a8ca5dafa4a9d5f84ce9d2a6001" [label=""];
  "sha256:5c98e7b1a82c9bef453e29ee95c294a2e9453a8ca5dafa4a9d5f84ce9d2a6001" -> "sha256:a7af4fd6018258c98a52b3ea156fc82300627bfdd15cee695bcc4dc59dec1daf" [label=""];
  "sha256:a7af4fd6018258c98a52b3ea156fc82300627bfdd15cee695bcc4dc59dec1daf" -> "sha256:6c935c8d7def74962fe2f5a0512c1fd9240d1e016b0213c69c5f774060fe9db1" [label=""];
  "sha256:6c935c8d7def74962fe2f5a0512c1fd9240d1e016b0213c69c5f774060fe9db1" -> "sha256:1be469b91def844789f572ae795e034a5c071a56fa071f2017bebd1e38730a27" [label=""];
  "sha256:1be469b91def844789f572ae795e034a5c071a56fa071f2017bebd1e38730a27" -> "sha256:a955fd91cce6d2825fc78f7f1a670b05a885fd0790aff3cd31f510b987fcb9eb" [label=""];
  "sha256:a955fd91cce6d2825fc78f7f1a670b05a885fd0790aff3cd31f510b987fcb9eb" -> "sha256:26f0f5746e1601f8ef7a70a1e97c1dfc7f3369f30166b3885adc4d0130e11d6e" [label=""];
  "sha256:26f0f5746e1601f8ef7a70a1e97c1dfc7f3369f30166b3885adc4d0130e11d6e" -> "sha256:268a6fe9788fa8152b83dfd6189cd9cb7ba31e6bd25f49305d1c6777454db237" [label=""];
  "sha256:268a6fe9788fa8152b83dfd6189cd9cb7ba31e6bd25f49305d1c6777454db237" -> "sha256:8c3e509964b82cafb1576871d43501c49f988c02bb52a81dfee012e73f312656" [label=""];
  "sha256:8c3e509964b82cafb1576871d43501c49f988c02bb52a81dfee012e73f312656" -> "sha256:70d3b0abe70dde3754e3c8d258091fe288dffce6b2401e907f4aea56db115f97" [label=""];
  "sha256:70d3b0abe70dde3754e3c8d258091fe288dffce6b2401e907f4aea56db115f97" -> "sha256:2a126feffb843931ce68fa303a2d55c771e657e17a79549c2ba8916d4c4a195a" [label=""];
  "sha256:2a126feffb843931ce68fa303a2d55c771e657e17a79549c2ba8916d4c4a195a" -> "sha256:634e174866d4dbe7cf0a23e37c625cebad985c1fad7c29a640b4d2b14415b734" [label=""];
  "sha256:634e174866d4dbe7cf0a23e37c625cebad985c1fad7c29a640b4d2b14415b734" -> "sha256:241a7fa30a2a54ee92cb98d2398498f011eeec50c3339fdbf5bcba0606df4f0f" [label=""];
}

