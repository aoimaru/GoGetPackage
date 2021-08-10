[app/sources/301302146.Dockerfile]
digraph {
  "sha256:c4887a24c05e66b3154ab6ffd4c339bcaebfbbd749190fe265725f4658f3de7d" [label="docker-image://docker.io/library/ubuntu:17.04" shape="ellipse"];
  "sha256:eec954c19d53f5692f16606a12297f7738f1b70fe21e696aa45316578b2d74b7" [label="/bin/sh -c apt-get update &&    apt-get install -y wget python3.5 gcc-4.9 gcc-5 g++-4.9 g++-5 cmake less python3-pip python3-dev    build-essential git pkgconf    libopenblas-dev liblapack-dev    maven default-jdk" shape="box"];
  "sha256:7450abb30501419b22c88f59829733b4d8b0a7733c69f92d4b80b1e8ec9e7549" [label="/bin/sh -c rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:508068c688eed3fc6314521062c2760dbf2634101c265a8ba798705db9dfe21a" [label="mkdir{path=/work}" shape="note"];
  "sha256:a452efceca102fcf9aac8f2f614d75292dbfd635d450696be84acb94080a8917" [label="local://context" shape="ellipse"];
  "sha256:8d899223327dabd3a4dd2ed57505af2d465d7c62196035af1a522a2e6be7d91a" [label="copy{src=/mxnet, dest=/work/mxnet}" shape="note"];
  "sha256:ef69ba01d1564194362c752f3f2bdbb067085ca66990038c5e6f73a65b754878" [label="mkdir{path=/work/mxnet}" shape="note"];
  "sha256:2786f737f016124e558d00deec65900d38a09d4d6d3f2db72bf1f706a11541c3" [label="/bin/sh -c make -j$(nproc) $BUILD_OPTS" shape="box"];
  "sha256:1f0ffe6f75cde86c7b560e15d5d8ed2e69e98467ec22de8af751068352fa5972" [label="mkdir{path=/work/build}" shape="note"];
  "sha256:39da27971016aeff23eb4106cb48b448b2f76220af64795ea489bac1eac59b18" [label="/bin/sh -c cp /work/mxnet/lib/* ." shape="box"];
  "sha256:aae61a2d1df7b56db8f1ea7692ef3b58b568ec35a045b354a884a62e402c647d" [label="sha256:aae61a2d1df7b56db8f1ea7692ef3b58b568ec35a045b354a884a62e402c647d" shape="plaintext"];
  "sha256:c4887a24c05e66b3154ab6ffd4c339bcaebfbbd749190fe265725f4658f3de7d" -> "sha256:eec954c19d53f5692f16606a12297f7738f1b70fe21e696aa45316578b2d74b7" [label=""];
  "sha256:eec954c19d53f5692f16606a12297f7738f1b70fe21e696aa45316578b2d74b7" -> "sha256:7450abb30501419b22c88f59829733b4d8b0a7733c69f92d4b80b1e8ec9e7549" [label=""];
  "sha256:7450abb30501419b22c88f59829733b4d8b0a7733c69f92d4b80b1e8ec9e7549" -> "sha256:508068c688eed3fc6314521062c2760dbf2634101c265a8ba798705db9dfe21a" [label=""];
  "sha256:508068c688eed3fc6314521062c2760dbf2634101c265a8ba798705db9dfe21a" -> "sha256:8d899223327dabd3a4dd2ed57505af2d465d7c62196035af1a522a2e6be7d91a" [label=""];
  "sha256:a452efceca102fcf9aac8f2f614d75292dbfd635d450696be84acb94080a8917" -> "sha256:8d899223327dabd3a4dd2ed57505af2d465d7c62196035af1a522a2e6be7d91a" [label=""];
  "sha256:8d899223327dabd3a4dd2ed57505af2d465d7c62196035af1a522a2e6be7d91a" -> "sha256:ef69ba01d1564194362c752f3f2bdbb067085ca66990038c5e6f73a65b754878" [label=""];
  "sha256:ef69ba01d1564194362c752f3f2bdbb067085ca66990038c5e6f73a65b754878" -> "sha256:2786f737f016124e558d00deec65900d38a09d4d6d3f2db72bf1f706a11541c3" [label=""];
  "sha256:2786f737f016124e558d00deec65900d38a09d4d6d3f2db72bf1f706a11541c3" -> "sha256:1f0ffe6f75cde86c7b560e15d5d8ed2e69e98467ec22de8af751068352fa5972" [label=""];
  "sha256:1f0ffe6f75cde86c7b560e15d5d8ed2e69e98467ec22de8af751068352fa5972" -> "sha256:39da27971016aeff23eb4106cb48b448b2f76220af64795ea489bac1eac59b18" [label=""];
  "sha256:39da27971016aeff23eb4106cb48b448b2f76220af64795ea489bac1eac59b18" -> "sha256:aae61a2d1df7b56db8f1ea7692ef3b58b568ec35a045b354a884a62e402c647d" [label=""];
}

