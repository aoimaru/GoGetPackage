[app/sources/242617399.Dockerfile]
digraph {
  "sha256:0d79e5adb6370e94151beac661b239864d61a8f52ee85e1823ca561149f5490d" [label="local://context" shape="ellipse"];
  "sha256:94c6836076408a998f1dccd07d87dfc27382dad3fe8fc41f97863f7798bcb0de" [label="copy{src=/liveness, dest=/server}" shape="note"];
  "sha256:b09521e74eb133737f4d089c0ea462558d038712a62542bc066489540310e210" [label="sha256:b09521e74eb133737f4d089c0ea462558d038712a62542bc066489540310e210" shape="plaintext"];
  "sha256:0d79e5adb6370e94151beac661b239864d61a8f52ee85e1823ca561149f5490d" -> "sha256:94c6836076408a998f1dccd07d87dfc27382dad3fe8fc41f97863f7798bcb0de" [label=""];
  "sha256:94c6836076408a998f1dccd07d87dfc27382dad3fe8fc41f97863f7798bcb0de" -> "sha256:b09521e74eb133737f4d089c0ea462558d038712a62542bc066489540310e210" [label=""];
}
