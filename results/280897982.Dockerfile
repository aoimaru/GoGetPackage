[app/sources/280897982.Dockerfile]
digraph {
  "sha256:efbccbe63bb58047443a0ad856eaf62525ac2b1faafb01cef77491556c0cebbb" [label="docker-image://docker.io/microsoft/dotnet:2.2-aspnetcore-runtime" shape="ellipse"];
  "sha256:c8906744f1a1a205eb232c9e896d9c8b6a8984f1aa9322b7da0c30adce735ef9" [label="mkdir{path=/app}" shape="note"];
  "sha256:835df078955a973614a57642c14ff7120ea057703ba75054433e063858168b4f" [label="mkdir{path=/app}" shape="note"];
  "sha256:217023eb1ec28f41f0367fa161c7ac7a57ba7e94bfc3be1724f6ae36af0e86c0" [label="docker-image://docker.io/microsoft/dotnet:2.2-sdk" shape="ellipse"];
  "sha256:7ca1a3c3d8a04cb964b2921644ff3dd028ed11e1079756eef968cf9e2631bccf" [label="mkdir{path=/src}" shape="note"];
  "sha256:e5202e10883d53c68d4f2130d9031e87629b58a5ed1e971eef62bdb42c52508e" [label="mkdir{path=/src/src/Web/WebSPA/wwwroot}" shape="note"];
  "sha256:7f833a15950762cf8915b568a50c3b5566a71de890ce618695781c72f3de7cc3" [label="docker-image://docker.io/library/node:8.11" shape="ellipse"];
  "sha256:35efa35e25d6c4269841768fd47c340ae78006645a8d571fe3c2a635552c71eb" [label="mkdir{path=/web}" shape="note"];
  "sha256:21507f869573fb14dbc000569b2b06f7722bec173d8cc0b4594562e74fdf7572" [label="local://context" shape="ellipse"];
  "sha256:fb6e0c97325d619aeb80c7262c28b5cedd8766c12fc3c370cd78bf3a122db49b" [label="copy{src=/src/Web/WebSPA, dest=/web/}" shape="note"];
  "sha256:76ffca48f31b69284dd64fe068c2c51e49bb331cf0991fd4c1b63a07a4078610" [label="/bin/sh -c npm install" shape="box"];
  "sha256:4c32c2ba8e66025f9b02ae95681175d2434f4b197adf59b514b86bc60b08a216" [label="/bin/sh -c npm run build:prod" shape="box"];
  "sha256:e3cec864dce3e53e2bec4d235540a1406f00b73d16b448b0fa291ae5e89ced3d" [label="copy{src=/web/wwwroot, dest=/src/src/Web/WebSPA/wwwroot/}" shape="note"];
  "sha256:a62a1ad07874362aa0f8f60ca66c5f8b1dfb60ca187f01f7ff678c18eddc5bef" [label="mkdir{path=/src}" shape="note"];
  "sha256:82cacb4c6f57876cb2ec4acfa775b81c3a2ebecfc152e40fafe57fa5ee4a4a7b" [label="copy{src=/, dest=/src/}" shape="note"];
  "sha256:d457bba8d6189cd3fd43ac909476539e24cbb7e15f56c1c10be3a9a6fd612a76" [label="mkdir{path=/src/src/Web/WebSPA}" shape="note"];
  "sha256:c523d90e4959d328d5b4b9bf3643af82dfba999af4f39c511be9f5fe339870ca" [label="/bin/sh -c dotnet publish -c Release -o /app" shape="box"];
  "sha256:6b426be1dc239e0542cd5aad56ccb3dd6e3cbbee83fabde8c132323ed18f18fd" [label="copy{src=/app, dest=/app/}" shape="note"];
  "sha256:33d61b44c1de35c3ec24e80c7bbbe9f5597f65734f36f57f8f9f3406841e7436" [label="sha256:33d61b44c1de35c3ec24e80c7bbbe9f5597f65734f36f57f8f9f3406841e7436" shape="plaintext"];
  "sha256:efbccbe63bb58047443a0ad856eaf62525ac2b1faafb01cef77491556c0cebbb" -> "sha256:c8906744f1a1a205eb232c9e896d9c8b6a8984f1aa9322b7da0c30adce735ef9" [label=""];
  "sha256:c8906744f1a1a205eb232c9e896d9c8b6a8984f1aa9322b7da0c30adce735ef9" -> "sha256:835df078955a973614a57642c14ff7120ea057703ba75054433e063858168b4f" [label=""];
  "sha256:217023eb1ec28f41f0367fa161c7ac7a57ba7e94bfc3be1724f6ae36af0e86c0" -> "sha256:7ca1a3c3d8a04cb964b2921644ff3dd028ed11e1079756eef968cf9e2631bccf" [label=""];
  "sha256:7ca1a3c3d8a04cb964b2921644ff3dd028ed11e1079756eef968cf9e2631bccf" -> "sha256:e5202e10883d53c68d4f2130d9031e87629b58a5ed1e971eef62bdb42c52508e" [label=""];
  "sha256:7f833a15950762cf8915b568a50c3b5566a71de890ce618695781c72f3de7cc3" -> "sha256:35efa35e25d6c4269841768fd47c340ae78006645a8d571fe3c2a635552c71eb" [label=""];
  "sha256:35efa35e25d6c4269841768fd47c340ae78006645a8d571fe3c2a635552c71eb" -> "sha256:fb6e0c97325d619aeb80c7262c28b5cedd8766c12fc3c370cd78bf3a122db49b" [label=""];
  "sha256:21507f869573fb14dbc000569b2b06f7722bec173d8cc0b4594562e74fdf7572" -> "sha256:fb6e0c97325d619aeb80c7262c28b5cedd8766c12fc3c370cd78bf3a122db49b" [label=""];
  "sha256:fb6e0c97325d619aeb80c7262c28b5cedd8766c12fc3c370cd78bf3a122db49b" -> "sha256:76ffca48f31b69284dd64fe068c2c51e49bb331cf0991fd4c1b63a07a4078610" [label=""];
  "sha256:76ffca48f31b69284dd64fe068c2c51e49bb331cf0991fd4c1b63a07a4078610" -> "sha256:4c32c2ba8e66025f9b02ae95681175d2434f4b197adf59b514b86bc60b08a216" [label=""];
  "sha256:e5202e10883d53c68d4f2130d9031e87629b58a5ed1e971eef62bdb42c52508e" -> "sha256:e3cec864dce3e53e2bec4d235540a1406f00b73d16b448b0fa291ae5e89ced3d" [label=""];
  "sha256:4c32c2ba8e66025f9b02ae95681175d2434f4b197adf59b514b86bc60b08a216" -> "sha256:e3cec864dce3e53e2bec4d235540a1406f00b73d16b448b0fa291ae5e89ced3d" [label=""];
  "sha256:e3cec864dce3e53e2bec4d235540a1406f00b73d16b448b0fa291ae5e89ced3d" -> "sha256:a62a1ad07874362aa0f8f60ca66c5f8b1dfb60ca187f01f7ff678c18eddc5bef" [label=""];
  "sha256:a62a1ad07874362aa0f8f60ca66c5f8b1dfb60ca187f01f7ff678c18eddc5bef" -> "sha256:82cacb4c6f57876cb2ec4acfa775b81c3a2ebecfc152e40fafe57fa5ee4a4a7b" [label=""];
  "sha256:21507f869573fb14dbc000569b2b06f7722bec173d8cc0b4594562e74fdf7572" -> "sha256:82cacb4c6f57876cb2ec4acfa775b81c3a2ebecfc152e40fafe57fa5ee4a4a7b" [label=""];
  "sha256:82cacb4c6f57876cb2ec4acfa775b81c3a2ebecfc152e40fafe57fa5ee4a4a7b" -> "sha256:d457bba8d6189cd3fd43ac909476539e24cbb7e15f56c1c10be3a9a6fd612a76" [label=""];
  "sha256:d457bba8d6189cd3fd43ac909476539e24cbb7e15f56c1c10be3a9a6fd612a76" -> "sha256:c523d90e4959d328d5b4b9bf3643af82dfba999af4f39c511be9f5fe339870ca" [label=""];
  "sha256:835df078955a973614a57642c14ff7120ea057703ba75054433e063858168b4f" -> "sha256:6b426be1dc239e0542cd5aad56ccb3dd6e3cbbee83fabde8c132323ed18f18fd" [label=""];
  "sha256:c523d90e4959d328d5b4b9bf3643af82dfba999af4f39c511be9f5fe339870ca" -> "sha256:6b426be1dc239e0542cd5aad56ccb3dd6e3cbbee83fabde8c132323ed18f18fd" [label=""];
  "sha256:6b426be1dc239e0542cd5aad56ccb3dd6e3cbbee83fabde8c132323ed18f18fd" -> "sha256:33d61b44c1de35c3ec24e80c7bbbe9f5597f65734f36f57f8f9f3406841e7436" [label=""];
}

