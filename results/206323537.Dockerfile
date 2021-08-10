[app/sources/206323537.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:4024bea83d1c269703b14993646b91cc5480a2cb6ff93c882c9140c12792f49d" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:de5b2fae8de02de41b443dbd70caf065eecd4ce641210fcfd8c4b207b2270b59" [label="/bin/sh -c apt-get install -y build-essential curl bash nano zlib1g-dev libpcre3-dev libssl-dev git socat" shape="box"];
  "sha256:f6576fc469b7248938ff1f1dbf9a51815985cabda5e4852401d859183e01182b" [label="/bin/sh -c curl -Os https://storage.googleapis.com/golang/go$GO_VERSION.linux-amd64.tar.gz && tar -C /usr/local -xzf go$GO_VERSION.linux-amd64.tar.gz" shape="box"];
  "sha256:1bff736e9da1bbfef5d29baf2fb247f9e956272b5998f08e4a60a5e96d1925e2" [label="/bin/sh -c mkdir /lab" shape="box"];
  "sha256:127bdbffaf3944300fe894515e019c8edb403df86d6721f58f360f247ae3fc86" [label="mkdir{path=/lab}" shape="note"];
  "sha256:9c7866724f3dfe8b0e9e371e26c2e95656b81299412dcbc470f2c4040e18b597" [label="local://context" shape="ellipse"];
  "sha256:1d5cde094416f5d80e261fed464c6c1e4fbce7fdd793c141473a18956498df5c" [label="copy{src=/vendor.sh, dest=/lab}" shape="note"];
  "sha256:d453c1329b94d2f97785bb4bdcb961f105e53888a5f9ce1a7f7da8e6dabe3407" [label="/bin/sh -c NGINX_VERSION=$NGINX_VERSION NDK_VERSION=$NDK_VERSION /lab/vendor.sh" shape="box"];
  "sha256:c478416a37201f5e74c787487b8e6f6508b533984a01bb6a941bf517e82cbc3e" [label="copy{src=/, dest=/lab}" shape="note"];
  "sha256:a3d6bdbe111e8d8fd2d758edf39fe517bfa804bf8e25afc7b7077577db234b0d" [label="/bin/sh -c NGINX_VERSION=$NGINX_VERSION NDK_VERSION=$NDK_VERSION /lab/build.sh" shape="box"];
  "sha256:05cab12bcefc6d31266759ceb23c51581980255ef1b548dbb26b39e14301633d" [label="sha256:05cab12bcefc6d31266759ceb23c51581980255ef1b548dbb26b39e14301633d" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:4024bea83d1c269703b14993646b91cc5480a2cb6ff93c882c9140c12792f49d" [label=""];
  "sha256:4024bea83d1c269703b14993646b91cc5480a2cb6ff93c882c9140c12792f49d" -> "sha256:de5b2fae8de02de41b443dbd70caf065eecd4ce641210fcfd8c4b207b2270b59" [label=""];
  "sha256:de5b2fae8de02de41b443dbd70caf065eecd4ce641210fcfd8c4b207b2270b59" -> "sha256:f6576fc469b7248938ff1f1dbf9a51815985cabda5e4852401d859183e01182b" [label=""];
  "sha256:f6576fc469b7248938ff1f1dbf9a51815985cabda5e4852401d859183e01182b" -> "sha256:1bff736e9da1bbfef5d29baf2fb247f9e956272b5998f08e4a60a5e96d1925e2" [label=""];
  "sha256:1bff736e9da1bbfef5d29baf2fb247f9e956272b5998f08e4a60a5e96d1925e2" -> "sha256:127bdbffaf3944300fe894515e019c8edb403df86d6721f58f360f247ae3fc86" [label=""];
  "sha256:127bdbffaf3944300fe894515e019c8edb403df86d6721f58f360f247ae3fc86" -> "sha256:1d5cde094416f5d80e261fed464c6c1e4fbce7fdd793c141473a18956498df5c" [label=""];
  "sha256:9c7866724f3dfe8b0e9e371e26c2e95656b81299412dcbc470f2c4040e18b597" -> "sha256:1d5cde094416f5d80e261fed464c6c1e4fbce7fdd793c141473a18956498df5c" [label=""];
  "sha256:1d5cde094416f5d80e261fed464c6c1e4fbce7fdd793c141473a18956498df5c" -> "sha256:d453c1329b94d2f97785bb4bdcb961f105e53888a5f9ce1a7f7da8e6dabe3407" [label=""];
  "sha256:d453c1329b94d2f97785bb4bdcb961f105e53888a5f9ce1a7f7da8e6dabe3407" -> "sha256:c478416a37201f5e74c787487b8e6f6508b533984a01bb6a941bf517e82cbc3e" [label=""];
  "sha256:9c7866724f3dfe8b0e9e371e26c2e95656b81299412dcbc470f2c4040e18b597" -> "sha256:c478416a37201f5e74c787487b8e6f6508b533984a01bb6a941bf517e82cbc3e" [label=""];
  "sha256:c478416a37201f5e74c787487b8e6f6508b533984a01bb6a941bf517e82cbc3e" -> "sha256:a3d6bdbe111e8d8fd2d758edf39fe517bfa804bf8e25afc7b7077577db234b0d" [label=""];
  "sha256:a3d6bdbe111e8d8fd2d758edf39fe517bfa804bf8e25afc7b7077577db234b0d" -> "sha256:05cab12bcefc6d31266759ceb23c51581980255ef1b548dbb26b39e14301633d" [label=""];
}

