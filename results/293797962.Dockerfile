[app/sources/293797962.Dockerfile]
digraph {
  "sha256:9159ada8626990238f54df502ce26b55ba0045b6e5778a56db70df6ae614b037" [label="docker-image://docker.io/nvidia/cuda:8.0-devel-centos7" shape="ellipse"];
  "sha256:a2da8f68ad79614a5bf418a76945c95969c84e32700c8159f60ff8b7e1af2a04" [label="/bin/sh -c yum-config-manager --add-repo https://yum.repos.intel.com/mkl/setup/intel-mkl.repo" shape="box"];
  "sha256:aabaac6cbe741e7c6510bf4ef387e9d3a86f245da4088328ee01733628100004" [label="/bin/sh -c rpm --import https://yum.repos.intel.com/intel-gpg-keys/GPG-PUB-KEY-INTEL-SW-PRODUCTS-2019.PUB" shape="box"];
  "sha256:2119b05cd32344e2c0ea8b400a76d77d0a388d67e9df179617da3aabc475dddf" [label="/bin/sh -c yum install -y intel-mkl-2019.3-062" shape="box"];
  "sha256:755516ba51f0e90cf859de96e8ae69981cec318ac0b9cfb87a501fd30950189b" [label="/bin/sh -c yum install -y gcc-c++ make swig3" shape="box"];
  "sha256:be9dea76a8e460a0a1324f943946357455c029c338484a0899ff460ace4e5b96" [label="/bin/sh -c yum install -y python-devel numpy" shape="box"];
  "sha256:1a3314258568d6590889903ab9493ad3e6992fcbf744fa4ecf6086510e2c9c35" [label="local://context" shape="ellipse"];
  "sha256:7e14810fc013bc6ee7cad052e952f27332ec2bfc380211a0121efe5b365c62cf" [label="copy{src=/, dest=/opt/faiss}" shape="note"];
  "sha256:4cedf40df1af9f5b0d1f0b8351575c165fe82ec791373b170d93788a702e06c2" [label="mkdir{path=/opt/faiss}" shape="note"];
  "sha256:e52f9c68374c499430702ddcec712ec06d9d826d5fda451fcf344c5b07e09944" [label="/bin/sh -c ./configure --prefix=/usr --libdir=/usr/lib64 --without-cuda" shape="box"];
  "sha256:fb39477a46413de6b7be6c514ca3fd82955fde29a0542ee8b026ed0356109d46" [label="/bin/sh -c make -j $(nproc)" shape="box"];
  "sha256:5de6a970a6fd398e4d7add7fa8ac5f5f2bea301f08eb1ba08bb2d008ee22eb90" [label="/bin/sh -c make -C python" shape="box"];
  "sha256:7f569d4b130f13466eb0d3fb3880b87483845d022abea7da8f710ff8703e2e28" [label="/bin/sh -c make test" shape="box"];
  "sha256:d2161f546bd2fabd182e5d52f55af27f70d2a863ee6145ab7eb1b6249a210638" [label="/bin/sh -c make install" shape="box"];
  "sha256:67baced214098fb06b7e389e6cf2e6ff4fdedba6e27a98f7f53ce252cf07ef48" [label="/bin/sh -c make -C demos demo_ivfpq_indexing && ./demos/demo_ivfpq_indexing" shape="box"];
  "sha256:27cd92f6ed532fb664e3bfb9558c9d17c469b34236963758ba988f35f7d20d4e" [label="sha256:27cd92f6ed532fb664e3bfb9558c9d17c469b34236963758ba988f35f7d20d4e" shape="plaintext"];
  "sha256:9159ada8626990238f54df502ce26b55ba0045b6e5778a56db70df6ae614b037" -> "sha256:a2da8f68ad79614a5bf418a76945c95969c84e32700c8159f60ff8b7e1af2a04" [label=""];
  "sha256:a2da8f68ad79614a5bf418a76945c95969c84e32700c8159f60ff8b7e1af2a04" -> "sha256:aabaac6cbe741e7c6510bf4ef387e9d3a86f245da4088328ee01733628100004" [label=""];
  "sha256:aabaac6cbe741e7c6510bf4ef387e9d3a86f245da4088328ee01733628100004" -> "sha256:2119b05cd32344e2c0ea8b400a76d77d0a388d67e9df179617da3aabc475dddf" [label=""];
  "sha256:2119b05cd32344e2c0ea8b400a76d77d0a388d67e9df179617da3aabc475dddf" -> "sha256:755516ba51f0e90cf859de96e8ae69981cec318ac0b9cfb87a501fd30950189b" [label=""];
  "sha256:755516ba51f0e90cf859de96e8ae69981cec318ac0b9cfb87a501fd30950189b" -> "sha256:be9dea76a8e460a0a1324f943946357455c029c338484a0899ff460ace4e5b96" [label=""];
  "sha256:be9dea76a8e460a0a1324f943946357455c029c338484a0899ff460ace4e5b96" -> "sha256:7e14810fc013bc6ee7cad052e952f27332ec2bfc380211a0121efe5b365c62cf" [label=""];
  "sha256:1a3314258568d6590889903ab9493ad3e6992fcbf744fa4ecf6086510e2c9c35" -> "sha256:7e14810fc013bc6ee7cad052e952f27332ec2bfc380211a0121efe5b365c62cf" [label=""];
  "sha256:7e14810fc013bc6ee7cad052e952f27332ec2bfc380211a0121efe5b365c62cf" -> "sha256:4cedf40df1af9f5b0d1f0b8351575c165fe82ec791373b170d93788a702e06c2" [label=""];
  "sha256:4cedf40df1af9f5b0d1f0b8351575c165fe82ec791373b170d93788a702e06c2" -> "sha256:e52f9c68374c499430702ddcec712ec06d9d826d5fda451fcf344c5b07e09944" [label=""];
  "sha256:e52f9c68374c499430702ddcec712ec06d9d826d5fda451fcf344c5b07e09944" -> "sha256:fb39477a46413de6b7be6c514ca3fd82955fde29a0542ee8b026ed0356109d46" [label=""];
  "sha256:fb39477a46413de6b7be6c514ca3fd82955fde29a0542ee8b026ed0356109d46" -> "sha256:5de6a970a6fd398e4d7add7fa8ac5f5f2bea301f08eb1ba08bb2d008ee22eb90" [label=""];
  "sha256:5de6a970a6fd398e4d7add7fa8ac5f5f2bea301f08eb1ba08bb2d008ee22eb90" -> "sha256:7f569d4b130f13466eb0d3fb3880b87483845d022abea7da8f710ff8703e2e28" [label=""];
  "sha256:7f569d4b130f13466eb0d3fb3880b87483845d022abea7da8f710ff8703e2e28" -> "sha256:d2161f546bd2fabd182e5d52f55af27f70d2a863ee6145ab7eb1b6249a210638" [label=""];
  "sha256:d2161f546bd2fabd182e5d52f55af27f70d2a863ee6145ab7eb1b6249a210638" -> "sha256:67baced214098fb06b7e389e6cf2e6ff4fdedba6e27a98f7f53ce252cf07ef48" [label=""];
  "sha256:67baced214098fb06b7e389e6cf2e6ff4fdedba6e27a98f7f53ce252cf07ef48" -> "sha256:27cd92f6ed532fb664e3bfb9558c9d17c469b34236963758ba988f35f7d20d4e" [label=""];
}

