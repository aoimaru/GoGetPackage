[app/sources/461090802.Dockerfile]
digraph {
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" [label="docker-image://docker.io/library/alpine:3.7" shape="ellipse"];
  "sha256:713598bb378560751e9f02467972b0c8dd6e82c16a12432e7901e60f94c5d94f" [label="docker-image://docker.io/library/golang:1.11.2-stretch" shape="ellipse"];
  "sha256:80c01fb8826a2fdffb5dd0e97e8f25ce66f16c362fac30c665638188e13c213d" [label="/bin/sh -c apt update" shape="box"];
  "sha256:b28abe2e27a8933bbfb7357d4bf36ebd15f9ca7b25827e9c2e3bb22afbd78b79" [label="/bin/sh -c apt install rsync -y" shape="box"];
  "sha256:fcd7d2c9563015b6c24a93b65efa917b472244ccd67b3be417b4bab90781022e" [label="/bin/sh -c apt-get install unzip" shape="box"];
  "sha256:881d80a369c421847054423b00a040b43131882c848ac9c6248e71d624f4e0db" [label="/bin/sh -c go get github.com/jteeuwen/go-bindata/go-bindata" shape="box"];
  "sha256:3efcb240c8da4d5c571366d8e0118062b55f339dab38a42ad78ca5ec8b20dcfa" [label="/bin/sh -c mkdir -p $DEST || echo \"\"" shape="box"];
  "sha256:22e0f37a737fdca408dd06254a5f3ed7afe7c888455d3225d92338e907160bbf" [label="/bin/sh -c git clone https://github.com/kubernetes/kubernetes $GOPATH/src/k8s.io/kubernetes --depth=1 -b v1.13.1" shape="box"];
  "sha256:5fe9d92f821624522d39f3b811cb6e5179b997b03c689a76e4c40dc1f5aa38a9" [label="mkdir{path=/go/src/k8s.io/kubernetes}" shape="note"];
  "sha256:f8e228af0fde933fbbd62f1d1bee1bc16c9f580203c6f068e79753c16b0dcf16" [label="/bin/sh -c make WHAT=cmd/kube-apiserver" shape="box"];
  "sha256:3ba2c2f228921fd4a7e1607b6a07324c4e4f0d57580aeb68238604d0f9cbe290" [label="/bin/sh -c make WHAT=cmd/kube-apiserver" shape="box"];
  "sha256:eae3544fac38374d5ff70ff5d05e1367452ba7da41552da6582151ba5da88e26" [label="/bin/sh -c cp _output/local/bin/$KUBE_BUILD_PLATFORMS/kube-apiserver $DEST" shape="box"];
  "sha256:f4bcf1225153551107572edb6c55f35a61f996d0173fcb4468a7f270f34f9eaf" [label="/bin/sh -c curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.13.1/bin/darwin/amd64/kubectl" shape="box"];
  "sha256:f62d43f1be2ebe2094aa071627feb9e562ae8ee4828a86fe1690948e60e3dcde" [label="/bin/sh -c chmod +x kubectl" shape="box"];
  "sha256:4e8a416e9723625fd4ce181e97cd5595c86a28f53ff7bc95e1ca8c21aef74f91" [label="/bin/sh -c cp kubectl $DEST" shape="box"];
  "sha256:7797a7449add816f80defe6c76c7f4da7ae627eeccd2a9f33b96d9331afd3160" [label="/bin/sh -c curl -LO https://github.com/coreos/etcd/releases/download/v${ETCD_VERSION}/etcd-v${ETCD_VERSION}-darwin-amd64.zip -o ${ETCD_DOWNLOAD_FILE}" shape="box"];
  "sha256:defddf9ca36e3306ee4ceb28054a1154a106ec228b29974fea1f59f541bfe62c" [label="/bin/sh -c unzip -o ${ETCD_DOWNLOAD_FILE}" shape="box"];
  "sha256:a48d05678b33f1861c90dc56ffcce00a6e9a52dd8ff074e4733fb8397f031f7a" [label="/bin/sh -c cp etcd-v${ETCD_VERSION}-darwin-amd64/etcd $DEST" shape="box"];
  "sha256:ae7511e972f88ff61ed82faec8fd81f71af1f3f2d65b548b4c8431f1b2079398" [label="mkdir{path=/usr/local}" shape="note"];
  "sha256:f3fa68592525e90ef4e1e277e16b6e1701e0d8c8e89cb28273fdccaa593e7f3c" [label="/bin/sh -c tar -czvf /kubebuilder_darwin_amd64.tar.gz kubebuilder/" shape="box"];
  "sha256:b3183d984748f12abcebded124958b7eefe7aad6bbbb55fe923df6ac2c3c250b" [label="copy{src=/kubebuilder_darwin_amd64.tar.gz, dest=/kubebuilder_darwin_amd64.tar.gz}" shape="note"];
  "sha256:f1dc259837b0dbedeea2b2127a84e9d0d88275bd9a6e933f1fb806684006c9d5" [label="sha256:f1dc259837b0dbedeea2b2127a84e9d0d88275bd9a6e933f1fb806684006c9d5" shape="plaintext"];
  "sha256:713598bb378560751e9f02467972b0c8dd6e82c16a12432e7901e60f94c5d94f" -> "sha256:80c01fb8826a2fdffb5dd0e97e8f25ce66f16c362fac30c665638188e13c213d" [label=""];
  "sha256:80c01fb8826a2fdffb5dd0e97e8f25ce66f16c362fac30c665638188e13c213d" -> "sha256:b28abe2e27a8933bbfb7357d4bf36ebd15f9ca7b25827e9c2e3bb22afbd78b79" [label=""];
  "sha256:b28abe2e27a8933bbfb7357d4bf36ebd15f9ca7b25827e9c2e3bb22afbd78b79" -> "sha256:fcd7d2c9563015b6c24a93b65efa917b472244ccd67b3be417b4bab90781022e" [label=""];
  "sha256:fcd7d2c9563015b6c24a93b65efa917b472244ccd67b3be417b4bab90781022e" -> "sha256:881d80a369c421847054423b00a040b43131882c848ac9c6248e71d624f4e0db" [label=""];
  "sha256:881d80a369c421847054423b00a040b43131882c848ac9c6248e71d624f4e0db" -> "sha256:3efcb240c8da4d5c571366d8e0118062b55f339dab38a42ad78ca5ec8b20dcfa" [label=""];
  "sha256:3efcb240c8da4d5c571366d8e0118062b55f339dab38a42ad78ca5ec8b20dcfa" -> "sha256:22e0f37a737fdca408dd06254a5f3ed7afe7c888455d3225d92338e907160bbf" [label=""];
  "sha256:22e0f37a737fdca408dd06254a5f3ed7afe7c888455d3225d92338e907160bbf" -> "sha256:5fe9d92f821624522d39f3b811cb6e5179b997b03c689a76e4c40dc1f5aa38a9" [label=""];
  "sha256:5fe9d92f821624522d39f3b811cb6e5179b997b03c689a76e4c40dc1f5aa38a9" -> "sha256:f8e228af0fde933fbbd62f1d1bee1bc16c9f580203c6f068e79753c16b0dcf16" [label=""];
  "sha256:f8e228af0fde933fbbd62f1d1bee1bc16c9f580203c6f068e79753c16b0dcf16" -> "sha256:3ba2c2f228921fd4a7e1607b6a07324c4e4f0d57580aeb68238604d0f9cbe290" [label=""];
  "sha256:3ba2c2f228921fd4a7e1607b6a07324c4e4f0d57580aeb68238604d0f9cbe290" -> "sha256:eae3544fac38374d5ff70ff5d05e1367452ba7da41552da6582151ba5da88e26" [label=""];
  "sha256:eae3544fac38374d5ff70ff5d05e1367452ba7da41552da6582151ba5da88e26" -> "sha256:f4bcf1225153551107572edb6c55f35a61f996d0173fcb4468a7f270f34f9eaf" [label=""];
  "sha256:f4bcf1225153551107572edb6c55f35a61f996d0173fcb4468a7f270f34f9eaf" -> "sha256:f62d43f1be2ebe2094aa071627feb9e562ae8ee4828a86fe1690948e60e3dcde" [label=""];
  "sha256:f62d43f1be2ebe2094aa071627feb9e562ae8ee4828a86fe1690948e60e3dcde" -> "sha256:4e8a416e9723625fd4ce181e97cd5595c86a28f53ff7bc95e1ca8c21aef74f91" [label=""];
  "sha256:4e8a416e9723625fd4ce181e97cd5595c86a28f53ff7bc95e1ca8c21aef74f91" -> "sha256:7797a7449add816f80defe6c76c7f4da7ae627eeccd2a9f33b96d9331afd3160" [label=""];
  "sha256:7797a7449add816f80defe6c76c7f4da7ae627eeccd2a9f33b96d9331afd3160" -> "sha256:defddf9ca36e3306ee4ceb28054a1154a106ec228b29974fea1f59f541bfe62c" [label=""];
  "sha256:defddf9ca36e3306ee4ceb28054a1154a106ec228b29974fea1f59f541bfe62c" -> "sha256:a48d05678b33f1861c90dc56ffcce00a6e9a52dd8ff074e4733fb8397f031f7a" [label=""];
  "sha256:a48d05678b33f1861c90dc56ffcce00a6e9a52dd8ff074e4733fb8397f031f7a" -> "sha256:ae7511e972f88ff61ed82faec8fd81f71af1f3f2d65b548b4c8431f1b2079398" [label=""];
  "sha256:ae7511e972f88ff61ed82faec8fd81f71af1f3f2d65b548b4c8431f1b2079398" -> "sha256:f3fa68592525e90ef4e1e277e16b6e1701e0d8c8e89cb28273fdccaa593e7f3c" [label=""];
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" -> "sha256:b3183d984748f12abcebded124958b7eefe7aad6bbbb55fe923df6ac2c3c250b" [label=""];
  "sha256:f3fa68592525e90ef4e1e277e16b6e1701e0d8c8e89cb28273fdccaa593e7f3c" -> "sha256:b3183d984748f12abcebded124958b7eefe7aad6bbbb55fe923df6ac2c3c250b" [label=""];
  "sha256:b3183d984748f12abcebded124958b7eefe7aad6bbbb55fe923df6ac2c3c250b" -> "sha256:f1dc259837b0dbedeea2b2127a84e9d0d88275bd9a6e933f1fb806684006c9d5" [label=""];
}

