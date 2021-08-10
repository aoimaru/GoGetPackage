[app/sources/471041410.Dockerfile]
digraph {
  "sha256:d3d2739ae58b9c011b697aa1664e7149d1b78532c744cdaadc6032cf1b0d30fb" [label="docker-image://docker.io/library/node:11-slim" shape="ellipse"];
  "sha256:0cb42ce24f94b3424d5204a179828a86458893c6d1aaaf87e2508094265bed42" [label="/bin/sh -c wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | apt-key add - &&     echo \"deb http://apt.llvm.org/stretch/ llvm-toolchain-stretch-7 main\" | tee -a /etc/apt/sources.list &&     apt update -qq &&      apt install libz-dev cmake clang git llvm-7 llvm-7-dev -y &&     ln -s /usr/bin/llvm-config-7 /usr/bin/llvm-config" shape="box"];
  "sha256:034c8b326b232c77ae8b0785b38b1d4a28c9013809a753c1457ca6da18933f5e" [label="sha256:034c8b326b232c77ae8b0785b38b1d4a28c9013809a753c1457ca6da18933f5e" shape="plaintext"];
  "sha256:d3d2739ae58b9c011b697aa1664e7149d1b78532c744cdaadc6032cf1b0d30fb" -> "sha256:0cb42ce24f94b3424d5204a179828a86458893c6d1aaaf87e2508094265bed42" [label=""];
  "sha256:0cb42ce24f94b3424d5204a179828a86458893c6d1aaaf87e2508094265bed42" -> "sha256:034c8b326b232c77ae8b0785b38b1d4a28c9013809a753c1457ca6da18933f5e" [label=""];
}

