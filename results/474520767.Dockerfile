[app/sources/474520767.Dockerfile]
digraph {
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" [label="docker-image://docker.io/library/ubuntu:xenial" shape="ellipse"];
  "sha256:d004b89fce7f3dd356e4a0480b6861601fcebdae348dfd2a21e929604205c6fd" [label="/bin/sh -c apt-get update \t&& apt-get install -y locales clang-5.0 g++ llvm-5.0-dev libboost-program-options-dev libboost-filesystem-dev make flexc++ bisonc++ python3 gdb ne \t&& locale-gen en_US.UTF-8 && update-locale en_US.UTF-8 \t&& rm -rf /var/lib/apt/lists/* /var/lib/dpkg/info/*" shape="box"];
  "sha256:8fee5f9d7ad901fc6354377c0c169536e0d16acddfbebb8552f4b5932581631d" [label="sha256:8fee5f9d7ad901fc6354377c0c169536e0d16acddfbebb8552f4b5932581631d" shape="plaintext"];
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" -> "sha256:d004b89fce7f3dd356e4a0480b6861601fcebdae348dfd2a21e929604205c6fd" [label=""];
  "sha256:d004b89fce7f3dd356e4a0480b6861601fcebdae348dfd2a21e929604205c6fd" -> "sha256:8fee5f9d7ad901fc6354377c0c169536e0d16acddfbebb8552f4b5932581631d" [label=""];
}

