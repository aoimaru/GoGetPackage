[app/sources/227246263.Dockerfile]
digraph {
  "sha256:efbccbe63bb58047443a0ad856eaf62525ac2b1faafb01cef77491556c0cebbb" [label="docker-image://docker.io/microsoft/dotnet:2.2-aspnetcore-runtime" shape="ellipse"];
  "sha256:c8906744f1a1a205eb232c9e896d9c8b6a8984f1aa9322b7da0c30adce735ef9" [label="mkdir{path=/app}" shape="note"];
  "sha256:217023eb1ec28f41f0367fa161c7ac7a57ba7e94bfc3be1724f6ae36af0e86c0" [label="docker-image://docker.io/microsoft/dotnet:2.2-sdk" shape="ellipse"];
  "sha256:a9ea5180fe45786bda172c328680412ddf09c9337393169956d4afc82128dae4" [label="mkdir{path=/app}" shape="note"];
  "sha256:4e358ead6924f1403fd017c0f4ab92732c07930c211d06e6ab8c698295f290b7" [label="local://context" shape="ellipse"];
  "sha256:573e57f5d199e01350c9d45fa7de6f116ed72aef5e34a681f741d8543aca1184" [label="copy{src=/src/*.csproj, dest=/app/}" shape="note"];
  "sha256:99e1f828de4732b08d95e1e5a2980019ff53ec603daa375edbc1f1fe582eac2a" [label="/bin/sh -c dotnet restore" shape="box"];
  "sha256:eedf5c1f1de2155d6568d810122e6a52f420537c764e44a480e71f6cb10e6160" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:f39108c054661e2b8a6964d647e6f88a95892e6a6aebdd97b4b294459803ec86" [label="/bin/sh -c dotnet publish src -c Release -o out" shape="box"];
  "sha256:7f6d8dfd16233552900b0f1c1fb2edf2a86c04fa2c1784f3b65247c597505818" [label="copy{src=/app/src/out, dest=/app/}" shape="note"];
  "sha256:0dc9fee23c535fd0286fc12ef05552d220993a529ebdb5373633c147993e4373" [label="sha256:0dc9fee23c535fd0286fc12ef05552d220993a529ebdb5373633c147993e4373" shape="plaintext"];
  "sha256:efbccbe63bb58047443a0ad856eaf62525ac2b1faafb01cef77491556c0cebbb" -> "sha256:c8906744f1a1a205eb232c9e896d9c8b6a8984f1aa9322b7da0c30adce735ef9" [label=""];
  "sha256:217023eb1ec28f41f0367fa161c7ac7a57ba7e94bfc3be1724f6ae36af0e86c0" -> "sha256:a9ea5180fe45786bda172c328680412ddf09c9337393169956d4afc82128dae4" [label=""];
  "sha256:a9ea5180fe45786bda172c328680412ddf09c9337393169956d4afc82128dae4" -> "sha256:573e57f5d199e01350c9d45fa7de6f116ed72aef5e34a681f741d8543aca1184" [label=""];
  "sha256:4e358ead6924f1403fd017c0f4ab92732c07930c211d06e6ab8c698295f290b7" -> "sha256:573e57f5d199e01350c9d45fa7de6f116ed72aef5e34a681f741d8543aca1184" [label=""];
  "sha256:573e57f5d199e01350c9d45fa7de6f116ed72aef5e34a681f741d8543aca1184" -> "sha256:99e1f828de4732b08d95e1e5a2980019ff53ec603daa375edbc1f1fe582eac2a" [label=""];
  "sha256:99e1f828de4732b08d95e1e5a2980019ff53ec603daa375edbc1f1fe582eac2a" -> "sha256:eedf5c1f1de2155d6568d810122e6a52f420537c764e44a480e71f6cb10e6160" [label=""];
  "sha256:4e358ead6924f1403fd017c0f4ab92732c07930c211d06e6ab8c698295f290b7" -> "sha256:eedf5c1f1de2155d6568d810122e6a52f420537c764e44a480e71f6cb10e6160" [label=""];
  "sha256:eedf5c1f1de2155d6568d810122e6a52f420537c764e44a480e71f6cb10e6160" -> "sha256:f39108c054661e2b8a6964d647e6f88a95892e6a6aebdd97b4b294459803ec86" [label=""];
  "sha256:c8906744f1a1a205eb232c9e896d9c8b6a8984f1aa9322b7da0c30adce735ef9" -> "sha256:7f6d8dfd16233552900b0f1c1fb2edf2a86c04fa2c1784f3b65247c597505818" [label=""];
  "sha256:f39108c054661e2b8a6964d647e6f88a95892e6a6aebdd97b4b294459803ec86" -> "sha256:7f6d8dfd16233552900b0f1c1fb2edf2a86c04fa2c1784f3b65247c597505818" [label=""];
  "sha256:7f6d8dfd16233552900b0f1c1fb2edf2a86c04fa2c1784f3b65247c597505818" -> "sha256:0dc9fee23c535fd0286fc12ef05552d220993a529ebdb5373633c147993e4373" [label=""];
}

