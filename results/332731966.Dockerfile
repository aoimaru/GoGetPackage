[app/sources/332731966.Dockerfile]
digraph {
  "sha256:f66e8e79b6d1cf96197c91c7c8c0fdb0170ad154468599bac0f5bae1ea21d37d" [label="docker-image://docker.io/library/ruby:2.4.1" shape="ellipse"];
  "sha256:9e5a4aa51256087280addaff3b27fb76eb78ce8af16ca0eaa6aada1141e36c42" [label="/bin/sh -c apt-get update -y && apt-get install -y curl nano" shape="box"];
  "sha256:44644ec0b3b9578da7f70b6410bba7b5dd21082f254d39fd6cd8623aed4d57bf" [label="/bin/sh -c gem install json" shape="box"];
  "sha256:2b0a27493de2491c3f7e9b7f9ad2d153fae1df97897996a5d96e8424431a0a40" [label="/bin/sh -c gem install pry" shape="box"];
  "sha256:fc66ead7315ee0bd6fc0d857500314f49e0cfdaf44c253f47631b3dcfffbebf8" [label="/bin/sh -c gem install pry-nav" shape="box"];
  "sha256:01ecf476b991810ece808df07ca6ce7da79d6098c83536b66708310cb37687db" [label="/bin/sh -c gem install pry-doc" shape="box"];
  "sha256:1c49fb933cbc2978b9270dd689ff92e2a5504c4b3cbda194e657abf661730964" [label="/bin/sh -c gem install bunny" shape="box"];
  "sha256:a2910263203fde816838cb52ba7e0af753156d72ac947be98b23e71e79a194bc" [label="/bin/sh -c gem install rapids_rivers" shape="box"];
  "sha256:c19a6eeb61baba90ca7708489d04d10fdbb0d7b34c3e2053af6bc4118d9f3853" [label="sha256:c19a6eeb61baba90ca7708489d04d10fdbb0d7b34c3e2053af6bc4118d9f3853" shape="plaintext"];
  "sha256:f66e8e79b6d1cf96197c91c7c8c0fdb0170ad154468599bac0f5bae1ea21d37d" -> "sha256:9e5a4aa51256087280addaff3b27fb76eb78ce8af16ca0eaa6aada1141e36c42" [label=""];
  "sha256:9e5a4aa51256087280addaff3b27fb76eb78ce8af16ca0eaa6aada1141e36c42" -> "sha256:44644ec0b3b9578da7f70b6410bba7b5dd21082f254d39fd6cd8623aed4d57bf" [label=""];
  "sha256:44644ec0b3b9578da7f70b6410bba7b5dd21082f254d39fd6cd8623aed4d57bf" -> "sha256:2b0a27493de2491c3f7e9b7f9ad2d153fae1df97897996a5d96e8424431a0a40" [label=""];
  "sha256:2b0a27493de2491c3f7e9b7f9ad2d153fae1df97897996a5d96e8424431a0a40" -> "sha256:fc66ead7315ee0bd6fc0d857500314f49e0cfdaf44c253f47631b3dcfffbebf8" [label=""];
  "sha256:fc66ead7315ee0bd6fc0d857500314f49e0cfdaf44c253f47631b3dcfffbebf8" -> "sha256:01ecf476b991810ece808df07ca6ce7da79d6098c83536b66708310cb37687db" [label=""];
  "sha256:01ecf476b991810ece808df07ca6ce7da79d6098c83536b66708310cb37687db" -> "sha256:1c49fb933cbc2978b9270dd689ff92e2a5504c4b3cbda194e657abf661730964" [label=""];
  "sha256:1c49fb933cbc2978b9270dd689ff92e2a5504c4b3cbda194e657abf661730964" -> "sha256:a2910263203fde816838cb52ba7e0af753156d72ac947be98b23e71e79a194bc" [label=""];
  "sha256:a2910263203fde816838cb52ba7e0af753156d72ac947be98b23e71e79a194bc" -> "sha256:c19a6eeb61baba90ca7708489d04d10fdbb0d7b34c3e2053af6bc4118d9f3853" [label=""];
}

