[app/sources/405726611.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:16a00adcffa63e88c61c28c597b0916fe9ecd86fc56e53f02952e9880f728e9c" [label="/bin/sh -c apt-get update &&   apt-get -y dist-upgrade &&   apt-get install -y software-properties-common &&   add-apt-repository -y ppa:marutter/rrutter3.5 &&   apt-get update &&   DEBIAN_FRONTEND=noninteractive apt-get -yq install r-base-dev   language-pack-en-base cloc curl parallel vim wget debian-keyring" shape="box"];
  "sha256:8c560ab871c71ac7877e293672ab18fcaafce9d71be7ab888d66f986a489ec23" [label="/bin/sh -c gpg --recv-keys 3B1C3B572302BCB1 &&     gpg --armor --export 3B1C3B572302BCB1 | apt-key add -" shape="box"];
  "sha256:120dda87a0ad52c8b8914b6987bfb34fde10960e91c7a001e0400dd2dc0a44f3" [label="/bin/sh -c touch /usr/share/man/man3/MPI_Comm_set_name_lam4-dev.3.gz" shape="box"];
  "sha256:1bf4ca6259f7eb5e5f4f549c6b33346e4ec17127f2ff79a50436ce02f206416b" [label="/bin/sh -c echo \"deb http://statmath.wu.ac.at/AASC/debian testing main non-free\" > /etc/apt/sources.list.d/rcheckserver.list &&     apt-get -y update &&     DEBIAN_FRONTEND=noninteractive apt-get -yq install rcheckserver" shape="box"];
  "sha256:58caad63c7116eca785a552188e191da15bee6de81024a6bd965559ff0970f0e" [label="sha256:58caad63c7116eca785a552188e191da15bee6de81024a6bd965559ff0970f0e" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:16a00adcffa63e88c61c28c597b0916fe9ecd86fc56e53f02952e9880f728e9c" [label=""];
  "sha256:16a00adcffa63e88c61c28c597b0916fe9ecd86fc56e53f02952e9880f728e9c" -> "sha256:8c560ab871c71ac7877e293672ab18fcaafce9d71be7ab888d66f986a489ec23" [label=""];
  "sha256:8c560ab871c71ac7877e293672ab18fcaafce9d71be7ab888d66f986a489ec23" -> "sha256:120dda87a0ad52c8b8914b6987bfb34fde10960e91c7a001e0400dd2dc0a44f3" [label=""];
  "sha256:120dda87a0ad52c8b8914b6987bfb34fde10960e91c7a001e0400dd2dc0a44f3" -> "sha256:1bf4ca6259f7eb5e5f4f549c6b33346e4ec17127f2ff79a50436ce02f206416b" [label=""];
  "sha256:1bf4ca6259f7eb5e5f4f549c6b33346e4ec17127f2ff79a50436ce02f206416b" -> "sha256:58caad63c7116eca785a552188e191da15bee6de81024a6bd965559ff0970f0e" [label=""];
}

