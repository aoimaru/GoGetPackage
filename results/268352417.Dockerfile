[app/sources/268352417.Dockerfile]
digraph {
  "sha256:368e2cc4a8c4f71888588a817bcb79bca9afa88f28699ec5d8f82aacdbe61845" [label="docker-image://docker.io/library/node:10-jessie-slim" shape="ellipse"];
  "sha256:410c1e0ddff755a6afd4bf7b30f5764e3b91e2d7fcb00a5de640e24d4b4dd5c9" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:4089a2118e455534fe6404e71f74033c8b3a49a3a8511841151684420764b3c7" [label="/bin/sh -c apt-get install -y \t\tbuild-essential         python         postgresql-server-dev-all" shape="box"];
  "sha256:0c5ac593a3a4f2e9a40a02493a3c90ca344d6964039c75e676c7eccbbed75a73" [label="/bin/sh -c mkdir -p /home/rise" shape="box"];
  "sha256:9310f507ce2c167b83689de997566f5c8590399d0281ee2f46eec0657ecc26ce" [label="mkdir{path=/home/rise}" shape="note"];
  "sha256:d6d467704572f21ffefbcc36dc8cc310d6b77b77680707d0488d0112daf4e1f7" [label="local://context" shape="ellipse"];
  "sha256:0d21cf6629acdad5e6456e0f3c25e96850bb6b557af0a00479fb06eb5ef4586f" [label="copy{src=/config.json, dest=/home/rise/config.json}" shape="note"];
  "sha256:f8f4305d9bb7e543bee710fbcbcbdb842481ede997bf439aaddc3de585a71307" [label="copy{src=/rise-node.tar.gz, dest=/home/rise/}" shape="note"];
  "sha256:297c23b0dceeac87130577ae346cd922e135c3f45b437c960126c254821da356" [label="/bin/sh -c tar -zxf rise-node.tar.gz" shape="box"];
  "sha256:6eae6774cba50e46220ada449eb94daac05b50f6b62099b742649d46a7f0fbdc" [label="/bin/sh -c rm rise-node.tar.gz" shape="box"];
  "sha256:a1e297b72bfb571526c0c208a8390f6c0ea3504285205b524cc331e04af3fa5f" [label="/bin/sh -c mkdir -p /home/rise/rise-node/packages/rise/logs" shape="box"];
  "sha256:28952ffb76f751fab4719508765fc5dbd7c30847d3850967d9fb80ee189cff17" [label="/bin/sh -c cd rise-node && npm rebuild" shape="box"];
  "sha256:d42f1bb63220e5b5f79294de613c6b6138313345f4e03adcd82cd0fa1f896b95" [label="mkdir{path=/home/rise/rise-node}" shape="note"];
  "sha256:70b112ba6d3a205ce1235288400dc21e3e0468c915627a03c20fe45c0325352a" [label="sha256:70b112ba6d3a205ce1235288400dc21e3e0468c915627a03c20fe45c0325352a" shape="plaintext"];
  "sha256:368e2cc4a8c4f71888588a817bcb79bca9afa88f28699ec5d8f82aacdbe61845" -> "sha256:410c1e0ddff755a6afd4bf7b30f5764e3b91e2d7fcb00a5de640e24d4b4dd5c9" [label=""];
  "sha256:410c1e0ddff755a6afd4bf7b30f5764e3b91e2d7fcb00a5de640e24d4b4dd5c9" -> "sha256:4089a2118e455534fe6404e71f74033c8b3a49a3a8511841151684420764b3c7" [label=""];
  "sha256:4089a2118e455534fe6404e71f74033c8b3a49a3a8511841151684420764b3c7" -> "sha256:0c5ac593a3a4f2e9a40a02493a3c90ca344d6964039c75e676c7eccbbed75a73" [label=""];
  "sha256:0c5ac593a3a4f2e9a40a02493a3c90ca344d6964039c75e676c7eccbbed75a73" -> "sha256:9310f507ce2c167b83689de997566f5c8590399d0281ee2f46eec0657ecc26ce" [label=""];
  "sha256:9310f507ce2c167b83689de997566f5c8590399d0281ee2f46eec0657ecc26ce" -> "sha256:0d21cf6629acdad5e6456e0f3c25e96850bb6b557af0a00479fb06eb5ef4586f" [label=""];
  "sha256:d6d467704572f21ffefbcc36dc8cc310d6b77b77680707d0488d0112daf4e1f7" -> "sha256:0d21cf6629acdad5e6456e0f3c25e96850bb6b557af0a00479fb06eb5ef4586f" [label=""];
  "sha256:0d21cf6629acdad5e6456e0f3c25e96850bb6b557af0a00479fb06eb5ef4586f" -> "sha256:f8f4305d9bb7e543bee710fbcbcbdb842481ede997bf439aaddc3de585a71307" [label=""];
  "sha256:d6d467704572f21ffefbcc36dc8cc310d6b77b77680707d0488d0112daf4e1f7" -> "sha256:f8f4305d9bb7e543bee710fbcbcbdb842481ede997bf439aaddc3de585a71307" [label=""];
  "sha256:f8f4305d9bb7e543bee710fbcbcbdb842481ede997bf439aaddc3de585a71307" -> "sha256:297c23b0dceeac87130577ae346cd922e135c3f45b437c960126c254821da356" [label=""];
  "sha256:297c23b0dceeac87130577ae346cd922e135c3f45b437c960126c254821da356" -> "sha256:6eae6774cba50e46220ada449eb94daac05b50f6b62099b742649d46a7f0fbdc" [label=""];
  "sha256:6eae6774cba50e46220ada449eb94daac05b50f6b62099b742649d46a7f0fbdc" -> "sha256:a1e297b72bfb571526c0c208a8390f6c0ea3504285205b524cc331e04af3fa5f" [label=""];
  "sha256:a1e297b72bfb571526c0c208a8390f6c0ea3504285205b524cc331e04af3fa5f" -> "sha256:28952ffb76f751fab4719508765fc5dbd7c30847d3850967d9fb80ee189cff17" [label=""];
  "sha256:28952ffb76f751fab4719508765fc5dbd7c30847d3850967d9fb80ee189cff17" -> "sha256:d42f1bb63220e5b5f79294de613c6b6138313345f4e03adcd82cd0fa1f896b95" [label=""];
  "sha256:d42f1bb63220e5b5f79294de613c6b6138313345f4e03adcd82cd0fa1f896b95" -> "sha256:70b112ba6d3a205ce1235288400dc21e3e0468c915627a03c20fe45c0325352a" [label=""];
}

