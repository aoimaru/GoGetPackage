[app/sources/254019467.Dockerfile]
digraph {
  "sha256:5995a39e68e9e61d3ffe79e05fb2178d63b03cf306a8a6d28dcc970298cd13d0" [label="docker-image://docker.io/library/node:6" shape="ellipse"];
  "sha256:45f2977c744c1b4dcefa821334f1d6517207bbf79464a6232ccf2a29d3ddf0ae" [label="/bin/sh -c mkdir -p /usr/src/app" shape="box"];
  "sha256:5012338d9b0dd022dd723b33ff7110310ecdd45881194902593c3dc67c272e76" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:7612ba7ea2fb2db5944d686498c626a1ee37b5cb7e3e9ba20a4e4e9025367ae9" [label="/bin/sh -c npm install -g angular-cli --loglevel error" shape="box"];
  "sha256:3281d6434d09e74e331301f84f487355392d1e1cb19d0bb550049dcd688020b3" [label="local://context" shape="ellipse"];
  "sha256:3360459960b0659bf9c48b929da85cf83f8bd4c15be88197508c938fef57a910" [label="copy{src=/package.json, dest=/tmp/package.json}" shape="note"];
  "sha256:67c14f623b3abc80c0a63a67ecd22b068db25df5abce18c1435e0661a0e3f2ce" [label="/bin/sh -c cd /tmp && npm install --loglevel error" shape="box"];
  "sha256:164f132bea426b3aad701767785400888980b4c4c964306771b9847fb6f242b8" [label="/bin/sh -c mv /tmp/node_modules /usr/src/app/node_modules" shape="box"];
  "sha256:02824c1fa2829b13fa2f29e2b2d910be8f7c96925a9a1acc513f5d9e10f9e677" [label="copy{src=/, dest=/usr/src/app}" shape="note"];
  "sha256:4cea072848c0e9111be12049a78bc96ee6a7eccd715502551b4d9babdda69d73" [label="sha256:4cea072848c0e9111be12049a78bc96ee6a7eccd715502551b4d9babdda69d73" shape="plaintext"];
  "sha256:5995a39e68e9e61d3ffe79e05fb2178d63b03cf306a8a6d28dcc970298cd13d0" -> "sha256:45f2977c744c1b4dcefa821334f1d6517207bbf79464a6232ccf2a29d3ddf0ae" [label=""];
  "sha256:45f2977c744c1b4dcefa821334f1d6517207bbf79464a6232ccf2a29d3ddf0ae" -> "sha256:5012338d9b0dd022dd723b33ff7110310ecdd45881194902593c3dc67c272e76" [label=""];
  "sha256:5012338d9b0dd022dd723b33ff7110310ecdd45881194902593c3dc67c272e76" -> "sha256:7612ba7ea2fb2db5944d686498c626a1ee37b5cb7e3e9ba20a4e4e9025367ae9" [label=""];
  "sha256:7612ba7ea2fb2db5944d686498c626a1ee37b5cb7e3e9ba20a4e4e9025367ae9" -> "sha256:3360459960b0659bf9c48b929da85cf83f8bd4c15be88197508c938fef57a910" [label=""];
  "sha256:3281d6434d09e74e331301f84f487355392d1e1cb19d0bb550049dcd688020b3" -> "sha256:3360459960b0659bf9c48b929da85cf83f8bd4c15be88197508c938fef57a910" [label=""];
  "sha256:3360459960b0659bf9c48b929da85cf83f8bd4c15be88197508c938fef57a910" -> "sha256:67c14f623b3abc80c0a63a67ecd22b068db25df5abce18c1435e0661a0e3f2ce" [label=""];
  "sha256:67c14f623b3abc80c0a63a67ecd22b068db25df5abce18c1435e0661a0e3f2ce" -> "sha256:164f132bea426b3aad701767785400888980b4c4c964306771b9847fb6f242b8" [label=""];
  "sha256:164f132bea426b3aad701767785400888980b4c4c964306771b9847fb6f242b8" -> "sha256:02824c1fa2829b13fa2f29e2b2d910be8f7c96925a9a1acc513f5d9e10f9e677" [label=""];
  "sha256:3281d6434d09e74e331301f84f487355392d1e1cb19d0bb550049dcd688020b3" -> "sha256:02824c1fa2829b13fa2f29e2b2d910be8f7c96925a9a1acc513f5d9e10f9e677" [label=""];
  "sha256:02824c1fa2829b13fa2f29e2b2d910be8f7c96925a9a1acc513f5d9e10f9e677" -> "sha256:4cea072848c0e9111be12049a78bc96ee6a7eccd715502551b4d9babdda69d73" [label=""];
}

