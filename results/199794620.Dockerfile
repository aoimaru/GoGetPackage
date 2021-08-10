[app/sources/199794620.Dockerfile]
digraph {
  "sha256:84abc074a88a41655d928688aeec67f64f0974989f7a5ad2f930450682273497" [label="docker-image://docker.io/nvidia/cuda:9.1-cudnn7-devel-centos7" shape="ellipse"];
  "sha256:b7af1af316b680c2304478ae76e2c444fd4cc68cfb301cadc1a5434dead9bd91" [label="mkdir{path=/work/deps}" shape="note"];
  "sha256:8fa299c49a94f05426dcce585aad8697533f87b54097a00aca325757896d0ca5" [label="local://context" shape="ellipse"];
  "sha256:642017593575eabf443b4034bca0771aa4e711db744a0c5ccdbfd4056c4d61f0" [label="copy{src=/install/centos7_core.sh, dest=/work/}" shape="note"];
  "sha256:c298ec2cbcef283e50fab40367a03b1c4e9a103dc8ed4cc4189f8bf0e8508aa5" [label="/bin/sh -c /work/centos7_core.sh" shape="box"];
  "sha256:5c7881b3d426cc00635ffb4520a8d618c0106395d0825ce9f30f79d2c8ff4a8e" [label="copy{src=/install/centos7_python.sh, dest=/work/}" shape="note"];
  "sha256:9ff81bb3b36c1e7fcdb0ebcd5d08e9f0c32cf27146389ab7b5f90019722f0008" [label="/bin/sh -c /work/centos7_python.sh" shape="box"];
  "sha256:dcf1ff612d68700cce6e7584baac135bc14c49629d54e4ff42fae5d2b37cc37d" [label="copy{src=/install/centos7_adduser.sh, dest=/work/}" shape="note"];
  "sha256:b587997c92d4a9cca931e62cf59be4d1ba53a8a71ec2c70e15a907dfd7a29f55" [label="/bin/sh -c /work/centos7_adduser.sh" shape="box"];
  "sha256:61e768097e6552dc15879aa146d065050b99c5c7399443464642ecf090be42fe" [label="mkdir{path=/work/mxnet}" shape="note"];
  "sha256:1dd3033d6ee4934dc543a2b6763a1cab0eb72ae198452b3ba045c5f7ffb08776" [label="copy{src=/runtime_functions.sh, dest=/work/}" shape="note"];
  "sha256:ef070055ce424bf11189cdfb6e4570ff59846163e25178a8fc43dcff5ddac0cb" [label="sha256:ef070055ce424bf11189cdfb6e4570ff59846163e25178a8fc43dcff5ddac0cb" shape="plaintext"];
  "sha256:84abc074a88a41655d928688aeec67f64f0974989f7a5ad2f930450682273497" -> "sha256:b7af1af316b680c2304478ae76e2c444fd4cc68cfb301cadc1a5434dead9bd91" [label=""];
  "sha256:b7af1af316b680c2304478ae76e2c444fd4cc68cfb301cadc1a5434dead9bd91" -> "sha256:642017593575eabf443b4034bca0771aa4e711db744a0c5ccdbfd4056c4d61f0" [label=""];
  "sha256:8fa299c49a94f05426dcce585aad8697533f87b54097a00aca325757896d0ca5" -> "sha256:642017593575eabf443b4034bca0771aa4e711db744a0c5ccdbfd4056c4d61f0" [label=""];
  "sha256:642017593575eabf443b4034bca0771aa4e711db744a0c5ccdbfd4056c4d61f0" -> "sha256:c298ec2cbcef283e50fab40367a03b1c4e9a103dc8ed4cc4189f8bf0e8508aa5" [label=""];
  "sha256:c298ec2cbcef283e50fab40367a03b1c4e9a103dc8ed4cc4189f8bf0e8508aa5" -> "sha256:5c7881b3d426cc00635ffb4520a8d618c0106395d0825ce9f30f79d2c8ff4a8e" [label=""];
  "sha256:8fa299c49a94f05426dcce585aad8697533f87b54097a00aca325757896d0ca5" -> "sha256:5c7881b3d426cc00635ffb4520a8d618c0106395d0825ce9f30f79d2c8ff4a8e" [label=""];
  "sha256:5c7881b3d426cc00635ffb4520a8d618c0106395d0825ce9f30f79d2c8ff4a8e" -> "sha256:9ff81bb3b36c1e7fcdb0ebcd5d08e9f0c32cf27146389ab7b5f90019722f0008" [label=""];
  "sha256:9ff81bb3b36c1e7fcdb0ebcd5d08e9f0c32cf27146389ab7b5f90019722f0008" -> "sha256:dcf1ff612d68700cce6e7584baac135bc14c49629d54e4ff42fae5d2b37cc37d" [label=""];
  "sha256:8fa299c49a94f05426dcce585aad8697533f87b54097a00aca325757896d0ca5" -> "sha256:dcf1ff612d68700cce6e7584baac135bc14c49629d54e4ff42fae5d2b37cc37d" [label=""];
  "sha256:dcf1ff612d68700cce6e7584baac135bc14c49629d54e4ff42fae5d2b37cc37d" -> "sha256:b587997c92d4a9cca931e62cf59be4d1ba53a8a71ec2c70e15a907dfd7a29f55" [label=""];
  "sha256:b587997c92d4a9cca931e62cf59be4d1ba53a8a71ec2c70e15a907dfd7a29f55" -> "sha256:61e768097e6552dc15879aa146d065050b99c5c7399443464642ecf090be42fe" [label=""];
  "sha256:61e768097e6552dc15879aa146d065050b99c5c7399443464642ecf090be42fe" -> "sha256:1dd3033d6ee4934dc543a2b6763a1cab0eb72ae198452b3ba045c5f7ffb08776" [label=""];
  "sha256:8fa299c49a94f05426dcce585aad8697533f87b54097a00aca325757896d0ca5" -> "sha256:1dd3033d6ee4934dc543a2b6763a1cab0eb72ae198452b3ba045c5f7ffb08776" [label=""];
  "sha256:1dd3033d6ee4934dc543a2b6763a1cab0eb72ae198452b3ba045c5f7ffb08776" -> "sha256:ef070055ce424bf11189cdfb6e4570ff59846163e25178a8fc43dcff5ddac0cb" [label=""];
}

