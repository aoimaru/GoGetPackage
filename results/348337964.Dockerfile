[app/sources/348337964.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:3c62b8f4d6abdc38398f5a6c46ecb36752785bb112e52ce8c9a1c942d970608c" [label="/bin/sh -c apt-get update -qq &&   apt-get install -y     git bzip2 wget     g++ make python python3     zlib1g-dev automake autoconf libtool subversion     libatlas-base-dev" shape="box"];
  "sha256:518015612b55564170c13b1089825cf233e3862e175967aef3cd78e69cd03b8e" [label="mkdir{path=/usr/local}" shape="note"];
  "sha256:d839062e281a5da46e7b06e615c48aa66aa8732808f1bd5456660ef280ab496a" [label="/bin/sh -c git clone https://github.com/kaldi-asr/kaldi.git" shape="box"];
  "sha256:40662b106d65c47801285335ece0bbfa8abcb0aee92ca3e91c112aec8cdaf850" [label="mkdir{path=/usr/local/kaldi/tools}" shape="note"];
  "sha256:7f470f668722338f9546651f2c029d2a5f1deca74c215808ead0832939951313" [label="/bin/sh -c extras/check_dependencies.sh" shape="box"];
  "sha256:031c29f3061fc1731f8e0a5abb851bc3d953b071972f9fa6d795b3ab991104e9" [label="/bin/sh -c make -j $CPU_CORE" shape="box"];
  "sha256:97f7d62db58e3935d243b75393037ae36d7cfdb0005de838556d4e1ecb11cb17" [label="mkdir{path=/usr/local/kaldi/src}" shape="note"];
  "sha256:b4757ae4355240f88a8f0eb4d0f2ec03607fcae7e3888f20b88846d955717f93" [label="/bin/sh -c ./configure && make depend -j $CPU_CORE && make -j $CPU_CORE" shape="box"];
  "sha256:3836116328cb82e83d9cd4fe53b1119cd54804d5a708497a423bab865afe46cb" [label="sha256:3836116328cb82e83d9cd4fe53b1119cd54804d5a708497a423bab865afe46cb" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:3c62b8f4d6abdc38398f5a6c46ecb36752785bb112e52ce8c9a1c942d970608c" [label=""];
  "sha256:3c62b8f4d6abdc38398f5a6c46ecb36752785bb112e52ce8c9a1c942d970608c" -> "sha256:518015612b55564170c13b1089825cf233e3862e175967aef3cd78e69cd03b8e" [label=""];
  "sha256:518015612b55564170c13b1089825cf233e3862e175967aef3cd78e69cd03b8e" -> "sha256:d839062e281a5da46e7b06e615c48aa66aa8732808f1bd5456660ef280ab496a" [label=""];
  "sha256:d839062e281a5da46e7b06e615c48aa66aa8732808f1bd5456660ef280ab496a" -> "sha256:40662b106d65c47801285335ece0bbfa8abcb0aee92ca3e91c112aec8cdaf850" [label=""];
  "sha256:40662b106d65c47801285335ece0bbfa8abcb0aee92ca3e91c112aec8cdaf850" -> "sha256:7f470f668722338f9546651f2c029d2a5f1deca74c215808ead0832939951313" [label=""];
  "sha256:7f470f668722338f9546651f2c029d2a5f1deca74c215808ead0832939951313" -> "sha256:031c29f3061fc1731f8e0a5abb851bc3d953b071972f9fa6d795b3ab991104e9" [label=""];
  "sha256:031c29f3061fc1731f8e0a5abb851bc3d953b071972f9fa6d795b3ab991104e9" -> "sha256:97f7d62db58e3935d243b75393037ae36d7cfdb0005de838556d4e1ecb11cb17" [label=""];
  "sha256:97f7d62db58e3935d243b75393037ae36d7cfdb0005de838556d4e1ecb11cb17" -> "sha256:b4757ae4355240f88a8f0eb4d0f2ec03607fcae7e3888f20b88846d955717f93" [label=""];
  "sha256:b4757ae4355240f88a8f0eb4d0f2ec03607fcae7e3888f20b88846d955717f93" -> "sha256:3836116328cb82e83d9cd4fe53b1119cd54804d5a708497a423bab865afe46cb" [label=""];
}

