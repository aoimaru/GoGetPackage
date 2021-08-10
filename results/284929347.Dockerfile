[app/sources/284929347.Dockerfile]
digraph {
  "sha256:4b4bafb14312cc39586656c33372f621052d4f923d1e57628bc684b43caee446" [label="docker-image://docker.io/library/openjdk:8u181-jdk-alpine" shape="ellipse"];
  "sha256:ba8789bcebeefcc34476795bd357d1847442f8f44f1a7c47ff4dd4e99b08d326" [label="/bin/sh -c ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime &&     echo \"Asia/Shanghai\" > /etc/timezone" shape="box"];
  "sha256:f15f33617f504bb48318b006cccd6f9dd0ee8e725c4b66139ce9bc09a4c9f569" [label="mkdir{path=/home/apps}" shape="note"];
  "sha256:294caebc3a2e6d75ac4dd4b326d205b42507ce94e29bf22af1a0352414b5478a" [label="local://context" shape="ellipse"];
  "sha256:d4d23bde2edc1ce8d47560109978a79c0eb36864e91aac4497fb7b957d83b2c4" [label="copy{src=/target/fusionweather-1.0.0.jar, dest=/home/apps/}" shape="note"];
  "sha256:82569717d4e54dce7ecc71cc4fa80e6a805caa1700e973171e1415c69e9a3d36" [label="copy{src=/target/lib, dest=/home/apps/lib}" shape="note"];
  "sha256:6fb77e6046c0bfb3f9f3736df3bd92b07cda861475a8a3fb2c992ca8ddc2acbf" [label="copy{src=/start.sh, dest=/home/apps/}" shape="note"];
  "sha256:a1c08d635877c0646b37fb4ec6278cb417d2c6f6dcc0754c1a19a1a443cae05a" [label="sha256:a1c08d635877c0646b37fb4ec6278cb417d2c6f6dcc0754c1a19a1a443cae05a" shape="plaintext"];
  "sha256:4b4bafb14312cc39586656c33372f621052d4f923d1e57628bc684b43caee446" -> "sha256:ba8789bcebeefcc34476795bd357d1847442f8f44f1a7c47ff4dd4e99b08d326" [label=""];
  "sha256:ba8789bcebeefcc34476795bd357d1847442f8f44f1a7c47ff4dd4e99b08d326" -> "sha256:f15f33617f504bb48318b006cccd6f9dd0ee8e725c4b66139ce9bc09a4c9f569" [label=""];
  "sha256:f15f33617f504bb48318b006cccd6f9dd0ee8e725c4b66139ce9bc09a4c9f569" -> "sha256:d4d23bde2edc1ce8d47560109978a79c0eb36864e91aac4497fb7b957d83b2c4" [label=""];
  "sha256:294caebc3a2e6d75ac4dd4b326d205b42507ce94e29bf22af1a0352414b5478a" -> "sha256:d4d23bde2edc1ce8d47560109978a79c0eb36864e91aac4497fb7b957d83b2c4" [label=""];
  "sha256:d4d23bde2edc1ce8d47560109978a79c0eb36864e91aac4497fb7b957d83b2c4" -> "sha256:82569717d4e54dce7ecc71cc4fa80e6a805caa1700e973171e1415c69e9a3d36" [label=""];
  "sha256:294caebc3a2e6d75ac4dd4b326d205b42507ce94e29bf22af1a0352414b5478a" -> "sha256:82569717d4e54dce7ecc71cc4fa80e6a805caa1700e973171e1415c69e9a3d36" [label=""];
  "sha256:82569717d4e54dce7ecc71cc4fa80e6a805caa1700e973171e1415c69e9a3d36" -> "sha256:6fb77e6046c0bfb3f9f3736df3bd92b07cda861475a8a3fb2c992ca8ddc2acbf" [label=""];
  "sha256:294caebc3a2e6d75ac4dd4b326d205b42507ce94e29bf22af1a0352414b5478a" -> "sha256:6fb77e6046c0bfb3f9f3736df3bd92b07cda861475a8a3fb2c992ca8ddc2acbf" [label=""];
  "sha256:6fb77e6046c0bfb3f9f3736df3bd92b07cda861475a8a3fb2c992ca8ddc2acbf" -> "sha256:a1c08d635877c0646b37fb4ec6278cb417d2c6f6dcc0754c1a19a1a443cae05a" [label=""];
}

