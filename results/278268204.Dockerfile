[app/sources/278268204.Dockerfile]
digraph {
  "sha256:ef233d6a7d0a9054ca782792f3ae2c3b2e8940193003edb0db3ffd10490a64a7" [label="docker-image://docker.io/library/ubuntu:17.10" shape="ellipse"];
  "sha256:15d346d8509339731f29230df824b4c64a2928b32132424380988bef86a511cc" [label="/bin/sh -c apt update; apt install -y wget;   wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key|apt-key add -;  echo 'deb http://apt.llvm.org/xenial/ llvm-toolchain-artful-5.0 main' >> /etc/apt/sources.list ; apt update;  apt install -y clang-5.0 lldb-5.0 lld-5.0 libc++-dev git cmake python-pip liblz4-dev; apt clean all" shape="box"];
  "sha256:477c9e9ab2a93dc22ee6cf2f7ea6318da59cc4880a8bda71d8fde630317d7657" [label="local://context" shape="ellipse"];
  "sha256:79d1419c40e22c368e40039cb06690080b74c551ed4de4a7937abfce216ea678" [label="copy{src=/, dest=/nonexistent/Mephisto}" shape="note"];
  "sha256:e2441a27c6150f5fda1ee46732fe3765c711b70cb97edf1b12b79a1a42e5cf4b" [label="/bin/sh -c chown nobody:nogroup /nonexistent -R" shape="box"];
  "sha256:3db267bbc974d87f895b0ca35acf6ce54429769fa09408793a9cd71ab0a94bed" [label="/bin/sh -c cd /nonexistent; git clone --depth 1 https://github.com/reswitched/unicorn.git;  cd unicorn;  UNICORN_ARCHS=\"aarch64\" ./make.sh;  PREFIX=/nonexistent/usr ./make.sh install" shape="box"];
  "sha256:8bf04c0dd27c371faa4b7c6f414f3b44d7f639caad6725cf0514ec06699d25ca" [label="/bin/sh -c cd /nonexistent/Mephisto;  pip install -r requirements.txt;  EXTRA_CC_FLAGS=\"-I ../usr/include\" EXTRA_LD_FLAGS=\"-L ../usr/lib\" make" shape="box"];
  "sha256:80b3e60128848d650d547c74eb0259ce767837811b31aaf62b703f5cd26ef3d4" [label="sha256:80b3e60128848d650d547c74eb0259ce767837811b31aaf62b703f5cd26ef3d4" shape="plaintext"];
  "sha256:ef233d6a7d0a9054ca782792f3ae2c3b2e8940193003edb0db3ffd10490a64a7" -> "sha256:15d346d8509339731f29230df824b4c64a2928b32132424380988bef86a511cc" [label=""];
  "sha256:15d346d8509339731f29230df824b4c64a2928b32132424380988bef86a511cc" -> "sha256:79d1419c40e22c368e40039cb06690080b74c551ed4de4a7937abfce216ea678" [label=""];
  "sha256:477c9e9ab2a93dc22ee6cf2f7ea6318da59cc4880a8bda71d8fde630317d7657" -> "sha256:79d1419c40e22c368e40039cb06690080b74c551ed4de4a7937abfce216ea678" [label=""];
  "sha256:79d1419c40e22c368e40039cb06690080b74c551ed4de4a7937abfce216ea678" -> "sha256:e2441a27c6150f5fda1ee46732fe3765c711b70cb97edf1b12b79a1a42e5cf4b" [label=""];
  "sha256:e2441a27c6150f5fda1ee46732fe3765c711b70cb97edf1b12b79a1a42e5cf4b" -> "sha256:3db267bbc974d87f895b0ca35acf6ce54429769fa09408793a9cd71ab0a94bed" [label=""];
  "sha256:3db267bbc974d87f895b0ca35acf6ce54429769fa09408793a9cd71ab0a94bed" -> "sha256:8bf04c0dd27c371faa4b7c6f414f3b44d7f639caad6725cf0514ec06699d25ca" [label=""];
  "sha256:8bf04c0dd27c371faa4b7c6f414f3b44d7f639caad6725cf0514ec06699d25ca" -> "sha256:80b3e60128848d650d547c74eb0259ce767837811b31aaf62b703f5cd26ef3d4" [label=""];
}

