[app/sources/151774617.Dockerfile]
digraph {
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" [label="docker-image://docker.io/library/golang:latest" shape="ellipse"];
  "sha256:ddfaa6661f34327a9be2591125ed762dd23fe07ba7436414989ec138ccaac79f" [label="/bin/sh -c apt-get install git" shape="box"];
  "sha256:2cf85012c043be85e21e15a16d96aa272d53b58c0113f932e4f5aa7885f0b2db" [label="/bin/sh -c mkdir /app" shape="box"];
  "sha256:75652fc895308df002d91dd5f65ec711cee90128023f8bcf74e38480e9d7a4c2" [label="local://context" shape="ellipse"];
  "sha256:e7ee785040154171e84ac11fcfcb0c4acc7fdd166fbf41524169abc3c934aaf7" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:830536e1a973b727b53d16b9e543b93ec1a18694437e37d4068241fd940834ea" [label="mkdir{path=/app}" shape="note"];
  "sha256:6e983037106eaec9830ae08daaf9a070be591e887fd93ae250fbbe8ebaeeff21" [label="/bin/sh -c mkdir -p files" shape="box"];
  "sha256:3e1d16fb036f9b31732ceb09359338b3627a3d6921432421d38a4f1ce7956249" [label="/bin/sh -c git init files" shape="box"];
  "sha256:3c5c1cfc66ba536466a51943fefb4cb7eaa4c968732e1348d53cd1c75c8d5343" [label="/bin/sh -c git config --global user.email \"system@dockercontainer\"" shape="box"];
  "sha256:43e578721326e8937a934136a17c34c637d17aa90dbf3c2ec763575191ce594b" [label="/bin/sh -c git config --global user.name \"system\"" shape="box"];
  "sha256:cf419e88806d8932f91c09df7718791f4d6092cccee286604a5139bf345775db" [label="/bin/sh -c go get ." shape="box"];
  "sha256:fe4fa55a4136aefd557a652ecb6b3d436e200084a41a162d0269cb25e988b519" [label="/bin/sh -c go build -o main ." shape="box"];
  "sha256:b7d200fac0877e16ed029be41eed6815ec038fd910ab3f9104ba1694170e6c7a" [label="sha256:b7d200fac0877e16ed029be41eed6815ec038fd910ab3f9104ba1694170e6c7a" shape="plaintext"];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" -> "sha256:ddfaa6661f34327a9be2591125ed762dd23fe07ba7436414989ec138ccaac79f" [label=""];
  "sha256:ddfaa6661f34327a9be2591125ed762dd23fe07ba7436414989ec138ccaac79f" -> "sha256:2cf85012c043be85e21e15a16d96aa272d53b58c0113f932e4f5aa7885f0b2db" [label=""];
  "sha256:2cf85012c043be85e21e15a16d96aa272d53b58c0113f932e4f5aa7885f0b2db" -> "sha256:e7ee785040154171e84ac11fcfcb0c4acc7fdd166fbf41524169abc3c934aaf7" [label=""];
  "sha256:75652fc895308df002d91dd5f65ec711cee90128023f8bcf74e38480e9d7a4c2" -> "sha256:e7ee785040154171e84ac11fcfcb0c4acc7fdd166fbf41524169abc3c934aaf7" [label=""];
  "sha256:e7ee785040154171e84ac11fcfcb0c4acc7fdd166fbf41524169abc3c934aaf7" -> "sha256:830536e1a973b727b53d16b9e543b93ec1a18694437e37d4068241fd940834ea" [label=""];
  "sha256:830536e1a973b727b53d16b9e543b93ec1a18694437e37d4068241fd940834ea" -> "sha256:6e983037106eaec9830ae08daaf9a070be591e887fd93ae250fbbe8ebaeeff21" [label=""];
  "sha256:6e983037106eaec9830ae08daaf9a070be591e887fd93ae250fbbe8ebaeeff21" -> "sha256:3e1d16fb036f9b31732ceb09359338b3627a3d6921432421d38a4f1ce7956249" [label=""];
  "sha256:3e1d16fb036f9b31732ceb09359338b3627a3d6921432421d38a4f1ce7956249" -> "sha256:3c5c1cfc66ba536466a51943fefb4cb7eaa4c968732e1348d53cd1c75c8d5343" [label=""];
  "sha256:3c5c1cfc66ba536466a51943fefb4cb7eaa4c968732e1348d53cd1c75c8d5343" -> "sha256:43e578721326e8937a934136a17c34c637d17aa90dbf3c2ec763575191ce594b" [label=""];
  "sha256:43e578721326e8937a934136a17c34c637d17aa90dbf3c2ec763575191ce594b" -> "sha256:cf419e88806d8932f91c09df7718791f4d6092cccee286604a5139bf345775db" [label=""];
  "sha256:cf419e88806d8932f91c09df7718791f4d6092cccee286604a5139bf345775db" -> "sha256:fe4fa55a4136aefd557a652ecb6b3d436e200084a41a162d0269cb25e988b519" [label=""];
  "sha256:fe4fa55a4136aefd557a652ecb6b3d436e200084a41a162d0269cb25e988b519" -> "sha256:b7d200fac0877e16ed029be41eed6815ec038fd910ab3f9104ba1694170e6c7a" [label=""];
}

