[app/sources/365808661.Dockerfile]
digraph {
  "sha256:f7ca40a421372cfba586482f432bde258bf377a3a7cc932ad25cd89e82583053" [label="docker-image://docker.io/library/golang:1.10" shape="ellipse"];
  "sha256:f126a57bf7fbcf661cd3bfaf3cb8f20fed29661eb17f27615ed4b92ce298a880" [label="/bin/sh -c apt-get update &&     apt-get install -y       build-essential       curl       git       awscli" shape="box"];
  "sha256:d1356949b4752318200de36e57202023c4be450dd81094a1f047ee9a222f49db" [label="/bin/sh -c curl https://raw.githubusercontent.com/golang/dep/master/install.sh | sh" shape="box"];
  "sha256:f391a369ebe868de8092eafdf9474daf71063dcb4f1a03c9a1d755d7357a34a4" [label="/bin/sh -c mkdir -p /go/src/github.com/nanopack/logvac" shape="box"];
  "sha256:e0eb118c257947b4b74c55f2772bab8c3a46cce37955a9c46bd912548a78c683" [label="mkdir{path=/go/src/github.com/nanopack/logvac}" shape="note"];
  "sha256:37949326240bf60505ba6d5ab9868589ca43afe953e2bdcdbbd4011d88604a4e" [label="local://context" shape="ellipse"];
  "sha256:06ad4eb7a8f66594ba990661672b2cf5133193962ab60f15d771f8735d37732b" [label="copy{src=/, dest=/go/src/github.com/nanopack/logvac/}" shape="note"];
  "sha256:dc7e7c6d8a6fb8d3134e933d35da65a3ec4e0e9cd44a941a04f95ec3b40dce2b" [label="/bin/sh -c make deps" shape="box"];
  "sha256:a1909d8247018b7bc02f5e95f4790b30545985b588de48ae8e83d426dbdb8094" [label="sha256:a1909d8247018b7bc02f5e95f4790b30545985b588de48ae8e83d426dbdb8094" shape="plaintext"];
  "sha256:f7ca40a421372cfba586482f432bde258bf377a3a7cc932ad25cd89e82583053" -> "sha256:f126a57bf7fbcf661cd3bfaf3cb8f20fed29661eb17f27615ed4b92ce298a880" [label=""];
  "sha256:f126a57bf7fbcf661cd3bfaf3cb8f20fed29661eb17f27615ed4b92ce298a880" -> "sha256:d1356949b4752318200de36e57202023c4be450dd81094a1f047ee9a222f49db" [label=""];
  "sha256:d1356949b4752318200de36e57202023c4be450dd81094a1f047ee9a222f49db" -> "sha256:f391a369ebe868de8092eafdf9474daf71063dcb4f1a03c9a1d755d7357a34a4" [label=""];
  "sha256:f391a369ebe868de8092eafdf9474daf71063dcb4f1a03c9a1d755d7357a34a4" -> "sha256:e0eb118c257947b4b74c55f2772bab8c3a46cce37955a9c46bd912548a78c683" [label=""];
  "sha256:e0eb118c257947b4b74c55f2772bab8c3a46cce37955a9c46bd912548a78c683" -> "sha256:06ad4eb7a8f66594ba990661672b2cf5133193962ab60f15d771f8735d37732b" [label=""];
  "sha256:37949326240bf60505ba6d5ab9868589ca43afe953e2bdcdbbd4011d88604a4e" -> "sha256:06ad4eb7a8f66594ba990661672b2cf5133193962ab60f15d771f8735d37732b" [label=""];
  "sha256:06ad4eb7a8f66594ba990661672b2cf5133193962ab60f15d771f8735d37732b" -> "sha256:dc7e7c6d8a6fb8d3134e933d35da65a3ec4e0e9cd44a941a04f95ec3b40dce2b" [label=""];
  "sha256:dc7e7c6d8a6fb8d3134e933d35da65a3ec4e0e9cd44a941a04f95ec3b40dce2b" -> "sha256:a1909d8247018b7bc02f5e95f4790b30545985b588de48ae8e83d426dbdb8094" [label=""];
}

