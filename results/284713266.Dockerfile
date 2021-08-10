[app/sources/284713266.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:36c118fe3b07d52186042383057aedf214a7a4d0262128e606d318a546697cf4" [label="local://context" shape="ellipse"];
  "sha256:9c3d832424c4ee2b326f594163fa766aa88ed23c8b35566a9b98f7f4065ac2d5" [label="docker-image://docker.io/library/golang:1.9.3" shape="ellipse"];
  "sha256:7e25d68b9d049f3c37be485fd52e0ef31780c01f4c4f266c309577b0f6ebdeb8" [label="mkdir{path=/go/src/sigs.k8s.io/controller-tools/examples/godocbot}" shape="note"];
  "sha256:521c6ce7837754cf5b4c764a51060d800ac519d5959c766da64d5d7f6d5259cb" [label="copy{src=/pkg, dest=/go/src/sigs.k8s.io/controller-tools/examples/godocbot/pkg/}" shape="note"];
  "sha256:b2ec29990ddd9d691d51e7824da66fa0c74f014dbe5f7e6f5afa55bc4f7d775d" [label="copy{src=/cmd, dest=/go/src/sigs.k8s.io/controller-tools/examples/godocbot/cmd/}" shape="note"];
  "sha256:72bf521efb4b32768fd2bcb22b37d89154c08028dab285f3d3fcc2dcbdfe6e7f" [label="copy{src=/vendor, dest=/go/src/sigs.k8s.io/controller-tools/examples/godocbot/vendor/}" shape="note"];
  "sha256:da3b8a22885f0881bba66b624c7f2a98d365b32800abd6bc079d7570ee454cc4" [label="/bin/sh -c curl ${TEST_ASSET_URL}/etcd-Linux-x86_64 --output $TEST_ASSET_ETCD" shape="box"];
  "sha256:ba730667eddd76e4363e1e5984d508b0904eb000639a51de53f3d5beb6323dc7" [label="/bin/sh -c curl ${TEST_ASSET_URL}/kube-apiserver-Linux-x86_64 --output $TEST_ASSET_KUBE_APISERVER" shape="box"];
  "sha256:7685a413df10d09bea0aa7a1fc2d747d0e101ac8a141d6b33bca8ae900f48905" [label="/bin/sh -c curl https://storage.googleapis.com/kubernetes-release/release/v1.9.2/bin/linux/amd64/kubectl --output $TEST_ASSET_KUBECTL" shape="box"];
  "sha256:5b6cddf79e35edc1308ce0a6209c2da23f583110c3bed267d6aabcfef3f81d87" [label="/bin/sh -c chmod +x $TEST_ASSET_ETCD" shape="box"];
  "sha256:204d2d488095d07ca670551d59d447db49e4635f12549c9a80737929babe809e" [label="/bin/sh -c chmod +x $TEST_ASSET_KUBE_APISERVER" shape="box"];
  "sha256:86865099ae20732ad5d8a6014bd245d7a383b720d7fccd227d0b09f176a2e299" [label="/bin/sh -c chmod +x $TEST_ASSET_KUBECTL" shape="box"];
  "sha256:e96ae2d18ec2c55b32b09e25b50e68785b3e1f2e67e36a65efb49cb0f6b3e11c" [label="/bin/sh -c go test ./pkg/... ./cmd/..." shape="box"];
  "sha256:62aadaac855a80c7c44a78ae8cedc40a5443219153e487783d7faf4f69643e24" [label="/bin/sh -c CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -a -o manager sigs.k8s.io/controller-tools/examples/godocbot/cmd/manager" shape="box"];
  "sha256:bbb71978c9f440fb88a66b8af9ff6655d312d96cebd733b303d9c5875d3cc136" [label="copy{src=/go/src/sigs.k8s.io/controller-tools/examples/godocbot/manager, dest=/}" shape="note"];
  "sha256:59b19019fa1a47ce44e64fa1310c76d87ceeb857e190d16a8442e1745945fe7c" [label="sha256:59b19019fa1a47ce44e64fa1310c76d87ceeb857e190d16a8442e1745945fe7c" shape="plaintext"];
  "sha256:9c3d832424c4ee2b326f594163fa766aa88ed23c8b35566a9b98f7f4065ac2d5" -> "sha256:7e25d68b9d049f3c37be485fd52e0ef31780c01f4c4f266c309577b0f6ebdeb8" [label=""];
  "sha256:7e25d68b9d049f3c37be485fd52e0ef31780c01f4c4f266c309577b0f6ebdeb8" -> "sha256:521c6ce7837754cf5b4c764a51060d800ac519d5959c766da64d5d7f6d5259cb" [label=""];
  "sha256:36c118fe3b07d52186042383057aedf214a7a4d0262128e606d318a546697cf4" -> "sha256:521c6ce7837754cf5b4c764a51060d800ac519d5959c766da64d5d7f6d5259cb" [label=""];
  "sha256:521c6ce7837754cf5b4c764a51060d800ac519d5959c766da64d5d7f6d5259cb" -> "sha256:b2ec29990ddd9d691d51e7824da66fa0c74f014dbe5f7e6f5afa55bc4f7d775d" [label=""];
  "sha256:36c118fe3b07d52186042383057aedf214a7a4d0262128e606d318a546697cf4" -> "sha256:b2ec29990ddd9d691d51e7824da66fa0c74f014dbe5f7e6f5afa55bc4f7d775d" [label=""];
  "sha256:b2ec29990ddd9d691d51e7824da66fa0c74f014dbe5f7e6f5afa55bc4f7d775d" -> "sha256:72bf521efb4b32768fd2bcb22b37d89154c08028dab285f3d3fcc2dcbdfe6e7f" [label=""];
  "sha256:36c118fe3b07d52186042383057aedf214a7a4d0262128e606d318a546697cf4" -> "sha256:72bf521efb4b32768fd2bcb22b37d89154c08028dab285f3d3fcc2dcbdfe6e7f" [label=""];
  "sha256:72bf521efb4b32768fd2bcb22b37d89154c08028dab285f3d3fcc2dcbdfe6e7f" -> "sha256:da3b8a22885f0881bba66b624c7f2a98d365b32800abd6bc079d7570ee454cc4" [label=""];
  "sha256:da3b8a22885f0881bba66b624c7f2a98d365b32800abd6bc079d7570ee454cc4" -> "sha256:ba730667eddd76e4363e1e5984d508b0904eb000639a51de53f3d5beb6323dc7" [label=""];
  "sha256:ba730667eddd76e4363e1e5984d508b0904eb000639a51de53f3d5beb6323dc7" -> "sha256:7685a413df10d09bea0aa7a1fc2d747d0e101ac8a141d6b33bca8ae900f48905" [label=""];
  "sha256:7685a413df10d09bea0aa7a1fc2d747d0e101ac8a141d6b33bca8ae900f48905" -> "sha256:5b6cddf79e35edc1308ce0a6209c2da23f583110c3bed267d6aabcfef3f81d87" [label=""];
  "sha256:5b6cddf79e35edc1308ce0a6209c2da23f583110c3bed267d6aabcfef3f81d87" -> "sha256:204d2d488095d07ca670551d59d447db49e4635f12549c9a80737929babe809e" [label=""];
  "sha256:204d2d488095d07ca670551d59d447db49e4635f12549c9a80737929babe809e" -> "sha256:86865099ae20732ad5d8a6014bd245d7a383b720d7fccd227d0b09f176a2e299" [label=""];
  "sha256:86865099ae20732ad5d8a6014bd245d7a383b720d7fccd227d0b09f176a2e299" -> "sha256:e96ae2d18ec2c55b32b09e25b50e68785b3e1f2e67e36a65efb49cb0f6b3e11c" [label=""];
  "sha256:e96ae2d18ec2c55b32b09e25b50e68785b3e1f2e67e36a65efb49cb0f6b3e11c" -> "sha256:62aadaac855a80c7c44a78ae8cedc40a5443219153e487783d7faf4f69643e24" [label=""];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:bbb71978c9f440fb88a66b8af9ff6655d312d96cebd733b303d9c5875d3cc136" [label=""];
  "sha256:62aadaac855a80c7c44a78ae8cedc40a5443219153e487783d7faf4f69643e24" -> "sha256:bbb71978c9f440fb88a66b8af9ff6655d312d96cebd733b303d9c5875d3cc136" [label=""];
  "sha256:bbb71978c9f440fb88a66b8af9ff6655d312d96cebd733b303d9c5875d3cc136" -> "sha256:59b19019fa1a47ce44e64fa1310c76d87ceeb857e190d16a8442e1745945fe7c" [label=""];
}

