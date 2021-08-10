[app/sources/363544394.Dockerfile]
digraph {
  "sha256:0aea9c90c6b3e001437b5496d55a0154ae37ed7967a97b6af0ca7072184b19d6" [label="docker-image://docker.io/lablup/kernel-base-python-minimal:3.6-ubuntu" shape="ellipse"];
  "sha256:2eaf7e663a740f14828c7bafc28d8c02adb64cac2085d11d3158ece8d56023f6" [label="/bin/sh -c apt-get update -y &&     apt-get install -y --no-install-recommends openjdk-8-jdk-headless &&     apt-get install -y         build-essential         curl         python         git-core         unzip zip" shape="box"];
  "sha256:25be12a88df723d4eb83c39f54e5df1b94e4d17f3d6f2f8df820f93da168c95f" [label="/bin/sh -c echo \"startup --batch\" >>/etc/bazel.bazelrc" shape="box"];
  "sha256:05a7550584f0dd268dbd930fa82956f834f367964dc5dbb35021253fb71f257e" [label="/bin/sh -c echo \"build --spawn_strategy=standalone --genrule_strategy=standalone\"     >> /etc/bazel.bazelrc" shape="box"];
  "sha256:f253854544f99f817a7983e281667df347fc0b9456cd8dd3f4454e43bf6ea076" [label="/bin/sh -c curl -SLO https://github.com/bazelbuild/bazel/releases/download/${BAZEL_VERSION}/bazel-${BAZEL_VERSION}-dist.zip &&     mkdir bazel-${BAZEL_VERSION} &&     unzip -qd bazel-${BAZEL_VERSION} bazel-${BAZEL_VERSION}-dist.zip &&     cd bazel-${BAZEL_VERSION} &&     bash compile.sh &&     cp -p output/bazel /usr/local/bin/ &&     ls -l /usr/local/bin/bazel*" shape="box"];
  "sha256:6fea6b46b0deb0f67401687b82dbce212d405b0352b805911b4b4fbe2508b4b4" [label="sha256:6fea6b46b0deb0f67401687b82dbce212d405b0352b805911b4b4fbe2508b4b4" shape="plaintext"];
  "sha256:0aea9c90c6b3e001437b5496d55a0154ae37ed7967a97b6af0ca7072184b19d6" -> "sha256:2eaf7e663a740f14828c7bafc28d8c02adb64cac2085d11d3158ece8d56023f6" [label=""];
  "sha256:2eaf7e663a740f14828c7bafc28d8c02adb64cac2085d11d3158ece8d56023f6" -> "sha256:25be12a88df723d4eb83c39f54e5df1b94e4d17f3d6f2f8df820f93da168c95f" [label=""];
  "sha256:25be12a88df723d4eb83c39f54e5df1b94e4d17f3d6f2f8df820f93da168c95f" -> "sha256:05a7550584f0dd268dbd930fa82956f834f367964dc5dbb35021253fb71f257e" [label=""];
  "sha256:05a7550584f0dd268dbd930fa82956f834f367964dc5dbb35021253fb71f257e" -> "sha256:f253854544f99f817a7983e281667df347fc0b9456cd8dd3f4454e43bf6ea076" [label=""];
  "sha256:f253854544f99f817a7983e281667df347fc0b9456cd8dd3f4454e43bf6ea076" -> "sha256:6fea6b46b0deb0f67401687b82dbce212d405b0352b805911b4b4fbe2508b4b4" [label=""];
}

