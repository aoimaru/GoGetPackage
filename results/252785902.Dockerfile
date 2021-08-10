[app/sources/252785902.Dockerfile]
digraph {
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" [label="docker-image://docker.io/library/golang:latest" shape="ellipse"];
  "sha256:ee68dd333ed59e6a57bc4b32f16f32248b2933ea545152c458193202dfbd1121" [label="/bin/sh -c go get \"github.com/hashicorp/consul/api\" \"github.com/docopt/docopt-go\"" shape="box"];
  "sha256:bb33638157b13d192e7ea0802c3da54ac6f8af79bafaae837f5337594b721a07" [label="mkdir{path=/go/src/github.com/djenriquez/consul-backup}" shape="note"];
  "sha256:bd3c1c4386654fdc9e8f7aee93bc6a87525d96a5061ca2db55f9a81b5c33e511" [label="local://context" shape="ellipse"];
  "sha256:dda0fd2a9bf760b3e71347762d97197172dc6eacea0de0921a0acffd8e033f0d" [label="copy{src=/, dest=/go/src/github.com/djenriquez/consul-backup}" shape="note"];
  "sha256:ef924d401cb5c4850e7f7bcf5f8fc0c502e526163f4e2dc7b982bb43538c8776" [label="/bin/sh -c go build" shape="box"];
  "sha256:a682df2a065c5846e29766686ce75862c788d86ba44dc48dc4b260b104326b3e" [label="sha256:a682df2a065c5846e29766686ce75862c788d86ba44dc48dc4b260b104326b3e" shape="plaintext"];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" -> "sha256:ee68dd333ed59e6a57bc4b32f16f32248b2933ea545152c458193202dfbd1121" [label=""];
  "sha256:ee68dd333ed59e6a57bc4b32f16f32248b2933ea545152c458193202dfbd1121" -> "sha256:bb33638157b13d192e7ea0802c3da54ac6f8af79bafaae837f5337594b721a07" [label=""];
  "sha256:bb33638157b13d192e7ea0802c3da54ac6f8af79bafaae837f5337594b721a07" -> "sha256:dda0fd2a9bf760b3e71347762d97197172dc6eacea0de0921a0acffd8e033f0d" [label=""];
  "sha256:bd3c1c4386654fdc9e8f7aee93bc6a87525d96a5061ca2db55f9a81b5c33e511" -> "sha256:dda0fd2a9bf760b3e71347762d97197172dc6eacea0de0921a0acffd8e033f0d" [label=""];
  "sha256:dda0fd2a9bf760b3e71347762d97197172dc6eacea0de0921a0acffd8e033f0d" -> "sha256:ef924d401cb5c4850e7f7bcf5f8fc0c502e526163f4e2dc7b982bb43538c8776" [label=""];
  "sha256:ef924d401cb5c4850e7f7bcf5f8fc0c502e526163f4e2dc7b982bb43538c8776" -> "sha256:a682df2a065c5846e29766686ce75862c788d86ba44dc48dc4b260b104326b3e" [label=""];
}

