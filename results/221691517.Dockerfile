[app/sources/221691517.Dockerfile]
digraph {
  "sha256:e09a417d6ba5d85f9300bd9bf198dccc5297b49061ea65d9a6752db25cdef32d" [label="docker-image://docker.io/library/golang:1.9" shape="ellipse"];
  "sha256:2b29ea3934419aed3cce71abb13040a394ab8727802523ec51e4324adc80db21" [label="local://context" shape="ellipse"];
  "sha256:7d15eaf395a07584cb3892381ca8152b8c42c5905bf4895429616ca8074ad720" [label="copy{src=/, dest=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:6f55f0338e51cea162663f51aba759529d68b4a4360809c0a9df8f9a46b06283" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tvim \t&& rm -rf /var/list/apt/lists/*" shape="box"];
  "sha256:a345b8226fcd5dbdc9a23ea533be19a8a1946cc1fa1a72eb9eeee22fe470a958" [label="mkdir{path=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:93694f2792162f4e62c836e4ab51f4c5c710f3927f32e491cf0f59180e5e5e38" [label="sha256:93694f2792162f4e62c836e4ab51f4c5c710f3927f32e491cf0f59180e5e5e38" shape="plaintext"];
  "sha256:e09a417d6ba5d85f9300bd9bf198dccc5297b49061ea65d9a6752db25cdef32d" -> "sha256:7d15eaf395a07584cb3892381ca8152b8c42c5905bf4895429616ca8074ad720" [label=""];
  "sha256:2b29ea3934419aed3cce71abb13040a394ab8727802523ec51e4324adc80db21" -> "sha256:7d15eaf395a07584cb3892381ca8152b8c42c5905bf4895429616ca8074ad720" [label=""];
  "sha256:7d15eaf395a07584cb3892381ca8152b8c42c5905bf4895429616ca8074ad720" -> "sha256:6f55f0338e51cea162663f51aba759529d68b4a4360809c0a9df8f9a46b06283" [label=""];
  "sha256:6f55f0338e51cea162663f51aba759529d68b4a4360809c0a9df8f9a46b06283" -> "sha256:a345b8226fcd5dbdc9a23ea533be19a8a1946cc1fa1a72eb9eeee22fe470a958" [label=""];
  "sha256:a345b8226fcd5dbdc9a23ea533be19a8a1946cc1fa1a72eb9eeee22fe470a958" -> "sha256:93694f2792162f4e62c836e4ab51f4c5c710f3927f32e491cf0f59180e5e5e38" [label=""];
}

