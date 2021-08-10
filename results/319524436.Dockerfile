[app/sources/319524436.Dockerfile]
digraph {
  "sha256:362a03bcf17cb43e43404784bed0cc5f7ad671045d709c5ce037ef7f8200b2ed" [label="local://context" shape="ellipse"];
  "sha256:dba2c96310622fd28c7830eff7d24c8e717b5e5330e6be8851334ec5956ed275" [label="docker-image://docker.io/library/golang:1.12.5" shape="ellipse"];
  "sha256:56251a62c7115452fe440273d341466ea83fb52c542eee518aca335be0803d30" [label="mkdir{path=/go/src/sigs.k8s.io/cluster-api-provider-openstack}" shape="note"];
  "sha256:cb1200c880c23e3cf4aef630203d269bd5511b170bee940b69aaebb2f0de2f11" [label="copy{src=/pkg, dest=/go/src/sigs.k8s.io/cluster-api-provider-openstack/pkg/}" shape="note"];
  "sha256:ccdd98d12d73d234407e84e05f005e5b4b54f5f9d6318323f7aded84982043bc" [label="copy{src=/cmd, dest=/go/src/sigs.k8s.io/cluster-api-provider-openstack/cmd/}" shape="note"];
  "sha256:e6709e28851e86cd2fdfda684daf2ca11fb7821a658ae4d2e36128d5375ee26f" [label="copy{src=/vendor, dest=/go/src/sigs.k8s.io/cluster-api-provider-openstack/vendor/}" shape="note"];
  "sha256:408fbd60e5979a7d8325a1cc4e37e1adb310838a2bfe2d28e8913825f01e8d76" [label="/bin/sh -c CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -a -o manager sigs.k8s.io/cluster-api-provider-openstack/cmd/manager" shape="box"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:71a944705e5f8441a70895c2757815f4069ce74a7b8d728f002e84f6cd1f744e" [label="/bin/sh -c apk update && apk add ca-certificates && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:18f2752d188aefbf8b3631ebbd49ef32ede2cfaa11250dec7c434bdce2a2190d" [label="copy{src=/go/src/sigs.k8s.io/cluster-api-provider-openstack/manager, dest=/}" shape="note"];
  "sha256:499ce20f0e32e970eaed782dc720f7c223066f44c1c009e029eeb330714b1868" [label="sha256:499ce20f0e32e970eaed782dc720f7c223066f44c1c009e029eeb330714b1868" shape="plaintext"];
  "sha256:dba2c96310622fd28c7830eff7d24c8e717b5e5330e6be8851334ec5956ed275" -> "sha256:56251a62c7115452fe440273d341466ea83fb52c542eee518aca335be0803d30" [label=""];
  "sha256:56251a62c7115452fe440273d341466ea83fb52c542eee518aca335be0803d30" -> "sha256:cb1200c880c23e3cf4aef630203d269bd5511b170bee940b69aaebb2f0de2f11" [label=""];
  "sha256:362a03bcf17cb43e43404784bed0cc5f7ad671045d709c5ce037ef7f8200b2ed" -> "sha256:cb1200c880c23e3cf4aef630203d269bd5511b170bee940b69aaebb2f0de2f11" [label=""];
  "sha256:cb1200c880c23e3cf4aef630203d269bd5511b170bee940b69aaebb2f0de2f11" -> "sha256:ccdd98d12d73d234407e84e05f005e5b4b54f5f9d6318323f7aded84982043bc" [label=""];
  "sha256:362a03bcf17cb43e43404784bed0cc5f7ad671045d709c5ce037ef7f8200b2ed" -> "sha256:ccdd98d12d73d234407e84e05f005e5b4b54f5f9d6318323f7aded84982043bc" [label=""];
  "sha256:ccdd98d12d73d234407e84e05f005e5b4b54f5f9d6318323f7aded84982043bc" -> "sha256:e6709e28851e86cd2fdfda684daf2ca11fb7821a658ae4d2e36128d5375ee26f" [label=""];
  "sha256:362a03bcf17cb43e43404784bed0cc5f7ad671045d709c5ce037ef7f8200b2ed" -> "sha256:e6709e28851e86cd2fdfda684daf2ca11fb7821a658ae4d2e36128d5375ee26f" [label=""];
  "sha256:e6709e28851e86cd2fdfda684daf2ca11fb7821a658ae4d2e36128d5375ee26f" -> "sha256:408fbd60e5979a7d8325a1cc4e37e1adb310838a2bfe2d28e8913825f01e8d76" [label=""];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:71a944705e5f8441a70895c2757815f4069ce74a7b8d728f002e84f6cd1f744e" [label=""];
  "sha256:71a944705e5f8441a70895c2757815f4069ce74a7b8d728f002e84f6cd1f744e" -> "sha256:18f2752d188aefbf8b3631ebbd49ef32ede2cfaa11250dec7c434bdce2a2190d" [label=""];
  "sha256:408fbd60e5979a7d8325a1cc4e37e1adb310838a2bfe2d28e8913825f01e8d76" -> "sha256:18f2752d188aefbf8b3631ebbd49ef32ede2cfaa11250dec7c434bdce2a2190d" [label=""];
  "sha256:18f2752d188aefbf8b3631ebbd49ef32ede2cfaa11250dec7c434bdce2a2190d" -> "sha256:499ce20f0e32e970eaed782dc720f7c223066f44c1c009e029eeb330714b1868" [label=""];
}

