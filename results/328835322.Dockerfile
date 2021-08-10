[app/sources/328835322.Dockerfile]
digraph {
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" [label="docker-image://docker.io/library/alpine:3.6" shape="ellipse"];
  "sha256:46c7ecde4d6c4f17a4bdc92038214891c58e578eed6d6132b4d59973d1b89c14" [label="/bin/sh -c apk add --no-cache curl ca-certificates" shape="box"];
  "sha256:24e645f44f33d30af84b48f8542e54b857d739f767a2a0f70772bb2295126f71" [label="/bin/sh -c curl -f -s -o /usr/local/bin/kubectl https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl &&     chmod +x /usr/local/bin/kubectl &&     kubectl version --client" shape="box"];
  "sha256:c7bdf7abe7b30fc4340a24d2382db4f113dc761a5b6700441ec0af4849022618" [label="/bin/sh -c apk -Uuv add groff less python py-pip" shape="box"];
  "sha256:e7b664ee88fbbbf93783949262ee1344c57bdd001e3fc78583fecf40aba3d305" [label="/bin/sh -c pip install awscli" shape="box"];
  "sha256:61594dd4aaab7a083adb09a97d0ec7d2998c2a39116b464c0d4dcf20301f5490" [label="local://context" shape="ellipse"];
  "sha256:4d52b0ee268fb38da96c61d7a810aad9f4d088293e620b433eed4ead1689547c" [label="copy{src=/start.sh, dest=/}" shape="note"];
  "sha256:cba930a3bf6a32987fe6c964bd5baf52d2f4b0ae96f5be8853ebeb1bfbe2d208" [label="/bin/sh -c chmod +x /start.sh" shape="box"];
  "sha256:ea20f45b8f24e038806d816a1290a28758a2b4b020b2f6a7c81058d16683e052" [label="sha256:ea20f45b8f24e038806d816a1290a28758a2b4b020b2f6a7c81058d16683e052" shape="plaintext"];
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" -> "sha256:46c7ecde4d6c4f17a4bdc92038214891c58e578eed6d6132b4d59973d1b89c14" [label=""];
  "sha256:46c7ecde4d6c4f17a4bdc92038214891c58e578eed6d6132b4d59973d1b89c14" -> "sha256:24e645f44f33d30af84b48f8542e54b857d739f767a2a0f70772bb2295126f71" [label=""];
  "sha256:24e645f44f33d30af84b48f8542e54b857d739f767a2a0f70772bb2295126f71" -> "sha256:c7bdf7abe7b30fc4340a24d2382db4f113dc761a5b6700441ec0af4849022618" [label=""];
  "sha256:c7bdf7abe7b30fc4340a24d2382db4f113dc761a5b6700441ec0af4849022618" -> "sha256:e7b664ee88fbbbf93783949262ee1344c57bdd001e3fc78583fecf40aba3d305" [label=""];
  "sha256:e7b664ee88fbbbf93783949262ee1344c57bdd001e3fc78583fecf40aba3d305" -> "sha256:4d52b0ee268fb38da96c61d7a810aad9f4d088293e620b433eed4ead1689547c" [label=""];
  "sha256:61594dd4aaab7a083adb09a97d0ec7d2998c2a39116b464c0d4dcf20301f5490" -> "sha256:4d52b0ee268fb38da96c61d7a810aad9f4d088293e620b433eed4ead1689547c" [label=""];
  "sha256:4d52b0ee268fb38da96c61d7a810aad9f4d088293e620b433eed4ead1689547c" -> "sha256:cba930a3bf6a32987fe6c964bd5baf52d2f4b0ae96f5be8853ebeb1bfbe2d208" [label=""];
  "sha256:cba930a3bf6a32987fe6c964bd5baf52d2f4b0ae96f5be8853ebeb1bfbe2d208" -> "sha256:ea20f45b8f24e038806d816a1290a28758a2b4b020b2f6a7c81058d16683e052" [label=""];
}

